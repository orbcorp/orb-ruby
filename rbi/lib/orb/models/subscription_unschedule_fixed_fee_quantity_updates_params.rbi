# typed: strong

module Orb
  module Models
    class SubscriptionUnscheduleFixedFeeQuantityUpdatesParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(String) }
      attr_accessor :price_id

      sig do
        params(
          price_id: String,
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(price_id:, request_options: {})
      end

      sig { override.returns({price_id: String, request_options: Orb::RequestOptions}) }
      def to_hash
      end
    end
  end
end
