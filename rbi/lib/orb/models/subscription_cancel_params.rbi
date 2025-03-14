# typed: strong

module Orb
  module Models
    class SubscriptionCancelParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # Determines the timing of subscription cancellation
      sig { returns(Symbol) }
      def cancel_option
      end

      sig { params(_: Symbol).returns(Symbol) }
      def cancel_option=(_)
      end

      # If false, this request will fail if it would void an issued invoice or create a
      #   credit note. Consider using this as a safety mechanism if you do not expect
      #   existing invoices to be changed.
      sig { returns(T.nilable(T::Boolean)) }
      def allow_invoice_credit_or_void
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def allow_invoice_credit_or_void=(_)
      end

      # The date that the cancellation should take effect. This parameter can only be
      #   passed if the `cancel_option` is `requested_date`.
      sig { returns(T.nilable(Time)) }
      def cancellation_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def cancellation_date=(_)
      end

      sig do
        params(
          cancel_option: Symbol,
          allow_invoice_credit_or_void: T.nilable(T::Boolean),
          cancellation_date: T.nilable(Time),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(cancel_option:, allow_invoice_credit_or_void: nil, cancellation_date: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              cancel_option: Symbol,
              allow_invoice_credit_or_void: T.nilable(T::Boolean),
              cancellation_date: T.nilable(Time),
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Determines the timing of subscription cancellation
      class CancelOption < Orb::Enum
        abstract!

        END_OF_SUBSCRIPTION_TERM = :end_of_subscription_term
        IMMEDIATE = :immediate
        REQUESTED_DATE = :requested_date

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
