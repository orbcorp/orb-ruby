# typed: strong

module Orb
  module Models
    class AlertEnableParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Orb::AlertEnableParams, Orb::Internal::AnyHash) }

      # Used to update the status of a plan alert scoped to this subscription_id
      sig { returns(T.nilable(String)) }
      attr_accessor :subscription_id

      sig do
        params(
          subscription_id: T.nilable(String),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Used to update the status of a plan alert scoped to this subscription_id
        subscription_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            subscription_id: T.nilable(String),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
