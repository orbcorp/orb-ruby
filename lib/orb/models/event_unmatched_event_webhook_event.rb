# frozen_string_literal: true

module Orb
  module Models
    class EventUnmatchedEventWebhookEvent < Orb::Internal::Type::BaseModel
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

      # @!attribute properties
      #
      #   @return [Orb::Models::EventUnmatchedEventWebhookEvent::Properties]
      required :properties, -> { Orb::EventUnmatchedEventWebhookEvent::Properties }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::EventUnmatchedEventWebhookEvent::Type]
      required :type, enum: -> { Orb::EventUnmatchedEventWebhookEvent::Type }

      # @!method initialize(id:, created_at:, properties:, type:)
      #   Issued when an event does not match any customer.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param properties [Orb::Models::EventUnmatchedEventWebhookEvent::Properties]
      #
      #   @param type [Symbol, Orb::Models::EventUnmatchedEventWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::EventUnmatchedEventWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute event
        #
        #   @return [Orb::Models::EventUnmatchedEventWebhookEvent::Properties::Event]
        required :event, -> { Orb::EventUnmatchedEventWebhookEvent::Properties::Event }

        # @!method initialize(event:)
        #   @param event [Orb::Models::EventUnmatchedEventWebhookEvent::Properties::Event]

        # @see Orb::Models::EventUnmatchedEventWebhookEvent::Properties#event
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
      # @see Orb::Models::EventUnmatchedEventWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        EVENT_UNMATCHED_EVENT = :"event.unmatched_event"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
