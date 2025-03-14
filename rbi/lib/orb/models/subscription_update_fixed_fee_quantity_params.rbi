# typed: strong

module Orb
  module Models
    class SubscriptionUpdateFixedFeeQuantityParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # Price for which the quantity should be updated. Must be a fixed fee.
      sig { returns(String) }
      def price_id
      end

      sig { params(_: String).returns(String) }
      def price_id=(_)
      end

      sig { returns(Float) }
      def quantity
      end

      sig { params(_: Float).returns(Float) }
      def quantity=(_)
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

      # Determines when the change takes effect. Note that if `effective_date` is
      #   specified, this defaults to `effective_date`. Otherwise, this defaults to
      #   `immediate` unless it's explicitly set to `upcoming_invoice`.
      sig { returns(T.nilable(Symbol)) }
      def change_option
      end

      sig { params(_: Symbol).returns(Symbol) }
      def change_option=(_)
      end

      # The date that the quantity change should take effect, localized to the
      #   customer's timezone. Ifthis parameter is not passed in, the quantity change is
      #   effective according to `change_option`.
      sig { returns(T.nilable(Date)) }
      def effective_date
      end

      sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
      def effective_date=(_)
      end

      sig do
        params(
          price_id: String,
          quantity: Float,
          allow_invoice_credit_or_void: T.nilable(T::Boolean),
          change_option: Symbol,
          effective_date: T.nilable(Date),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
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
      )
      end

      sig do
        override
          .returns(
            {
              price_id: String,
              quantity: Float,
              allow_invoice_credit_or_void: T.nilable(T::Boolean),
              change_option: Symbol,
              effective_date: T.nilable(Date),
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Determines when the change takes effect. Note that if `effective_date` is
      #   specified, this defaults to `effective_date`. Otherwise, this defaults to
      #   `immediate` unless it's explicitly set to `upcoming_invoice`.
      class ChangeOption < Orb::Enum
        abstract!

        IMMEDIATE = :immediate
        UPCOMING_INVOICE = :upcoming_invoice
        EFFECTIVE_DATE = :effective_date

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
