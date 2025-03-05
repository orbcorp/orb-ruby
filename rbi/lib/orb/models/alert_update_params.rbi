# typed: strong

module Orb
  module Models
    class AlertUpdateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T::Array[Orb::Models::ThresholdModel]) }
      def thresholds
      end

      sig { params(_: T::Array[Orb::Models::ThresholdModel]).returns(T::Array[Orb::Models::ThresholdModel]) }
      def thresholds=(_)
      end

      sig do
        params(
          thresholds: T::Array[Orb::Models::ThresholdModel],
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(thresholds:, request_options: {})
      end

      sig do
        override.returns({thresholds: T::Array[Orb::Models::ThresholdModel], request_options: Orb::RequestOptions})
      end
      def to_hash
      end
    end
  end
end
