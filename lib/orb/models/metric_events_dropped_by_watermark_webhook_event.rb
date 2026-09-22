# frozen_string_literal: true

module Orb
  module Models
    class MetricEventsDroppedByWatermarkWebhookEvent < Orb::Internal::Type::BaseModel
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
      #   `window_start` and `window_end` are ISO-8601 strings rather than datetimes: the
      #   untyped message called `.isoformat()` on them, so they keep microseconds where
      #   the webhook JSON provider would have truncated them.
      #
      #   @return [Orb::Models::MetricEventsDroppedByWatermarkWebhookEvent::Properties]
      required :properties, -> { Orb::MetricEventsDroppedByWatermarkWebhookEvent::Properties }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::MetricEventsDroppedByWatermarkWebhookEvent::Type]
      required :type, enum: -> { Orb::MetricEventsDroppedByWatermarkWebhookEvent::Type }

      # @!method initialize(id:, created_at:, properties:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::MetricEventsDroppedByWatermarkWebhookEvent} for more details.
      #
      #   Issued when metric events are dropped by watermark threshold.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param properties [Orb::Models::MetricEventsDroppedByWatermarkWebhookEvent::Properties] `window_start` and `window_end` are ISO-8601 strings rather than datetimes: the
      #
      #   @param type [Symbol, Orb::Models::MetricEventsDroppedByWatermarkWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::MetricEventsDroppedByWatermarkWebhookEvent#properties
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
      # @see Orb::Models::MetricEventsDroppedByWatermarkWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        METRIC_EVENTS_DROPPED_BY_WATERMARK = :"metric.events_dropped_by_watermark"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
