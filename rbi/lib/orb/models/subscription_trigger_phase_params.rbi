# typed: strong

module Orb
  module Models
    class SubscriptionTriggerPhaseParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T.nilable(T::Boolean)) }
      def allow_invoice_credit_or_void
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def allow_invoice_credit_or_void=(_)
      end

      sig { returns(T.nilable(Date)) }
      def effective_date
      end

      sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
      def effective_date=(_)
      end

      sig do
        params(
          allow_invoice_credit_or_void: T.nilable(T::Boolean),
          effective_date: T.nilable(Date),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(allow_invoice_credit_or_void: nil, effective_date: nil, request_options: {})
      end

      sig do
        override
          .returns(
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
