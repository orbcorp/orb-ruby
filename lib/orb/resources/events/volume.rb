# frozen_string_literal: true

module Orb
  module Resources
    class Events
      class Volume
        # Some parameter documentations has been truncated, see
        # {Orb::Models::Events::VolumeListParams} for more details.
        #
        # This endpoint returns the event volume for an account in a
        # [paginated list format](/api-reference/pagination).
        #
        # The event volume is aggregated by the hour and the
        # [timestamp](/api-reference/event/ingest-events) field is used to determine which
        # hour an event is associated with. Note, this means that late-arriving events
        # increment the volume count for the hour window the timestamp is in, not the
        # latest hour window.
        #
        # Each item in the response contains the count of events aggregated by the hour
        # where the start and end time are hour-aligned and in UTC. When a specific
        # timestamp is passed in for either start or end time, the response includes the
        # hours the timestamp falls in.
        #
        # @overload list(timeframe_start:, cursor: nil, limit: nil, timeframe_end: nil, request_options: {})
        #
        # @param timeframe_start [Time] The start of the timeframe, inclusive, in which to return event volume. All date
        #
        # @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
        #
        # @param limit [Integer] The number of items to fetch. Defaults to 20.
        #
        # @param timeframe_end [Time] The end of the timeframe, exclusive, in which to return event volume. If not spe
        #
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Events::EventVolumes]
        #
        # @see Orb::Models::Events::VolumeListParams
        def list(params)
          parsed, options = Orb::Events::VolumeListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "events/volume",
            query: parsed,
            model: Orb::Events::EventVolumes,
            options: options
          )
        end

        # @api private
        #
        # @param client [Orb::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
