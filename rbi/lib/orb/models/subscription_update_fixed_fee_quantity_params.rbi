# typed: strong

module Orb
  module Models
    class SubscriptionUpdateFixedFeeQuantityParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # Price for which the quantity should be updated. Must be a fixed fee.
      sig { returns(String) }
      attr_accessor :price_id

      sig { returns(Float) }
      attr_accessor :quantity

      # If false, this request will fail if it would void an issued invoice or create a
      #   credit note. Consider using this as a safety mechanism if you do not expect
      #   existing invoices to be changed.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :allow_invoice_credit_or_void

      # Determines when the change takes effect. Note that if `effective_date` is
      #   specified, this defaults to `effective_date`. Otherwise, this defaults to
      #   `immediate` unless it's explicitly set to `upcoming_invoice`.
      sig { returns(T.nilable(Orb::Models::SubscriptionUpdateFixedFeeQuantityParams::ChangeOption::OrSymbol)) }
      attr_reader :change_option

      sig { params(change_option: Orb::Models::SubscriptionUpdateFixedFeeQuantityParams::ChangeOption::OrSymbol).void }
      attr_writer :change_option

      # The date that the quantity change should take effect, localized to the
      #   customer's timezone. Ifthis parameter is not passed in, the quantity change is
      #   effective according to `change_option`.
      sig { returns(T.nilable(Date)) }
      attr_accessor :effective_date

      sig do
        params(
          price_id: String,
          quantity: Float,
          allow_invoice_credit_or_void: T.nilable(T::Boolean),
          change_option: Orb::Models::SubscriptionUpdateFixedFeeQuantityParams::ChangeOption::OrSymbol,
          effective_date: T.nilable(Date),
          request_options: T.any(Orb::RequestOptions, Orb::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        price_id:,
        quantity:,
        allow_invoice_credit_or_void: nil,
        change_option: nil,
        effective_date: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              price_id: String,
              quantity: Float,
              allow_invoice_credit_or_void: T.nilable(T::Boolean),
              change_option: Orb::Models::SubscriptionUpdateFixedFeeQuantityParams::ChangeOption::OrSymbol,
              effective_date: T.nilable(Date),
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash; end

      # Determines when the change takes effect. Note that if `effective_date` is
      #   specified, this defaults to `effective_date`. Otherwise, this defaults to
      #   `immediate` unless it's explicitly set to `upcoming_invoice`.
      module ChangeOption
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::Models::SubscriptionUpdateFixedFeeQuantityParams::ChangeOption) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Orb::Models::SubscriptionUpdateFixedFeeQuantityParams::ChangeOption::TaggedSymbol) }

        IMMEDIATE =
          T.let(:immediate, Orb::Models::SubscriptionUpdateFixedFeeQuantityParams::ChangeOption::TaggedSymbol)
        UPCOMING_INVOICE =
          T.let(
            :upcoming_invoice,
            Orb::Models::SubscriptionUpdateFixedFeeQuantityParams::ChangeOption::TaggedSymbol
          )
        EFFECTIVE_DATE =
          T.let(:effective_date, Orb::Models::SubscriptionUpdateFixedFeeQuantityParams::ChangeOption::TaggedSymbol)

        sig do
          override
            .returns(T::Array[Orb::Models::SubscriptionUpdateFixedFeeQuantityParams::ChangeOption::TaggedSymbol])
        end
        def self.values; end
      end
    end
  end
end
