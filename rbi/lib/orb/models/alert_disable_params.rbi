# typed: strong

module Orb
  module Models
    class AlertDisableParams < Orb::BaseModel
      extend Orb::Type::RequestParameters::Converter
      include Orb::RequestParameters

      # Used to update the status of a plan alert scoped to this subscription_id
      sig { returns(T.nilable(String)) }
      attr_accessor :subscription_id

      sig do
        params(
          subscription_id: T.nilable(String),
          request_options: T.any(Orb::RequestOptions, Orb::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(subscription_id: nil, request_options: {})
      end

      sig { override.returns({subscription_id: T.nilable(String), request_options: Orb::RequestOptions}) }
      def to_hash
      end
    end
  end
end
