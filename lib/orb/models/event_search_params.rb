# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Events#search
    class EventSearchParams < Orb::Internal::Type::BaseModel
      # @!parse
      #   extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute event_ids
      #   This is an explicit array of IDs to filter by. Note that an event's ID is the
      #   idempotency_key that was originally used for ingestion, and this only supports
      #   events that have not been amended. Values in this array will be treated case
      #   sensitively.
      #
      #   @return [Array<String>]
      required :event_ids, Orb::Internal::Type::ArrayOf[String]

      # @!attribute timeframe_end
      #   The end of the timeframe, exclusive, in which to search events. If not
      #   specified, the current time is used.
      #
      #   @return [Time, nil]
      optional :timeframe_end, Time, nil?: true

      # @!attribute timeframe_start
      #   The start of the timeframe, inclusive, in which to search events. If not
      #   specified, the one week ago is used.
      #
      #   @return [Time, nil]
      optional :timeframe_start, Time, nil?: true

      # @!method initialize(event_ids:, timeframe_end: nil, timeframe_start: nil, request_options: {})
      #   @param event_ids [Array<String>]
      #   @param timeframe_end [Time, nil]
      #   @param timeframe_start [Time, nil]
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
