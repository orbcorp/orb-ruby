# typed: strong

module Orb
  module Models
    class SubscriptionCancelParams < Orb::BaseModel
      extend Orb::Type::RequestParameters::Converter
      include Orb::RequestParameters

      # Determines the timing of subscription cancellation
      sig { returns(Orb::Models::SubscriptionCancelParams::CancelOption::OrSymbol) }
      attr_accessor :cancel_option

      # If false, this request will fail if it would void an issued invoice or create a
      #   credit note. Consider using this as a safety mechanism if you do not expect
      #   existing invoices to be changed.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :allow_invoice_credit_or_void

      # The date that the cancellation should take effect. This parameter can only be
      #   passed if the `cancel_option` is `requested_date`.
      sig { returns(T.nilable(Time)) }
      attr_accessor :cancellation_date

      sig do
        params(
          cancel_option: Orb::Models::SubscriptionCancelParams::CancelOption::OrSymbol,
          allow_invoice_credit_or_void: T.nilable(T::Boolean),
          cancellation_date: T.nilable(Time),
          request_options: T.any(Orb::RequestOptions, Orb::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
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
              cancel_option: Orb::Models::SubscriptionCancelParams::CancelOption::OrSymbol,
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
        extend Orb::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCancelParams::CancelOption) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Orb::Models::SubscriptionCancelParams::CancelOption::TaggedSymbol) }

        END_OF_SUBSCRIPTION_TERM =
          T.let(:end_of_subscription_term, Orb::Models::SubscriptionCancelParams::CancelOption::TaggedSymbol)
        IMMEDIATE = T.let(:immediate, Orb::Models::SubscriptionCancelParams::CancelOption::TaggedSymbol)
        REQUESTED_DATE =
          T.let(:requested_date, Orb::Models::SubscriptionCancelParams::CancelOption::TaggedSymbol)

        sig { override.returns(T::Array[Orb::Models::SubscriptionCancelParams::CancelOption::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
