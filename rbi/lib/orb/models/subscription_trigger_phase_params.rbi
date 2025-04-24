# typed: strong

module Orb
  module Models
    class SubscriptionTriggerPhaseParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # If false, this request will fail if it would void an issued invoice or create a
      # credit note. Consider using this as a safety mechanism if you do not expect
      # existing invoices to be changed.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :allow_invoice_credit_or_void

      # The date on which the phase change should take effect. If not provided, defaults
      # to today in the customer's timezone.
      sig { returns(T.nilable(Date)) }
      attr_accessor :effective_date

      sig do
        params(
          allow_invoice_credit_or_void: T.nilable(T::Boolean),
          effective_date: T.nilable(Date),
          request_options: T.any(Orb::RequestOptions, Orb::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        # If false, this request will fail if it would void an issued invoice or create a
        # credit note. Consider using this as a safety mechanism if you do not expect
        # existing invoices to be changed.
        allow_invoice_credit_or_void: nil,
        # The date on which the phase change should take effect. If not provided, defaults
        # to today in the customer's timezone.
        effective_date: nil,
        request_options: {}
      ); end
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
      def to_hash; end
    end
  end
end
