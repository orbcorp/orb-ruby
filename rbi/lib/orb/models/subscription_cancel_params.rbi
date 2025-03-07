# typed: strong

module Orb
  module Models
    class SubscriptionCancelParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(Symbol) }
      def cancel_option
      end

      sig { params(_: Symbol).returns(Symbol) }
      def cancel_option=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def allow_invoice_credit_or_void
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def allow_invoice_credit_or_void=(_)
      end

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
          .void
      end
      def initialize(
        cancel_option:,
        allow_invoice_credit_or_void: nil,
        cancellation_date: nil,
        request_options: {}
      )
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
