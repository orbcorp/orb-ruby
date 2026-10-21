# frozen_string_literal: true

module Orb
  module Models
    module Webhooks
      class EventUnmatchedEventStandardWebhookEvent < Orb::Internal::Type::BaseModel
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
        #   @return [Symbol, Orb::Models::Webhooks::EventUnmatchedEventStandardWebhookEvent::PayloadStyle]
        required :payload_style, enum: -> { Orb::Webhooks::EventUnmatchedEventStandardWebhookEvent::PayloadStyle }

        # @!attribute properties
        #
        #   @return [Orb::Models::Webhooks::EventUnmatchedEventStandardWebhookEvent::Properties]
        required :properties, -> { Orb::Webhooks::EventUnmatchedEventStandardWebhookEvent::Properties }

        # @!attribute type
        #   The event this payload describes.
        #
        #   @return [Symbol, Orb::Models::Webhooks::EventUnmatchedEventStandardWebhookEvent::Type]
        required :type, enum: -> { Orb::Webhooks::EventUnmatchedEventStandardWebhookEvent::Type }

        # @!method initialize(id:, created_at:, payload_style:, properties:, type:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Webhooks::EventUnmatchedEventStandardWebhookEvent} for more
        #   details.
        #
        #   Issued when an event does not match any customer.
        #
        #   @param id [String] The ID of this webhook event.
        #
        #   @param created_at [Time] The time at which this event was created, to the second.
        #
        #   @param payload_style [Symbol, Orb::Models::Webhooks::EventUnmatchedEventStandardWebhookEvent::PayloadStyle] The serialization style this payload was rendered in, as configured on the endpo
        #
        #   @param properties [Orb::Models::Webhooks::EventUnmatchedEventStandardWebhookEvent::Properties]
        #
        #   @param type [Symbol, Orb::Models::Webhooks::EventUnmatchedEventStandardWebhookEvent::Type] The event this payload describes.

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        #
        # @see Orb::Models::Webhooks::EventUnmatchedEventStandardWebhookEvent#payload_style
        module PayloadStyle
          extend Orb::Internal::Type::Enum

          EXPANDED = :expanded
          STANDARD = :standard

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Webhooks::EventUnmatchedEventStandardWebhookEvent#properties
        class Properties < Orb::Internal::Type::BaseModel
          # @!attribute event
          #
          #   @return [Orb::Models::Webhooks::EventUnmatchedEventStandardWebhookEvent::Properties::Event]
          required :event, -> { Orb::Webhooks::EventUnmatchedEventStandardWebhookEvent::Properties::Event }

          # @!method initialize(event:)
          #   @param event [Orb::Models::Webhooks::EventUnmatchedEventStandardWebhookEvent::Properties::Event]

          # @see Orb::Models::Webhooks::EventUnmatchedEventStandardWebhookEvent::Properties#event
          class Event < Orb::Internal::Type::BaseModel
            # @!attribute customer_id
            #
            #   @return [String, nil]
            required :customer_id, String, nil?: true

            # @!attribute event_name
            #
            #   @return [String]
            required :event_name, String

            # @!attribute external_customer_id
            #
            #   @return [String, nil]
            required :external_customer_id, String, nil?: true

            # @!attribute idempotency_key
            #
            #   @return [String]
            required :idempotency_key, String

            # @!attribute properties
            #
            #   @return [Hash{Symbol=>Object}]
            required :properties, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute timestamp
            #
            #   @return [Time]
            required :timestamp, Time

            # @!method initialize(customer_id:, event_name:, external_customer_id:, idempotency_key:, properties:, timestamp:)
            #   @param customer_id [String, nil]
            #   @param event_name [String]
            #   @param external_customer_id [String, nil]
            #   @param idempotency_key [String]
            #   @param properties [Hash{Symbol=>Object}]
            #   @param timestamp [Time]
          end
        end

        # The event this payload describes.
        #
        # @see Orb::Models::Webhooks::EventUnmatchedEventStandardWebhookEvent#type
        module Type
          extend Orb::Internal::Type::Enum

          EVENT_UNMATCHED_EVENT = :"event.unmatched_event"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
