# typed: strong

module Orb
  module Models
    class SubscriptionTriggerPhaseParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :allow_invoice_credit_or_void

      sig { returns(T.nilable(Date)) }
      attr_accessor :effective_date

      sig do
        params(
          allow_invoice_credit_or_void: T.nilable(T::Boolean),
          effective_date: T.nilable(Date),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(allow_invoice_credit_or_void: nil, effective_date: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            allow_invoice_credit_or_void: T.nilable(T::Boolean),
            effective_date: T.nilable(Date),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
