# typed: strong

module Orb
  module Models
    class MetricEventsDroppedByWatermarkWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::MetricEventsDroppedByWatermarkWebhookEvent,
            Orb::Internal::AnyHash
          )
        end

      # The ID of this webhook event.
      sig { returns(String) }
      attr_accessor :id

      # The time at which this event was created, to the second.
      sig { returns(Time) }
      attr_accessor :created_at

      # `window_start` and `window_end` are ISO-8601 strings rather than datetimes: the
      # untyped message called `.isoformat()` on them, so they keep microseconds where
      # the webhook JSON provider would have truncated them.
      sig do
        returns(Orb::MetricEventsDroppedByWatermarkWebhookEvent::Properties)
      end
      attr_reader :properties

      sig do
        params(
          properties:
            Orb::MetricEventsDroppedByWatermarkWebhookEvent::Properties::OrHash
        ).void
      end
      attr_writer :properties

      # The event this payload describes.
      sig do
        returns(
          Orb::MetricEventsDroppedByWatermarkWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # Issued when metric events are dropped by watermark threshold.
      sig do
        params(
          id: String,
          created_at: Time,
          properties:
            Orb::MetricEventsDroppedByWatermarkWebhookEvent::Properties::OrHash,
          type: Orb::MetricEventsDroppedByWatermarkWebhookEvent::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of this webhook event.
        id:,
        # The time at which this event was created, to the second.
        created_at:,
        # `window_start` and `window_end` are ISO-8601 strings rather than datetimes: the
        # untyped message called `.isoformat()` on them, so they keep microseconds where
        # the webhook JSON provider would have truncated them.
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
            properties:
              Orb::MetricEventsDroppedByWatermarkWebhookEvent::Properties,
            type:
              Orb::MetricEventsDroppedByWatermarkWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Properties < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::MetricEventsDroppedByWatermarkWebhookEvent::Properties,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :dropped

        sig { returns(String) }
        attr_accessor :event_name

        sig { returns(Integer) }
        attr_accessor :total

        sig { returns(String) }
        attr_accessor :window_end

        sig { returns(String) }
        attr_accessor :window_start

        # `window_start` and `window_end` are ISO-8601 strings rather than datetimes: the
        # untyped message called `.isoformat()` on them, so they keep microseconds where
        # the webhook JSON provider would have truncated them.
        sig do
          params(
            dropped: Integer,
            event_name: String,
            total: Integer,
            window_end: String,
            window_start: String
          ).returns(T.attached_class)
        end
        def self.new(dropped:, event_name:, total:, window_end:, window_start:)
        end

        sig do
          override.returns(
            {
              dropped: Integer,
              event_name: String,
              total: Integer,
              window_end: String,
              window_start: String
            }
          )
        end
        def to_hash
        end
      end

      # The event this payload describes.
      module Type
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::MetricEventsDroppedByWatermarkWebhookEvent::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        METRIC_EVENTS_DROPPED_BY_WATERMARK =
          T.let(
            :"metric.events_dropped_by_watermark",
            Orb::MetricEventsDroppedByWatermarkWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::MetricEventsDroppedByWatermarkWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
