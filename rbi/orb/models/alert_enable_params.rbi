# typed: strong

module Orb
  module Models
    class AlertEnableParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # Used to update the status of a plan alert scoped to this subscription_id
      sig { returns(T.nilable(String)) }
      attr_accessor :subscription_id

      sig do
        params(
          subscription_id: T.nilable(String),
          request_options: T.any(Orb::RequestOptions, Orb::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        # Used to update the status of a plan alert scoped to this subscription_id
        subscription_id: nil,
        request_options: {}
      ); end
      sig { override.returns({subscription_id: T.nilable(String), request_options: Orb::RequestOptions}) }
      def to_hash; end
    end
  end
end
