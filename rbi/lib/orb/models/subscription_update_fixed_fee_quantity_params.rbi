# typed: strong

module Orb
  module Models
    class SubscriptionUpdateFixedFeeQuantityParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

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

      sig { returns(T.nilable(T::Boolean)) }
      def allow_invoice_credit_or_void
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def allow_invoice_credit_or_void=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def change_option
      end

      sig { params(_: Symbol).returns(Symbol) }
      def change_option=(_)
      end

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
