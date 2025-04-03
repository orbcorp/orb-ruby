# frozen_string_literal: true

module Orb
  module Models
    module Events
      # @see Orb::Resources::Events::Backfills#create
      class BackfillCreateParams < Orb::Internal::Type::BaseModel
        # @!parse
        #   extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute timeframe_end
        #   The (exclusive) end of the usage timeframe affected by this backfill. By
        #     default, Orb allows backfills up to 10 days in duration at a time. Reach out to
        #     discuss extending this limit and your use case.
        #
        #   @return [Time]
        required :timeframe_end, Time

        # @!attribute timeframe_start
        #   The (inclusive) start of the usage timeframe affected by this backfill. By
        #     default, Orb allows backfills up to 10 days in duration at a time. Reach out to
        #     discuss extending this limit and your use case.
        #
        #   @return [Time]
        required :timeframe_start, Time

        # @!attribute close_time
        #   The time at which no more events will be accepted for this backfill. The
        #     backfill will automatically begin reflecting throughout Orb at the close time.
        #     If not specified, it will default to 1 day after the creation of the backfill.
        #
        #   @return [Time, nil]
        optional :close_time, Time, nil?: true

        # @!attribute customer_id
        #   The Orb-generated ID of the customer to which this backfill is scoped. Omitting
        #     this field will scope the backfill to all customers.
        #
        #   @return [String, nil]
        optional :customer_id, String, nil?: true

        # @!attribute deprecation_filter
        #   A boolean
        #     [computed property](/extensibility/advanced-metrics#computed-properties) used to
        #     filter the set of events to deprecate
        #
        #   @return [String, nil]
        optional :deprecation_filter, String, nil?: true

        # @!attribute external_customer_id
        #   The external customer ID of the customer to which this backfill is scoped.
        #     Omitting this field will scope the backfill to all customers.
        #
        #   @return [String, nil]
        optional :external_customer_id, String, nil?: true

        # @!attribute [r] replace_existing_events
        #   If true, replaces all existing events in the timeframe with the newly ingested
        #     events. If false, adds the newly ingested events to the existing events.
        #
        #   @return [Boolean, nil]
        optional :replace_existing_events, Orb::Internal::Type::BooleanModel

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :replace_existing_events

        # @!parse
        #   # @param timeframe_end [Time]
        #   # @param timeframe_start [Time]
        #   # @param close_time [Time, nil]
        #   # @param customer_id [String, nil]
        #   # @param deprecation_filter [String, nil]
        #   # @param external_customer_id [String, nil]
        #   # @param replace_existing_events [Boolean]
        #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     timeframe_end:,
        #     timeframe_start:,
        #     close_time: nil,
        #     customer_id: nil,
        #     deprecation_filter: nil,
        #     external_customer_id: nil,
        #     replace_existing_events: nil,
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void
      end
    end
  end
end
