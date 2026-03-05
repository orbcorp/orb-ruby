# typed: strong

module Orb
  module Models
    class SubscriptionUnscheduleFixedFeeQuantityUpdatesParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Orb::SubscriptionUnscheduleFixedFeeQuantityUpdatesParams,
            Orb::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :subscription_id

      # Price for which the updates should be cleared. Must be a fixed fee.
      sig { returns(String) }
      attr_accessor :price_id

      sig do
        params(
          subscription_id: String,
          price_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        subscription_id:,
        # Price for which the updates should be cleared. Must be a fixed fee.
        price_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            subscription_id: String,
            price_id: String,
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
