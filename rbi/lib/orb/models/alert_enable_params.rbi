# typed: strong

module Orb
  module Models
    class AlertEnableParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :subscription_id

      sig do
        params(
          subscription_id: T.nilable(String),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(subscription_id: nil, request_options: {}); end

      sig { override.returns({subscription_id: T.nilable(String), request_options: Orb::RequestOptions}) }
      def to_hash; end
    end
  end
end
