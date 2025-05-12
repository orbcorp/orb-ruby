# typed: strong

module Orb
  module Models
    class SubscriptionChangeApplyParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::SubscriptionChangeApplyParams, Orb::Internal::AnyHash)
        end

      # Description to apply to the balance transaction representing this credit.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Amount already collected to apply to the customer's balance.
      sig { returns(T.nilable(String)) }
      attr_accessor :previously_collected_amount

      sig do
        params(
          description: T.nilable(String),
          previously_collected_amount: T.nilable(String),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Description to apply to the balance transaction representing this credit.
        description: nil,
        # Amount already collected to apply to the customer's balance.
        previously_collected_amount: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            description: T.nilable(String),
            previously_collected_amount: T.nilable(String),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
