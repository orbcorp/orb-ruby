# typed: strong

module Orb
  module Models
    class SubscriptionCancelParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(Symbol) }
      attr_accessor :cancel_option

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :allow_invoice_credit_or_void

      sig { returns(T.nilable(Time)) }
      attr_accessor :cancellation_date

      sig do
        params(
          cancel_option: Symbol,
          allow_invoice_credit_or_void: T.nilable(T::Boolean),
          cancellation_date: T.nilable(Time),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        cancel_option:,
        allow_invoice_credit_or_void: nil,
        cancellation_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
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

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
