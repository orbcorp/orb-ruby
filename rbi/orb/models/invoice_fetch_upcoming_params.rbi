# typed: strong

module Orb
  module Models
    class InvoiceFetchUpcomingParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::InvoiceFetchUpcomingParams, Orb::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :subscription_id

      sig do
        params(
          subscription_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(subscription_id:, request_options: {})
      end

      sig do
        override.returns(
          { subscription_id: String, request_options: Orb::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
