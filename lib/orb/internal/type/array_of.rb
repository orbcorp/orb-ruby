# frozen_string_literal: true

module Orb
  module Internal
    module Type
      # @api private
      #
      # @abstract
      #
      # @generic Elem
      #
      # Array of items of a given type.
      class ArrayOf
        include Orb::Internal::Type::Converter

        # @param type_info [Hash{Symbol=>Object}, Proc, Orb::Internal::Type::Converter, Class]
        #
        # @param spec [Hash{Symbol=>Object}] .
        #
        #   @option spec [NilClass, TrueClass, FalseClass, Integer, Float, Symbol] :const
        #
        #   @option spec [Proc] :enum
        #
        #   @option spec [Proc] :union
        #
        #   @option spec [Boolean] :"nil?"
        def self.[](type_info, spec = {}) = new(type_info, spec)

        # @param other [Object]
        #
        # @return [Boolean]
        def ===(other) = other.is_a?(Array) && other.all?(item_type)

        # @param other [Object]
        #
        # @return [Boolean]
        def ==(other)
          # rubocop:disable Layout/LineLength
          other.is_a?(Orb::Internal::Type::ArrayOf) && other.nilable? == nilable? && other.item_type == item_type
          # rubocop:enable Layout/LineLength
        end

        # @api private
        #
        # @param value [Array<Object>, Object]
        #
        # @param state [Hash{Symbol=>Object}] .
        #
        #   @option state [Boolean, :strong] :strictness
        #
        #   @option state [Hash{Symbol=>Object}] :exactness
        #
        #   @option state [Integer] :branched
        #
        # @return [Array<Object>, Object]
        def coerce(value, state:)
          exactness = state.fetch(:exactness)

          unless value.is_a?(Array)
            exactness[:no] += 1
            return value
          end

          target = item_type
          exactness[:yes] += 1
          value
            .map do |item|
              case [nilable?, item]
              in [true, nil]
                exactness[:yes] += 1
                nil
              else
                Orb::Internal::Type::Converter.coerce(target, item, state: state)
              end
            end
        end

        # @api private
        #
        # @param value [Array<Object>, Object]
        #
        # @return [Array<Object>, Object]
        def dump(value)
          target = item_type
          value.is_a?(Array) ? value.map { Orb::Internal::Type::Converter.dump(target, _1) } : super
        end

        # @api private
        #
        # @return [generic<Elem>]
        protected def item_type = @item_type_fn.call

        # @api private
        #
        # @return [Boolean]
        protected def nilable? = @nilable

        # @api private
        #
        # @param type_info [Hash{Symbol=>Object}, Proc, Orb::Internal::Type::Converter, Class]
        #
        # @param spec [Hash{Symbol=>Object}] .
        #
        #   @option spec [NilClass, TrueClass, FalseClass, Integer, Float, Symbol] :const
        #
        #   @option spec [Proc] :enum
        #
        #   @option spec [Proc] :union
        #
        #   @option spec [Boolean] :"nil?"
        def initialize(type_info, spec = {})
          @item_type_fn = Orb::Internal::Type::Converter.type_info(type_info || spec)
          @nilable = spec[:nil?]
        end
      end
    end
  end
end
