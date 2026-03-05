# typed: strong

module Orb
  module Models
    class SubscriptionChangeRetrieveParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::SubscriptionChangeRetrieveParams, Orb::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :subscription_change_id

      sig do
        params(
          subscription_change_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(subscription_change_id:, request_options: {})
      end

      sig do
        override.returns(
          {
            subscription_change_id: String,
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
