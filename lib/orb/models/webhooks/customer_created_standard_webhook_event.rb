# frozen_string_literal: true

module Orb
  module Models
    module Webhooks
      class CustomerCreatedStandardWebhookEvent < Orb::Internal::Type::BaseModel
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

        # @!attribute customer
        #   A customer is a buyer of your products, and the other party to the billing
        #   relationship.
        #
        #   In Orb, customers are assigned system generated identifiers automatically, but
        #   it's often desirable to have these match existing identifiers in your system. To
        #   avoid having to denormalize Orb ID information, you can pass in an
        #   `external_customer_id` with your own identifier. See
        #   [Customer ID Aliases](/events-and-metrics/customer-aliases) for further
        #   information about how these aliases work in Orb.
        #
        #   In addition to having an identifier in your system, a customer may exist in a
        #   payment provider solution like Stripe. Use the `payment_provider_id` and the
        #   `payment_provider` enum field to express this mapping.
        #
        #   A customer also has a timezone (from the standard
        #   [IANA timezone database](https://www.iana.org/time-zones)), which defaults to
        #   your account's timezone. See [Timezone localization](/essentials/timezones) for
        #   information on what this timezone parameter influences within Orb.
        #
        #   @return [Orb::Models::Customer]
        required :customer, -> { Orb::Customer }

        # @!attribute payload_style
        #   The serialization style this payload was rendered in, as configured on the
        #   endpoint.
        #
        #   @return [Symbol, Orb::Models::Webhooks::CustomerCreatedStandardWebhookEvent::PayloadStyle]
        required :payload_style, enum: -> { Orb::Webhooks::CustomerCreatedStandardWebhookEvent::PayloadStyle }

        # @!attribute properties
        #
        #   @return [Object]
        required :properties, Orb::Internal::Type::Unknown

        # @!attribute type
        #   The event this payload describes.
        #
        #   @return [Symbol, Orb::Models::Webhooks::CustomerCreatedStandardWebhookEvent::Type]
        required :type, enum: -> { Orb::Webhooks::CustomerCreatedStandardWebhookEvent::Type }

        # @!method initialize(id:, created_at:, customer:, payload_style:, properties:, type:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Webhooks::CustomerCreatedStandardWebhookEvent} for more details.
        #
        #   Issued when a customer resource is created.
        #
        #   @param id [String] The ID of this webhook event.
        #
        #   @param created_at [Time] The time at which this event was created, to the second.
        #
        #   @param customer [Orb::Models::Customer] A customer is a buyer of your products, and the other party to the billing relat
        #
        #   @param payload_style [Symbol, Orb::Models::Webhooks::CustomerCreatedStandardWebhookEvent::PayloadStyle] The serialization style this payload was rendered in, as configured on the endpo
        #
        #   @param properties [Object]
        #
        #   @param type [Symbol, Orb::Models::Webhooks::CustomerCreatedStandardWebhookEvent::Type] The event this payload describes.

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        #
        # @see Orb::Models::Webhooks::CustomerCreatedStandardWebhookEvent#payload_style
        module PayloadStyle
          extend Orb::Internal::Type::Enum

          EXPANDED = :expanded
          STANDARD = :standard

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The event this payload describes.
        #
        # @see Orb::Models::Webhooks::CustomerCreatedStandardWebhookEvent#type
        module Type
          extend Orb::Internal::Type::Enum

          CUSTOMER_CREATED = :"customer.created"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
