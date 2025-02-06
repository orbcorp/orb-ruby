# typed: strong

module Orb
  module Models
    class InvoiceFetchUpcomingParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(String) }
      attr_accessor :subscription_id

      sig do
        params(
          subscription_id: String,
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(subscription_id:, request_options: {}); end

      sig { override.returns({subscription_id: String, request_options: Orb::RequestOptions}) }
      def to_hash; end
    end
  end
end
