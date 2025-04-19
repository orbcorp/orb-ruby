# frozen_string_literal: true

module Orb
  module Internal
    module Type
      # @api private
      #
      # @example
      #   # `discount` is a `Orb::Models::Discount`
      #   case discount
      #   when Orb::Models::PercentageDiscount
      #     puts(discount.applies_to_price_ids)
      #   when Orb::Models::TrialDiscount
      #     puts(discount.discount_type)
      #   when Orb::Models::UsageDiscount
      #     puts(discount.usage_discount)
      #   else
      #     puts(discount)
      #   end
      #
      # @example
      #   case discount
      #   in {
      #     discount_type: :percentage,
      #     applies_to_price_ids: applies_to_price_ids,
      #     percentage_discount: percentage_discount,
      #     reason: reason
      #   }
      #     puts(applies_to_price_ids)
      #   in {
      #     discount_type: :trial,
      #     applies_to_price_ids: applies_to_price_ids,
      #     reason: reason,
      #     trial_amount_discount: trial_amount_discount
      #   }
      #     puts(reason)
      #   in {
      #     discount_type: :usage,
      #     applies_to_price_ids: applies_to_price_ids,
      #     usage_discount: usage_discount,
      #     reason: reason
      #   }
      #     puts(usage_discount)
      #   else
      #     puts(discount)
      #   end
      module Union
        include Orb::Internal::Type::Converter

        # @api private
        #
        # All of the specified variant info for this union.
        #
        # @return [Array<Array(Symbol, Proc)>]
        private def known_variants = (@known_variants ||= [])

        # @api private
        #
        # @return [Array<Array(Symbol, Object)>]
        protected def derefed_variants
          known_variants.map { |key, variant_fn| [key, variant_fn.call] }
        end

        # All of the specified variants for this union.
        #
        # @return [Array<Object>]
        def variants = derefed_variants.map(&:last)

        # @api private
        #
        # @param property [Symbol]
        private def discriminator(property)
          case property
          in Symbol
            @discriminator = property
          end
        end

        # @api private
        #
        # @param key [Symbol, Hash{Symbol=>Object}, Proc, Orb::Internal::Type::Converter, Class]
        #
        # @param spec [Hash{Symbol=>Object}, Proc, Orb::Internal::Type::Converter, Class] .
        #
        #   @option spec [NilClass, TrueClass, FalseClass, Integer, Float, Symbol] :const
        #
        #   @option spec [Proc] :enum
        #
        #   @option spec [Proc] :union
        #
        #   @option spec [Boolean] :"nil?"
        private def variant(key, spec = nil)
          variant_info =
            case key
            in Symbol
              [key, Orb::Internal::Type::Converter.type_info(spec)]
            in Proc | Orb::Internal::Type::Converter | Class | Hash
              [nil, Orb::Internal::Type::Converter.type_info(key)]
            end

          known_variants << variant_info
        end

        # @api private
        #
        # @param value [Object]
        #
        # @return [Orb::Internal::Type::Converter, Class, nil]
        private def resolve_variant(value)
          case [@discriminator, value]
          in [_, Orb::Internal::Type::BaseModel]
            value.class
          in [Symbol, Hash]
            key = value.fetch(@discriminator) do
              value.fetch(@discriminator.to_s, Orb::Internal::OMIT)
            end

            return nil if key == Orb::Internal::OMIT

            key = key.to_sym if key.is_a?(String)
            known_variants.find { |k,| k == key }&.last&.call
          else
            nil
          end
        end

        # rubocop:disable Style/HashEachMethods
        # rubocop:disable Style/CaseEquality

        # @api public
        #
        # @param other [Object]
        #
        # @return [Boolean]
        def ===(other)
          known_variants.any? do |_, variant_fn|
            variant_fn.call === other
          end
        end

        # @api public
        #
        # @param other [Object]
        #
        # @return [Boolean]
        def ==(other)
          Orb::Internal::Type::Union === other && other.derefed_variants == derefed_variants
        end

        # @api public
        #
        # @return [Integer]
        def hash = variants.hash

        # @api private
        #
        # @param value [Object]
        #
        # @param state [Hash{Symbol=>Object}] .
        #
        #   @option state [Boolean, :strong] :strictness
        #
        #   @option state [Hash{Symbol=>Object}] :exactness
        #
        #   @option state [Integer] :branched
        #
        # @return [Object]
        def coerce(value, state:)
          if (target = resolve_variant(value))
            return Orb::Internal::Type::Converter.coerce(target, value, state: state)
          end

          strictness = state.fetch(:strictness)
          exactness = state.fetch(:exactness)
          state[:strictness] = strictness == :strong ? true : strictness

          alternatives = []
          known_variants.each do |_, variant_fn|
            target = variant_fn.call
            exact = state[:exactness] = {yes: 0, no: 0, maybe: 0}
            state[:branched] += 1

            coerced = Orb::Internal::Type::Converter.coerce(target, value, state: state)
            yes, no, maybe = exact.values
            if (no + maybe).zero? || (!strictness && yes.positive?)
              exact.each { exactness[_1] += _2 }
              state[:exactness] = exactness
              return coerced
            elsif maybe.positive?
              alternatives << [[-yes, -maybe, no], exact, coerced]
            end
          end

          case alternatives.sort_by(&:first)
          in []
            exactness[:no] += 1
            if strictness == :strong
              message = "no possible conversion of #{value.class} into a variant of #{target.inspect}"
              raise ArgumentError.new(message)
            end
            value
          in [[_, exact, coerced], *]
            exact.each { exactness[_1] += _2 }
            coerced
          end
            .tap { state[:exactness] = exactness }
        ensure
          state[:strictness] = strictness
        end

        # @api private
        #
        # @param value [Object]
        #
        # @param state [Hash{Symbol=>Object}] .
        #
        #   @option state [Boolean] :can_retry
        #
        # @return [Object]
        def dump(value, state:)
          if (target = resolve_variant(value))
            return Orb::Internal::Type::Converter.dump(target, value, state: state)
          end

          known_variants.each do
            target = _2.call
            return Orb::Internal::Type::Converter.dump(target, value, state: state) if target === value
          end

          super
        end

        # rubocop:enable Style/CaseEquality
        # rubocop:enable Style/HashEachMethods

        # @api private
        #
        # @param depth [Integer]
        #
        # @return [String]
        def inspect(depth: 0)
          if depth.positive?
            return is_a?(Module) ? super() : self.class.name
          end

          members = variants.map { Orb::Internal::Type::Converter.inspect(_1, depth: depth.succ) }
          prefix = is_a?(Module) ? name : self.class.name

          "#{prefix}[#{members.join(' | ')}]"
        end
      end
    end
  end
end
