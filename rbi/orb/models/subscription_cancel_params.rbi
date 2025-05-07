# typed: strong

module Orb
  module Models
    class SubscriptionCancelParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(T.self_type, Orb::Internal::AnyHash) }

      # Determines the timing of subscription cancellation
      sig { returns(Orb::SubscriptionCancelParams::CancelOption::OrSymbol) }
      attr_accessor :cancel_option

      # If false, this request will fail if it would void an issued invoice or create a
      # credit note. Consider using this as a safety mechanism if you do not expect
      # existing invoices to be changed.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :allow_invoice_credit_or_void

      # The date that the cancellation should take effect. This parameter can only be
      # passed if the `cancel_option` is `requested_date`.
      sig { returns(T.nilable(Time)) }
      attr_accessor :cancellation_date

      sig do
        params(
          cancel_option: Orb::SubscriptionCancelParams::CancelOption::OrSymbol,
          allow_invoice_credit_or_void: T.nilable(T::Boolean),
          cancellation_date: T.nilable(Time),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Determines the timing of subscription cancellation
        cancel_option:,
        # If false, this request will fail if it would void an issued invoice or create a
        # credit note. Consider using this as a safety mechanism if you do not expect
        # existing invoices to be changed.
        allow_invoice_credit_or_void: nil,
        # The date that the cancellation should take effect. This parameter can only be
        # passed if the `cancel_option` is `requested_date`.
        cancellation_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            cancel_option:
              Orb::SubscriptionCancelParams::CancelOption::OrSymbol,
            allow_invoice_credit_or_void: T.nilable(T::Boolean),
            cancellation_date: T.nilable(Time),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Determines the timing of subscription cancellation
      module CancelOption
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::SubscriptionCancelParams::CancelOption)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        END_OF_SUBSCRIPTION_TERM =
          T.let(
            :end_of_subscription_term,
            Orb::SubscriptionCancelParams::CancelOption::TaggedSymbol
          )
        IMMEDIATE =
          T.let(
            :immediate,
            Orb::SubscriptionCancelParams::CancelOption::TaggedSymbol
          )
        REQUESTED_DATE =
          T.let(
            :requested_date,
            Orb::SubscriptionCancelParams::CancelOption::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::SubscriptionCancelParams::CancelOption::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
