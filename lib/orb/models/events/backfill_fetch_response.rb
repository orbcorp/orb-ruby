# frozen_string_literal: true

module Orb
  module Models
    module Events
      class BackfillFetchResponse < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute close_time
        #   If in the future, the time at which the backfill will automatically close. If in
        #     the past, the time at which the backfill was closed.
        #
        #   @return [Time, nil]
        required :close_time, Time, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute customer_id
        #   The Orb-generated ID of the customer to which this backfill is scoped. If
        #     `null`, this backfill is scoped to all customers.
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
        #     newly ingested events associated with the backfill. If `false`, newly ingested
        #     events will be added to the existing events.
        #
        #   @return [Boolean]
        required :replace_existing_events, Orb::BooleanModel

        # @!attribute reverted_at
        #   The time at which this backfill was reverted.
        #
        #   @return [Time, nil]
        required :reverted_at, Time, nil?: true

        # @!attribute status
        #   The status of the backfill.
        #
        #   @return [Symbol, Orb::Models::Events::BackfillFetchResponse::Status]
        required :status, enum: -> { Orb::Models::Events::BackfillFetchResponse::Status }

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
        #     [computed property](/extensibility/advanced-metrics#computed-properties) used to
        #     filter the set of events to deprecate
        #
        #   @return [String, nil]
        optional :deprecation_filter, String, nil?: true

        # @!parse
        #   # A backfill represents an update to historical usage data, adding or replacing
        #   #   events in a timeframe.
        #   #
        #   # @param id [String]
        #   # @param close_time [Time, nil]
        #   # @param created_at [Time]
        #   # @param customer_id [String, nil]
        #   # @param events_ingested [Integer]
        #   # @param replace_existing_events [Boolean]
        #   # @param reverted_at [Time, nil]
        #   # @param status [Symbol, Orb::Models::Events::BackfillFetchResponse::Status]
        #   # @param timeframe_end [Time]
        #   # @param timeframe_start [Time]
        #   # @param deprecation_filter [String, nil]
        #   #
        #   def initialize(
        #     id:,
        #     close_time:,
        #     created_at:,
        #     customer_id:,
        #     events_ingested:,
        #     replace_existing_events:,
        #     reverted_at:,
        #     status:,
        #     timeframe_end:,
        #     timeframe_start:,
        #     deprecation_filter: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # The status of the backfill.
        #
        # @see Orb::Models::Events::BackfillFetchResponse#status
        module Status
          extend Orb::Enum

          PENDING = :pending
          REFLECTED = :reflected
          PENDING_REVERT = :pending_revert
          REVERTED = :reverted

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
