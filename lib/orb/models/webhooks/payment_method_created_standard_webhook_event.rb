# frozen_string_literal: true

module Orb
  module Models
    module Webhooks
      class PaymentMethodCreatedStandardWebhookEvent < Orb::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of this webhook event.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   The time at which this event was created, to the second.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute payload_style
        #   The serialization style this payload was rendered in, as configured on the
        #   endpoint.
        #
        #   @return [Symbol, Orb::Models::Webhooks::PaymentMethodCreatedStandardWebhookEvent::PayloadStyle]
        required :payload_style,
                 enum: -> { Orb::Webhooks::PaymentMethodCreatedStandardWebhookEvent::PayloadStyle }

        # @!attribute payment_method
        #   A payment method represents a customer's stored payment instrument held with an
        #   external payment provider (such as Adyen or Stripe).
        #
        #   The serialization is intentionally minimal for now; provider-pulled details
        #   (e.g. card display metadata) will be added over time.
        #
        #   @return [Orb::Models::Webhooks::PaymentMethodCreatedStandardWebhookEvent::PaymentMethod]
        required :payment_method, -> { Orb::Webhooks::PaymentMethodCreatedStandardWebhookEvent::PaymentMethod }

        # @!attribute properties
        #
        #   @return [Object]
        required :properties, Orb::Internal::Type::Unknown

        # @!attribute type
        #   The event this payload describes.
        #
        #   @return [Symbol, Orb::Models::Webhooks::PaymentMethodCreatedStandardWebhookEvent::Type]
        required :type, enum: -> { Orb::Webhooks::PaymentMethodCreatedStandardWebhookEvent::Type }

        # @!method initialize(id:, created_at:, payload_style:, payment_method:, properties:, type:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Webhooks::PaymentMethodCreatedStandardWebhookEvent} for more
        #   details.
        #
        #   Issued when a payment method is created.
        #
        #   @param id [String] The ID of this webhook event.
        #
        #   @param created_at [Time] The time at which this event was created, to the second.
        #
        #   @param payload_style [Symbol, Orb::Models::Webhooks::PaymentMethodCreatedStandardWebhookEvent::PayloadStyle] The serialization style this payload was rendered in, as configured on the endpo
        #
        #   @param payment_method [Orb::Models::Webhooks::PaymentMethodCreatedStandardWebhookEvent::PaymentMethod] A payment method represents a customer's stored payment instrument held with an
        #
        #   @param properties [Object]
        #
        #   @param type [Symbol, Orb::Models::Webhooks::PaymentMethodCreatedStandardWebhookEvent::Type] The event this payload describes.

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        #
        # @see Orb::Models::Webhooks::PaymentMethodCreatedStandardWebhookEvent#payload_style
        module PayloadStyle
          extend Orb::Internal::Type::Enum

          EXPANDED = :expanded
          STANDARD = :standard

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Webhooks::PaymentMethodCreatedStandardWebhookEvent#payment_method
        class PaymentMethod < Orb::Internal::Type::BaseModel
          # @!attribute id
          #   The Orb-assigned unique identifier for the payment method.
          #
          #   @return [String]
          required :id, String

          # @!attribute created_at
          #   The time at which the payment method was created.
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute customer_id
          #   The ID of the Orb customer this payment method is attached to.
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute default
          #   Whether this is the customer's default payment method.
          #
          #   @return [Boolean]
          required :default, Orb::Internal::Type::Boolean

          # @!attribute external_payment_method_id
          #   The identifier of this payment method in the external payment provider.
          #
          #   @return [String]
          required :external_payment_method_id, String

          # @!attribute payment_method_type
          #   The type of the underlying payment instrument, e.g. `card` or `us_bank_account`.
          #
          #   @return [Symbol, Orb::Models::Webhooks::PaymentMethodCreatedStandardWebhookEvent::PaymentMethod::PaymentMethodType]
          required :payment_method_type,
                   enum: -> { Orb::Webhooks::PaymentMethodCreatedStandardWebhookEvent::PaymentMethod::PaymentMethodType }

          # @!attribute provider_type
          #   The external payment provider this method belongs to, derived from the linked
          #   payment gateway connection (e.g. `adyen` or `stripe`). Null if the connection
          #   has been removed.
          #
          #   @return [String, nil]
          required :provider_type, String, nil?: true

          # @!method initialize(id:, created_at:, customer_id:, default:, external_payment_method_id:, payment_method_type:, provider_type:)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Webhooks::PaymentMethodCreatedStandardWebhookEvent::PaymentMethod}
          #   for more details.
          #
          #   A payment method represents a customer's stored payment instrument held with an
          #   external payment provider (such as Adyen or Stripe).
          #
          #   The serialization is intentionally minimal for now; provider-pulled details
          #   (e.g. card display metadata) will be added over time.
          #
          #   @param id [String] The Orb-assigned unique identifier for the payment method.
          #
          #   @param created_at [Time] The time at which the payment method was created.
          #
          #   @param customer_id [String] The ID of the Orb customer this payment method is attached to.
          #
          #   @param default [Boolean] Whether this is the customer's default payment method.
          #
          #   @param external_payment_method_id [String] The identifier of this payment method in the external payment provider.
          #
          #   @param payment_method_type [Symbol, Orb::Models::Webhooks::PaymentMethodCreatedStandardWebhookEvent::PaymentMethod::PaymentMethodType] The type of the underlying payment instrument, e.g. `card` or `us_bank_account`.
          #
          #   @param provider_type [String, nil] The external payment provider this method belongs to, derived from the linked pa

          # The type of the underlying payment instrument, e.g. `card` or `us_bank_account`.
          #
          # @see Orb::Models::Webhooks::PaymentMethodCreatedStandardWebhookEvent::PaymentMethod#payment_method_type
          module PaymentMethodType
            extend Orb::Internal::Type::Enum

            CARD = :card
            US_BANK_ACCOUNT = :us_bank_account
            LINK = :link
            AMAZON_PAY = :amazon_pay
            CRYPTO = :crypto

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # The event this payload describes.
        #
        # @see Orb::Models::Webhooks::PaymentMethodCreatedStandardWebhookEvent#type
        module Type
          extend Orb::Internal::Type::Enum

          PAYMENT_METHOD_CREATED = :"payment_method.created"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
