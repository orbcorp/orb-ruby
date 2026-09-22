# typed: strong

module Orb
  module Models
    class PaymentMethodCreatedWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::PaymentMethodCreatedWebhookEvent, Orb::Internal::AnyHash)
        end

      # The ID of this webhook event.
      sig { returns(String) }
      attr_accessor :id

      # The time at which this event was created, to the second.
      sig { returns(Time) }
      attr_accessor :created_at

      # A payment method represents a customer's stored payment instrument held with an
      # external payment provider (such as Adyen or Stripe).
      #
      # The serialization is intentionally minimal for now; provider-pulled details
      # (e.g. card display metadata) will be added over time.
      sig { returns(Orb::PaymentMethodCreatedWebhookEvent::PaymentMethod) }
      attr_reader :payment_method

      sig do
        params(
          payment_method:
            Orb::PaymentMethodCreatedWebhookEvent::PaymentMethod::OrHash
        ).void
      end
      attr_writer :payment_method

      sig { returns(T.anything) }
      attr_accessor :properties

      # The event this payload describes.
      sig { returns(Orb::PaymentMethodCreatedWebhookEvent::Type::TaggedSymbol) }
      attr_accessor :type

      # Issued when a payment method is created.
      sig do
        params(
          id: String,
          created_at: Time,
          payment_method:
            Orb::PaymentMethodCreatedWebhookEvent::PaymentMethod::OrHash,
          properties: T.anything,
          type: Orb::PaymentMethodCreatedWebhookEvent::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of this webhook event.
        id:,
        # The time at which this event was created, to the second.
        created_at:,
        # A payment method represents a customer's stored payment instrument held with an
        # external payment provider (such as Adyen or Stripe).
        #
        # The serialization is intentionally minimal for now; provider-pulled details
        # (e.g. card display metadata) will be added over time.
        payment_method:,
        properties:,
        # The event this payload describes.
        type:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            payment_method:
              Orb::PaymentMethodCreatedWebhookEvent::PaymentMethod,
            properties: T.anything,
            type: Orb::PaymentMethodCreatedWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class PaymentMethod < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PaymentMethodCreatedWebhookEvent::PaymentMethod,
              Orb::Internal::AnyHash
            )
          end

        # The Orb-assigned unique identifier for the payment method.
        sig { returns(String) }
        attr_accessor :id

        # The time at which the payment method was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # The ID of the Orb customer this payment method is attached to.
        sig { returns(String) }
        attr_accessor :customer_id

        # Whether this is the customer's default payment method.
        sig { returns(T::Boolean) }
        attr_accessor :default

        # The identifier of this payment method in the external payment provider.
        sig { returns(String) }
        attr_accessor :external_payment_method_id

        # The type of the underlying payment instrument, e.g. `card` or `us_bank_account`.
        sig do
          returns(
            Orb::PaymentMethodCreatedWebhookEvent::PaymentMethod::PaymentMethodType::TaggedSymbol
          )
        end
        attr_accessor :payment_method_type

        # The external payment provider this method belongs to, derived from the linked
        # payment gateway connection (e.g. `adyen` or `stripe`). Null if the connection
        # has been removed.
        sig { returns(T.nilable(String)) }
        attr_accessor :provider_type

        # A payment method represents a customer's stored payment instrument held with an
        # external payment provider (such as Adyen or Stripe).
        #
        # The serialization is intentionally minimal for now; provider-pulled details
        # (e.g. card display metadata) will be added over time.
        sig do
          params(
            id: String,
            created_at: Time,
            customer_id: String,
            default: T::Boolean,
            external_payment_method_id: String,
            payment_method_type:
              Orb::PaymentMethodCreatedWebhookEvent::PaymentMethod::PaymentMethodType::OrSymbol,
            provider_type: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The Orb-assigned unique identifier for the payment method.
          id:,
          # The time at which the payment method was created.
          created_at:,
          # The ID of the Orb customer this payment method is attached to.
          customer_id:,
          # Whether this is the customer's default payment method.
          default:,
          # The identifier of this payment method in the external payment provider.
          external_payment_method_id:,
          # The type of the underlying payment instrument, e.g. `card` or `us_bank_account`.
          payment_method_type:,
          # The external payment provider this method belongs to, derived from the linked
          # payment gateway connection (e.g. `adyen` or `stripe`). Null if the connection
          # has been removed.
          provider_type:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              customer_id: String,
              default: T::Boolean,
              external_payment_method_id: String,
              payment_method_type:
                Orb::PaymentMethodCreatedWebhookEvent::PaymentMethod::PaymentMethodType::TaggedSymbol,
              provider_type: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # The type of the underlying payment instrument, e.g. `card` or `us_bank_account`.
        module PaymentMethodType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::PaymentMethodCreatedWebhookEvent::PaymentMethod::PaymentMethodType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CARD =
            T.let(
              :card,
              Orb::PaymentMethodCreatedWebhookEvent::PaymentMethod::PaymentMethodType::TaggedSymbol
            )
          US_BANK_ACCOUNT =
            T.let(
              :us_bank_account,
              Orb::PaymentMethodCreatedWebhookEvent::PaymentMethod::PaymentMethodType::TaggedSymbol
            )
          LINK =
            T.let(
              :link,
              Orb::PaymentMethodCreatedWebhookEvent::PaymentMethod::PaymentMethodType::TaggedSymbol
            )
          AMAZON_PAY =
            T.let(
              :amazon_pay,
              Orb::PaymentMethodCreatedWebhookEvent::PaymentMethod::PaymentMethodType::TaggedSymbol
            )
          CRYPTO =
            T.let(
              :crypto,
              Orb::PaymentMethodCreatedWebhookEvent::PaymentMethod::PaymentMethodType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::PaymentMethodCreatedWebhookEvent::PaymentMethod::PaymentMethodType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # The event this payload describes.
      module Type
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::PaymentMethodCreatedWebhookEvent::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PAYMENT_METHOD_CREATED =
          T.let(
            :"payment_method.created",
            Orb::PaymentMethodCreatedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::PaymentMethodCreatedWebhookEvent::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
