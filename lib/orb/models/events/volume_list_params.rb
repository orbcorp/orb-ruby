# frozen_string_literal: true

module Orb
  module Models
    module Events
      # @see Orb::Resources::Events::Volume#list
      class VolumeListParams < Orb::Internal::Type::BaseModel
        # @!parse
        #   extend Orb::Internal::Type::RequestParameters::Converter
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

        # @!attribute [r] limit
        #   The number of items to fetch. Defaults to 20.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :limit

        # @!attribute [r] timeframe_end
        #   The end of the timeframe, exclusive, in which to return event volume. If not
        #   specified, the current time is used. All datetime values are converted to UTC
        #   time.If the specified time isn't hour-aligned, the response includes the event
        #   volumecount for the hour the time falls in.
        #
        #   @return [Time, nil]
        optional :timeframe_end, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :timeframe_end

        # @!parse
        #   # @param timeframe_start [Time]
        #   # @param cursor [String, nil]
        #   # @param limit [Integer]
        #   # @param timeframe_end [Time]
        #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(timeframe_start:, cursor: nil, limit: nil, timeframe_end: nil, request_options: {}, **) = super

        # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void
      end
    end
  end
end
