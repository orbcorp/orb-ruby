# typed: strong

module Orb
  module Models
    class SubscriptionUnscheduleFixedFeeQuantityUpdatesParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(String) }
      def price_id
      end

      sig { params(_: String).returns(String) }
      def price_id=(_)
      end

      sig do
        params(price_id: String, request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
          .returns(T.attached_class)
      end
      def self.new(price_id:, request_options: {})
      end

      sig { override.returns({price_id: String, request_options: Orb::RequestOptions}) }
      def to_hash
      end
    end
  end
end
