# typed: false
# frozen_string_literal: true

# TODO: OpenAPI supports reference cycles,
# so these classes need some way to resolve them,
# perhaps `Object.const_get`

# TODO: type-guided serialization

module Orb
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
    def initialize(_options)
    end

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
      value.map { |item| @items.convert(**item) }
    end
  end

  class Model
    include Converter

    def self.add_field(fn, t, mode)
      @fields ||= {}
      @fields[fn.to_sym] = { type: t, mode: mode }

      define_method(fn) { @data[fn.to_sym] }

      case mode
      when :rw, :w
        define_method("#{fn}=") { |val| @data[fn.to_sym] = val }
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
      attr_accessor :fields
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
      model.convert(**data)
      model
    end

    def convert(**data)
      # TODO: what if data isn't a hash?
      data.each do |field_name, value|
        next if value.nil?

        # TODO: decide whether raw data should have only symbols, only string keys, or both
        field =
          self.class.fields[field_name.to_sym] ||
            self.class.fields[field_name.to_s]
        if field
          next if field[:mode] == :w

          result = self.class.convert_field(value, field[:type])
          # TODO: error handling: if `convert_field` throws, just put back whatever we got from the raw json?
          @data[field_name.to_sym] = result
        else
          @data[field_name.to_sym] = value
        end
      end
    end

    # TODO(Ruby) recursive to_h
    def to_h
      out = @data
      self.class.fields.each do |field_name, _|
        out[field_name] = instance_variable_get("@#{field_name.to_sym}")
      end
      out
    end

    def initialize(**_data)
      @data = {}
    end
  end
end
