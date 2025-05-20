# frozen_string_literal: true

module Orb
  module Internal
    module Type
      # @api private
      #
      # @abstract
      #
      # When we don't know what to expect for the value.
      class Unknown
        extend Orb::Internal::Type::Converter
        extend Orb::Internal::Util::SorbetRuntimeSupport

        # rubocop:disable Lint/UnusedMethodArgument

        private_class_method :new

        # @api public
        #
        # @param other [Object]
        #
        # @return [Boolean]
        def self.===(other) = true

        # @api public
        #
        # @param other [Object]
        #
        # @return [Boolean]
        def self.==(other) = other.is_a?(Class) && other <= Orb::Internal::Type::Unknown

        class << self
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
            state.fetch(:exactness)[:yes] += 1
            value
          end

          # @!method dump(value, state:)
          #   @api private
          #
          #   @param value [Object]
          #
          #   @param state [Hash{Symbol=>Object}] .
          #
          #     @option state [Boolean] :can_retry
          #
          #   @return [Object]

          # @api private
          #
          # @return [Object]
          def to_sorbet_type
            T.anything
          end
        end

        # rubocop:enable Lint/UnusedMethodArgument
      end
    end
  end
end
