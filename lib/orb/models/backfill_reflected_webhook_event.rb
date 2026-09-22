# frozen_string_literal: true

module Orb
  module Models
    class BackfillReflectedWebhookEvent < Orb::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of this webhook event.
      #
      #   @return [String]
      required :id, String

      # @!attribute backfill
      #   A backfill represents an update to historical usage data, adding or replacing
      #   events in a timeframe.
      #
      #   @return [Orb::Models::BackfillReflectedWebhookEvent::Backfill]
      required :backfill, -> { Orb::BackfillReflectedWebhookEvent::Backfill }

      # @!attribute created_at
      #   The time at which this event was created, to the second.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute properties
      #
      #   @return [Object]
      required :properties, Orb::Internal::Type::Unknown

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::BackfillReflectedWebhookEvent::Type]
      required :type, enum: -> { Orb::BackfillReflectedWebhookEvent::Type }

      # @!method initialize(id:, backfill:, created_at:, properties:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::BackfillReflectedWebhookEvent} for more details.
      #
      #   Issued when a backfill is closed and its events are reflected into usage.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param backfill [Orb::Models::BackfillReflectedWebhookEvent::Backfill] A backfill represents an update to historical usage data, adding or replacing ev
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param properties [Object]
      #
      #   @param type [Symbol, Orb::Models::BackfillReflectedWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::BackfillReflectedWebhookEvent#backfill
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
        #   @return [Symbol, Orb::Models::BackfillReflectedWebhookEvent::Backfill::Status]
        required :status, enum: -> { Orb::BackfillReflectedWebhookEvent::Backfill::Status }

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
        #   {Orb::Models::BackfillReflectedWebhookEvent::Backfill} for more details.
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
        #   @param status [Symbol, Orb::Models::BackfillReflectedWebhookEvent::Backfill::Status] The status of the backfill.
        #
        #   @param timeframe_end [Time]
        #
        #   @param timeframe_start [Time]
        #
        #   @param deprecation_filter [String, nil] A boolean [computed property](/extensibility/advanced-metrics#computed-propertie

        # The status of the backfill.
        #
        # @see Orb::Models::BackfillReflectedWebhookEvent::Backfill#status
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

      # The event this payload describes.
      #
      # @see Orb::Models::BackfillReflectedWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        BACKFILL_REFLECTED = :"backfill.reflected"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
