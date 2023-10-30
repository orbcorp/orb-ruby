# typed: true
# frozen_string_literal: true

# TODO: OpenAPI supports reference cycles,
# so these classes need some way to resolve them,
# perhaps `Object.const_get`

# TODO: type-guided serialization

require 'singleton'

module Orb
  class NotGiven
  include Singleton
  end
  # TODO: move model types into a module
  module Converter
    def convert(convert)
      raise NotImplementedError
    end

    def self.convert(type, value)
      if type.is_a?(Class) && type.superclass == Model
        type.convert(**(value || {}))
      elsif type.is_a?(Converter) || type.include?(Converter)
        type.convert(value)
      elsif type.is_a?(Class)
        # TODO: selective hardcoded coercion here,
        # eg int->float
        if type == NilClass
          nil
        elsif type == Float && value.is_a?(Numeric)
          value.to_f
        elsif [Integer, String].include? type
          value
        end
      else
        raise StandardError.new("can't coerce #{value.class} to #{type}")
      end
    end

    # Is `value` a member of the type of this converter's output?
    # XXX this isn't coercion. The value must already be exactly correct.
    # It uses JSON schema's notion of type.
    # So, eg, Ruby doesn't have booleans, but this function's domain does.
    def same_type?(value)
      raise NotImplementedError
    end

    # dispatch function for `same_type`, to include `String` and other
    # base classes
    def self.same_type?(type, value)
      if type.is_a?(Converter) || type.include?(Converter)
        type.same_type? value
      else
        value.is_a? type
      end
    end
  end

  class Unknown
    include Converter
    def self.convert(value)
      value
    end
    def self.same_type?(value)
      true
    end
  end

  # Ruby has no boolean class; this is just something for models to refer to.
  # may not even be needed.
  class BooleanModel
    include Converter
    def self.convert(value)
      value
    end
    def self.same_type?(value)
      [true, false].include? value
    end
  end

  class Enum
    include Converter

    # NB we don't do runtime validation, so `options` is just an FYI
    # for the reader.
    def initialize(options)
      @options = options
    end

    def convert(value)
      if value.is_a? String
        value.to_sym
      else
        value
      end
    end

    def same_type?(value)
      options.include? value
    end
  end

  class ArrayOf
    include Converter
    def initialize(items)
      @items = items
    end

    def convert(value)
      # TODO: responding to 'not an enumerable' by just bailing out with nil?
      value.map { |item|
        Converter.convert(@items, item)
      }
    end

    def same_type?(value)
      value.is_a?(Array) && value.all? {|item|
      Converter.same_type?(@items, item)}
    end
  end

  class Model
    include Converter

    def self.same_type?(value)
      value.is_a? self
    end

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

          result = Converter.convert(field[:type], value)
          # TODO: error handling: if conversion throws, just put back whatever we got from the raw json?
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
