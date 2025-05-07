# typed: strong

module Orb
  module Models
    class SubscriptionUpdateFixedFeeQuantityParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(T.self_type, Orb::Internal::AnyHash) }

      # Price for which the quantity should be updated. Must be a fixed fee.
      sig { returns(String) }
      attr_accessor :price_id

      sig { returns(Float) }
      attr_accessor :quantity

      # If false, this request will fail if it would void an issued invoice or create a
      # credit note. Consider using this as a safety mechanism if you do not expect
      # existing invoices to be changed.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :allow_invoice_credit_or_void

      # Determines when the change takes effect. Note that if `effective_date` is
      # specified, this defaults to `effective_date`. Otherwise, this defaults to
      # `immediate` unless it's explicitly set to `upcoming_invoice`.
      sig do
        returns(
          T.nilable(
            Orb::SubscriptionUpdateFixedFeeQuantityParams::ChangeOption::OrSymbol
          )
        )
      end
      attr_reader :change_option

      sig do
        params(
          change_option:
            Orb::SubscriptionUpdateFixedFeeQuantityParams::ChangeOption::OrSymbol
        ).void
      end
      attr_writer :change_option

      # The date that the quantity change should take effect, localized to the
      # customer's timezone. Ifthis parameter is not passed in, the quantity change is
      # effective according to `change_option`.
      sig { returns(T.nilable(Date)) }
      attr_accessor :effective_date

      sig do
        params(
          price_id: String,
          quantity: Float,
          allow_invoice_credit_or_void: T.nilable(T::Boolean),
          change_option:
            Orb::SubscriptionUpdateFixedFeeQuantityParams::ChangeOption::OrSymbol,
          effective_date: T.nilable(Date),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Price for which the quantity should be updated. Must be a fixed fee.
        price_id:,
        quantity:,
        # If false, this request will fail if it would void an issued invoice or create a
        # credit note. Consider using this as a safety mechanism if you do not expect
        # existing invoices to be changed.
        allow_invoice_credit_or_void: nil,
        # Determines when the change takes effect. Note that if `effective_date` is
        # specified, this defaults to `effective_date`. Otherwise, this defaults to
        # `immediate` unless it's explicitly set to `upcoming_invoice`.
        change_option: nil,
        # The date that the quantity change should take effect, localized to the
        # customer's timezone. Ifthis parameter is not passed in, the quantity change is
        # effective according to `change_option`.
        effective_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            price_id: String,
            quantity: Float,
            allow_invoice_credit_or_void: T.nilable(T::Boolean),
            change_option:
              Orb::SubscriptionUpdateFixedFeeQuantityParams::ChangeOption::OrSymbol,
            effective_date: T.nilable(Date),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Determines when the change takes effect. Note that if `effective_date` is
      # specified, this defaults to `effective_date`. Otherwise, this defaults to
      # `immediate` unless it's explicitly set to `upcoming_invoice`.
      module ChangeOption
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Orb::SubscriptionUpdateFixedFeeQuantityParams::ChangeOption
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        IMMEDIATE =
          T.let(
            :immediate,
            Orb::SubscriptionUpdateFixedFeeQuantityParams::ChangeOption::TaggedSymbol
          )
        UPCOMING_INVOICE =
          T.let(
            :upcoming_invoice,
            Orb::SubscriptionUpdateFixedFeeQuantityParams::ChangeOption::TaggedSymbol
          )
        EFFECTIVE_DATE =
          T.let(
            :effective_date,
            Orb::SubscriptionUpdateFixedFeeQuantityParams::ChangeOption::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::SubscriptionUpdateFixedFeeQuantityParams::ChangeOption::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
