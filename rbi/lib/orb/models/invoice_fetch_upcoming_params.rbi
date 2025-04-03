# typed: strong

module Orb
  module Models
    class InvoiceFetchUpcomingParams < Orb::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      sig { returns(String) }
      attr_accessor :subscription_id

      sig do
        params(
          subscription_id: String,
          request_options: T.any(Orb::RequestOptions, Orb::Internal::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(subscription_id:, request_options: {})
      end

      sig { override.returns({subscription_id: String, request_options: Orb::RequestOptions}) }
      def to_hash
      end
    end
  end
end
