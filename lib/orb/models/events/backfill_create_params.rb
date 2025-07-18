# frozen_string_literal: true

module Orb
  module Models
    module Events
      # @see Orb::Resources::Events::Backfills#create
      class BackfillCreateParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute timeframe_end
        #   The (exclusive) end of the usage timeframe affected by this backfill. By
        #   default, Orb allows backfills up to 31 days in duration at a time. Reach out to
        #   discuss extending this limit and your use case.
        #
        #   @return [Time]
        required :timeframe_end, Time

        # @!attribute timeframe_start
        #   The (inclusive) start of the usage timeframe affected by this backfill. By
        #   default, Orb allows backfills up to 31 days in duration at a time. Reach out to
        #   discuss extending this limit and your use case.
        #
        #   @return [Time]
        required :timeframe_start, Time

        # @!attribute close_time
        #   The time at which no more events will be accepted for this backfill. The
        #   backfill will automatically begin reflecting throughout Orb at the close time.
        #   If not specified, it will default to 1 day after the creation of the backfill.
        #
        #   @return [Time, nil]
        optional :close_time, Time, nil?: true

        # @!attribute customer_id
        #   The Orb-generated ID of the customer to which this backfill is scoped. Omitting
        #   this field will scope the backfill to all customers.
        #
        #   @return [String, nil]
        optional :customer_id, String, nil?: true

        # @!attribute deprecation_filter
        #   A boolean
        #   [computed property](/extensibility/advanced-metrics#computed-properties) used to
        #   filter the set of events to deprecate
        #
        #   @return [String, nil]
        optional :deprecation_filter, String, nil?: true

        # @!attribute external_customer_id
        #   The external customer ID of the customer to which this backfill is scoped.
        #   Omitting this field will scope the backfill to all customers.
        #
        #   @return [String, nil]
        optional :external_customer_id, String, nil?: true

        # @!attribute replace_existing_events
        #   If true, replaces all existing events in the timeframe with the newly ingested
        #   events. If false, adds the newly ingested events to the existing events.
        #
        #   @return [Boolean, nil]
        optional :replace_existing_events, Orb::Internal::Type::Boolean

        # @!method initialize(timeframe_end:, timeframe_start:, close_time: nil, customer_id: nil, deprecation_filter: nil, external_customer_id: nil, replace_existing_events: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Events::BackfillCreateParams} for more details.
        #
        #   @param timeframe_end [Time] The (exclusive) end of the usage timeframe affected by this backfill. By default
        #
        #   @param timeframe_start [Time] The (inclusive) start of the usage timeframe affected by this backfill. By defau
        #
        #   @param close_time [Time, nil] The time at which no more events will be accepted for this backfill. The backfil
        #
        #   @param customer_id [String, nil] The Orb-generated ID of the customer to which this backfill is scoped. Omitting
        #
        #   @param deprecation_filter [String, nil] A boolean [computed property](/extensibility/advanced-metrics#computed-propertie
        #
        #   @param external_customer_id [String, nil] The external customer ID of the customer to which this backfill is scoped. Omitt
        #
        #   @param replace_existing_events [Boolean] If true, replaces all existing events in the timeframe with the newly ingested e
        #
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
