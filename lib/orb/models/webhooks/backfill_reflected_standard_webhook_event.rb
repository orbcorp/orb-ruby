# frozen_string_literal: true

module Orb
  module Models
    module Webhooks
      class BackfillReflectedStandardWebhookEvent < Orb::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of this webhook event.
        #
        #   @return [String]
        required :id, String

        # @!attribute backfill
        #   A backfill represents an update to historical usage data, adding or replacing
        #   events in a timeframe.
        #
        #   @return [Orb::Models::Webhooks::BackfillReflectedStandardWebhookEvent::Backfill]
        required :backfill, -> { Orb::Webhooks::BackfillReflectedStandardWebhookEvent::Backfill }

        # @!attribute created_at
        #   The time at which this event was created, to the second.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute payload_style
        #   The serialization style this payload was rendered in, as configured on the
        #   endpoint.
        #
        #   @return [Symbol, Orb::Models::Webhooks::BackfillReflectedStandardWebhookEvent::PayloadStyle]
        required :payload_style, enum: -> { Orb::Webhooks::BackfillReflectedStandardWebhookEvent::PayloadStyle }

        # @!attribute properties
        #
        #   @return [Object]
        required :properties, Orb::Internal::Type::Unknown

        # @!attribute type
        #   The event this payload describes.
        #
        #   @return [Symbol, Orb::Models::Webhooks::BackfillReflectedStandardWebhookEvent::Type]
        required :type, enum: -> { Orb::Webhooks::BackfillReflectedStandardWebhookEvent::Type }

        # @!method initialize(id:, backfill:, created_at:, payload_style:, properties:, type:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Webhooks::BackfillReflectedStandardWebhookEvent} for more details.
        #
        #   Issued when a backfill is closed and its events are reflected into usage.
        #
        #   @param id [String] The ID of this webhook event.
        #
        #   @param backfill [Orb::Models::Webhooks::BackfillReflectedStandardWebhookEvent::Backfill] A backfill represents an update to historical usage data, adding or replacing ev
        #
        #   @param created_at [Time] The time at which this event was created, to the second.
        #
        #   @param payload_style [Symbol, Orb::Models::Webhooks::BackfillReflectedStandardWebhookEvent::PayloadStyle] The serialization style this payload was rendered in, as configured on the endpo
        #
        #   @param properties [Object]
        #
        #   @param type [Symbol, Orb::Models::Webhooks::BackfillReflectedStandardWebhookEvent::Type] The event this payload describes.

        # @see Orb::Models::Webhooks::BackfillReflectedStandardWebhookEvent#backfill
        class Backfill < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute close_time
          #   If in the future, the time at which the backfill will automatically close. If in
          #   the past, the time at which the backfill was closed.
          #
          #   @return [Time, nil]
          required :close_time, Time, nil?: true

          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute customer_id
          #   The Orb-generated ID of the customer to which this backfill is scoped. If
          #   `null`, this backfill is scoped to all customers.
          #
          #   @return [String, nil]
          required :customer_id, String, nil?: true

          # @!attribute events_ingested
          #   The number of events ingested in this backfill.
          #
          #   @return [Integer]
          required :events_ingested, Integer

          # @!attribute replace_existing_events
          #   If `true`, existing events in the backfill's timeframe will be replaced with the
          #   newly ingested events associated with the backfill. If `false`, newly ingested
          #   events will be added to the existing events.
          #
          #   @return [Boolean]
          required :replace_existing_events, Orb::Internal::Type::Boolean

          # @!attribute reverted_at
          #   The time at which this backfill was reverted.
          #
          #   @return [Time, nil]
          required :reverted_at, Time, nil?: true

          # @!attribute status
          #   The status of the backfill.
          #
          #   @return [Symbol, Orb::Models::Webhooks::BackfillReflectedStandardWebhookEvent::Backfill::Status]
          required :status, enum: -> { Orb::Webhooks::BackfillReflectedStandardWebhookEvent::Backfill::Status }

          # @!attribute timeframe_end
          #
          #   @return [Time]
          required :timeframe_end, Time

          # @!attribute timeframe_start
          #
          #   @return [Time]
          required :timeframe_start, Time

          # @!attribute deprecation_filter
          #   A boolean
          #   [computed property](/extensibility/advanced-metrics#computed-properties) used to
          #   filter the set of events to deprecate
          #
          #   @return [String, nil]
          optional :deprecation_filter, String, nil?: true

          # @!method initialize(id:, close_time:, created_at:, customer_id:, events_ingested:, replace_existing_events:, reverted_at:, status:, timeframe_end:, timeframe_start:, deprecation_filter: nil)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Webhooks::BackfillReflectedStandardWebhookEvent::Backfill} for
          #   more details.
          #
          #   A backfill represents an update to historical usage data, adding or replacing
          #   events in a timeframe.
          #
          #   @param id [String]
          #
          #   @param close_time [Time, nil] If in the future, the time at which the backfill will automatically close. If in
          #
          #   @param created_at [Time]
          #
          #   @param customer_id [String, nil] The Orb-generated ID of the customer to which this backfill is scoped. If `null`
          #
          #   @param events_ingested [Integer] The number of events ingested in this backfill.
          #
          #   @param replace_existing_events [Boolean] If `true`, existing events in the backfill's timeframe will be replaced with the
          #
          #   @param reverted_at [Time, nil] The time at which this backfill was reverted.
          #
          #   @param status [Symbol, Orb::Models::Webhooks::BackfillReflectedStandardWebhookEvent::Backfill::Status] The status of the backfill.
          #
          #   @param timeframe_end [Time]
          #
          #   @param timeframe_start [Time]
          #
          #   @param deprecation_filter [String, nil] A boolean [computed property](/extensibility/advanced-metrics#computed-propertie

          # The status of the backfill.
          #
          # @see Orb::Models::Webhooks::BackfillReflectedStandardWebhookEvent::Backfill#status
          module Status
            extend Orb::Internal::Type::Enum

            PENDING = :pending
            REFLECTED = :reflected
            PENDING_REVERT = :pending_revert
            REVERTED = :reverted

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        #
        # @see Orb::Models::Webhooks::BackfillReflectedStandardWebhookEvent#payload_style
        module PayloadStyle
          extend Orb::Internal::Type::Enum

          EXPANDED = :expanded
          STANDARD = :standard

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The event this payload describes.
        #
        # @see Orb::Models::Webhooks::BackfillReflectedStandardWebhookEvent#type
        module Type
          extend Orb::Internal::Type::Enum

          BACKFILL_REFLECTED = :"backfill.reflected"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
