# frozen_string_literal: true

module Orb
  module Resources
    class Events
      class Volume
        # This endpoint returns the event volume for an account in a
        #   [paginated list format](/api-reference/pagination).
        #
        #   The event volume is aggregated by the hour and the
        #   [timestamp](/api-reference/event/ingest-events) field is used to determine which
        #   hour an event is associated with. Note, this means that late-arriving events
        #   increment the volume count for the hour window the timestamp is in, not the
        #   latest hour window.
        #
        #   Each item in the response contains the count of events aggregated by the hour
        #   where the start and end time are hour-aligned and in UTC. When a specific
        #   timestamp is passed in for either start or end time, the response includes the
        #   hours the timestamp falls in.
        #
        # @param params [Orb::Models::Events::VolumeListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Time] :timeframe_start The start of the timeframe, inclusive, in which to return event volume. All
        #     datetime values are converted to UTC time. If the specified time isn't
        #     hour-aligned, the response includes the event volume count for the hour the time
        #     falls in.
        #
        #   @option params [String, nil] :cursor Cursor for pagination. This can be populated by the `next_cursor` value returned
        #     from the initial request.
        #
        #   @option params [Integer] :limit The number of items to fetch. Defaults to 20.
        #
        #   @option params [Time] :timeframe_end The end of the timeframe, exclusive, in which to return event volume. If not
        #     specified, the current time is used. All datetime values are converted to UTC
        #     time.If the specified time isn't hour-aligned, the response includes the event
        #     volumecount for the hour the time falls in.
        #
        #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Orb::Models::Events::EventVolumes]
        def list(params)
          parsed, options = Orb::Models::Events::VolumeListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "events/volume",
            query: parsed,
            model: Orb::Models::Events::EventVolumes,
            options: options
          )
        end

        # @param client [Orb::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
