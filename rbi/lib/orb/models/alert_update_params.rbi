# typed: strong

module Orb
  module Models
    class AlertUpdateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T::Array[Orb::Models::AlertUpdateParams::Threshold]) }
      def thresholds
      end

      sig do
        params(_: T::Array[Orb::Models::AlertUpdateParams::Threshold])
          .returns(T::Array[Orb::Models::AlertUpdateParams::Threshold])
      end
      def thresholds=(_)
      end

      sig do
        params(
          thresholds: T::Array[Orb::Models::AlertUpdateParams::Threshold],
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(thresholds:, request_options: {})
      end

      sig do
        override
          .returns(
            {thresholds: T::Array[Orb::Models::AlertUpdateParams::Threshold], request_options: Orb::RequestOptions}
          )
      end
      def to_hash
      end

      class Threshold < Orb::BaseModel
        sig { returns(Float) }
        def value
        end

        sig { params(_: Float).returns(Float) }
        def value=(_)
        end

        sig { params(value: Float).returns(T.attached_class) }
        def self.new(value:)
        end

        sig { override.returns({value: Float}) }
        def to_hash
        end
      end
    end
  end
end
