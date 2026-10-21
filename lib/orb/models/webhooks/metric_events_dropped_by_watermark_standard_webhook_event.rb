# frozen_string_literal: true

module Orb
  module Models
    module Webhooks
      class MetricEventsDroppedByWatermarkStandardWebhookEvent < Orb::Internal::Type::BaseModel
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
        #   @return [Symbol, Orb::Models::Webhooks::MetricEventsDroppedByWatermarkStandardWebhookEvent::PayloadStyle]
        required :payload_style,
                 enum: -> { Orb::Webhooks::MetricEventsDroppedByWatermarkStandardWebhookEvent::PayloadStyle }

        # @!attribute properties
        #   `window_start` and `window_end` are ISO-8601 strings rather than datetimes: the
        #   untyped message called `.isoformat()` on them, so they keep microseconds where
        #   the webhook JSON provider would have truncated them.
        #
        #   @return [Orb::Models::Webhooks::MetricEventsDroppedByWatermarkStandardWebhookEvent::Properties]
        required :properties, -> { Orb::Webhooks::MetricEventsDroppedByWatermarkStandardWebhookEvent::Properties }

        # @!attribute type
        #   The event this payload describes.
        #
        #   @return [Symbol, Orb::Models::Webhooks::MetricEventsDroppedByWatermarkStandardWebhookEvent::Type]
        required :type, enum: -> { Orb::Webhooks::MetricEventsDroppedByWatermarkStandardWebhookEvent::Type }

        # @!method initialize(id:, created_at:, payload_style:, properties:, type:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Webhooks::MetricEventsDroppedByWatermarkStandardWebhookEvent} for
        #   more details.
        #
        #   Issued when metric events are dropped by watermark threshold.
        #
        #   @param id [String] The ID of this webhook event.
        #
        #   @param created_at [Time] The time at which this event was created, to the second.
        #
        #   @param payload_style [Symbol, Orb::Models::Webhooks::MetricEventsDroppedByWatermarkStandardWebhookEvent::PayloadStyle] The serialization style this payload was rendered in, as configured on the endpo
        #
        #   @param properties [Orb::Models::Webhooks::MetricEventsDroppedByWatermarkStandardWebhookEvent::Properties] `window_start` and `window_end` are ISO-8601 strings rather than datetimes: the
        #
        #   @param type [Symbol, Orb::Models::Webhooks::MetricEventsDroppedByWatermarkStandardWebhookEvent::Type] The event this payload describes.

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        #
        # @see Orb::Models::Webhooks::MetricEventsDroppedByWatermarkStandardWebhookEvent#payload_style
        module PayloadStyle
          extend Orb::Internal::Type::Enum

          EXPANDED = :expanded
          STANDARD = :standard

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Webhooks::MetricEventsDroppedByWatermarkStandardWebhookEvent#properties
        class Properties < Orb::Internal::Type::BaseModel
          # @!attribute dropped
          #
          #   @return [Integer]
          required :dropped, Integer

          # @!attribute event_name
          #
          #   @return [String]
          required :event_name, String

          # @!attribute total
          #
          #   @return [Integer]
          required :total, Integer

          # @!attribute window_end
          #
          #   @return [String]
          required :window_end, String

          # @!attribute window_start
          #
          #   @return [String]
          required :window_start, String

          # @!method initialize(dropped:, event_name:, total:, window_end:, window_start:)
          #   `window_start` and `window_end` are ISO-8601 strings rather than datetimes: the
          #   untyped message called `.isoformat()` on them, so they keep microseconds where
          #   the webhook JSON provider would have truncated them.
          #
          #   @param dropped [Integer]
          #   @param event_name [String]
          #   @param total [Integer]
          #   @param window_end [String]
          #   @param window_start [String]
        end

        # The event this payload describes.
        #
        # @see Orb::Models::Webhooks::MetricEventsDroppedByWatermarkStandardWebhookEvent#type
        module Type
          extend Orb::Internal::Type::Enum

          METRIC_EVENTS_DROPPED_BY_WATERMARK = :"metric.events_dropped_by_watermark"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
