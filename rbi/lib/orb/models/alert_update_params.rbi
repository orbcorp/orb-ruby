# typed: strong

module Orb
  module Models
    class AlertUpdateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T::Array[Orb::Models::AlertUpdateParams::Threshold]) }
      attr_accessor :thresholds

      sig do
        params(
          thresholds: T::Array[Orb::Models::AlertUpdateParams::Threshold],
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(thresholds:, request_options: {}); end

      sig do
        override.returns(
          {
            thresholds: T::Array[Orb::Models::AlertUpdateParams::Threshold],
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash; end

      class Threshold < Orb::BaseModel
        sig { returns(Float) }
        attr_accessor :value

        sig { params(value: Float).void }
        def initialize(value:); end

        sig { override.returns({value: Float}) }
        def to_hash; end
      end
    end
  end
end
