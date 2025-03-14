# typed: strong

module Orb
  module Models
    module Events
      class VolumeListParams < Orb::BaseModel
        extend Orb::RequestParameters::Converter
        include Orb::RequestParameters

        # The start of the timeframe, inclusive, in which to return event volume. All
        #   datetime values are converted to UTC time. If the specified time isn't
        #   hour-aligned, the response includes the event volume count for the hour the time
        #   falls in.
        sig { returns(Time) }
        def timeframe_start
        end

        sig { params(_: Time).returns(Time) }
        def timeframe_start=(_)
        end

        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        #   from the initial request.
        sig { returns(T.nilable(String)) }
        def cursor
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def cursor=(_)
        end

        # The number of items to fetch. Defaults to 20.
        sig { returns(T.nilable(Integer)) }
        def limit
        end

        sig { params(_: Integer).returns(Integer) }
        def limit=(_)
        end

        # The end of the timeframe, exclusive, in which to return event volume. If not
        #   specified, the current time is used. All datetime values are converted to UTC
        #   time.If the specified time isn't hour-aligned, the response includes the event
        #   volumecount for the hour the time falls in.
        sig { returns(T.nilable(Time)) }
        def timeframe_end
        end

        sig { params(_: Time).returns(Time) }
        def timeframe_end=(_)
        end

        sig do
          params(
            timeframe_start: Time,
            cursor: T.nilable(String),
            limit: Integer,
            timeframe_end: Time,
            request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(timeframe_start:, cursor: nil, limit: nil, timeframe_end: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                timeframe_start: Time,
                cursor: T.nilable(String),
                limit: Integer,
                timeframe_end: Time,
                request_options: Orb::RequestOptions
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
