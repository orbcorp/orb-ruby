# typed: strong

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
        sig do
          params(
            timeframe_start: Time,
            cursor: T.nilable(String),
            limit: Integer,
            timeframe_end: Time,
            request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Internal::AnyHash))
          )
            .returns(Orb::Models::Events::EventVolumes)
        end
        def list(
          # The start of the timeframe, inclusive, in which to return event volume. All
          #   datetime values are converted to UTC time. If the specified time isn't
          #   hour-aligned, the response includes the event volume count for the hour the time
          #   falls in.
          timeframe_start:,
          # Cursor for pagination. This can be populated by the `next_cursor` value returned
          #   from the initial request.
          cursor: nil,
          # The number of items to fetch. Defaults to 20.
          limit: nil,
          # The end of the timeframe, exclusive, in which to return event volume. If not
          #   specified, the current time is used. All datetime values are converted to UTC
          #   time.If the specified time isn't hour-aligned, the response includes the event
          #   volumecount for the hour the time falls in.
          timeframe_end: nil,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Orb::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
