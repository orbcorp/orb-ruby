# typed: false
# frozen_string_literal: true

# TODO: OpenAPI supports reference cycles,
# so these classes need some way to resolve them,
# perhaps `Object.const_get`

# TODO: type-guided serialization

# TODO: move model types into a module
module Converter
  def convert(convert)
    raise NotImplementedError
  end
end

class Unknown
  include Converter
  def convert(value)
    value
  end
end

# Ruby has no boolean class; this is just something for models to refer to.
# may not even be needed.
class BooleanModel
  include Converter
  def convert(value)
    value
  end
end

class Enum
  include Converter

  # NB we don't do runtime validation, so `options` is just an FYI
  # for the reader.
  def initialize(_options); end

  def convert(value)
    if value.is_a? String
      value.to_sym
    else
      value
    end
  end
end

class ArrayOf
  include Converter
  def initialize(items)
    @items = items
  end

  def convert(value)
    # TODO: responding to 'not an enumerable' by just bailing out with nil?
    value.map.with_index do |item, index|
      @items.convert(item).nest [index]
    end
  end
end

class Model
  include Converter
  def self.add_field(fn, t, mode)
    @fields ||= {}
    @fields[fn] = { type: t, mode: mode }
    attr_reader fn

    case mode
    when :rw, :w
      attr_writer fn
    end
  end

  # NB `required` is basically just a signal to the reader. We don't do runtime validation anyway.
  def self.required(fn, t, mode = :rw)
    add_field(fn, t, mode)
  end

  # NB `optional` is basically just a signal to the reader. We don't do runtime validation anyway.
  def self.optional(fn, t, mode = :rw)
    add_field(fn, t, mode)
  end

  class << self
    attr_reader :fields
  end

  def self.convert_field(data, model)
    if model.is_a? Converter
      model.convert data
    elsif model.superclass == Model
      # TODO: what if the data aren't a hash at all?
      model.convert(**(data || {}))
    elsif model.instance_of?(Class)
      # TODO: selective hardcoded coercion here,
      # eg int->float

      data
    else
      raise NotImplementedError
    end
  end

  def self.convert(**data)
    model = new
    # TODO: what if data isn't a hash?
    data.each do |field_name, value|
      next if value.nil?

      # TODO: decide whether raw data should have only symbols, only string keys, or both
      field = @fields[field_name.to_sym] || fields[field_name.to_s]
      if field
        next if field[:mode] == :w

        result = convert_field(value, field[:type])
        # TODO: error handling: if `convert_field` throws, just put back whatever we got from the raw json?
        model.instance_variable_set "@#{field_name}", result
      else
        model.instance_variable_set "@#{field_name}", value
      end
    end
    model
  end

  def to_h
    out = {}
    self.class.fields.each do |field_name, _|
      out[field_name] = instance_variable_get("@#{field_name.to_sym}")
    end
    out
  end

  def initialize(**data)
    self.class.fields.each do |field_name, field_spec|
      value = data[field_name.to_sym]
      instance_variable_set "@#{field_name}", value unless field_spec == :r
    end
  end
end
