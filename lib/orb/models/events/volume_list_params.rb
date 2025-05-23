# frozen_string_literal: true

module Orb
  module Models
    module Events
      # @see Orb::Resources::Events::Volume#list
      class VolumeListParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute timeframe_start
        #   The start of the timeframe, inclusive, in which to return event volume. All
        #   datetime values are converted to UTC time. If the specified time isn't
        #   hour-aligned, the response includes the event volume count for the hour the time
        #   falls in.
        #
        #   @return [Time]
        required :timeframe_start, Time

        # @!attribute cursor
        #   Cursor for pagination. This can be populated by the `next_cursor` value returned
        #   from the initial request.
        #
        #   @return [String, nil]
        optional :cursor, String, nil?: true

        # @!attribute limit
        #   The number of items to fetch. Defaults to 20.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute timeframe_end
        #   The end of the timeframe, exclusive, in which to return event volume. If not
        #   specified, the current time is used. All datetime values are converted to UTC
        #   time.If the specified time isn't hour-aligned, the response includes the event
        #   volumecount for the hour the time falls in.
        #
        #   @return [Time, nil]
        optional :timeframe_end, Time

        # @!method initialize(timeframe_start:, cursor: nil, limit: nil, timeframe_end: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Events::VolumeListParams} for more details.
        #
        #   @param timeframe_start [Time] The start of the timeframe, inclusive, in which to return event volume. All date
        #
        #   @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
        #
        #   @param limit [Integer] The number of items to fetch. Defaults to 20.
        #
        #   @param timeframe_end [Time] The end of the timeframe, exclusive, in which to return event volume. If not spe
        #
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
