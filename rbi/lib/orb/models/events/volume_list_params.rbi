# typed: strong

module Orb
  module Models
    module Events
      class VolumeListParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # The start of the timeframe, inclusive, in which to return event volume. All
        # datetime values are converted to UTC time. If the specified time isn't
        # hour-aligned, the response includes the event volume count for the hour the time
        # falls in.
        sig { returns(Time) }
        attr_accessor :timeframe_start

        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        # from the initial request.
        sig { returns(T.nilable(String)) }
        attr_accessor :cursor

        # The number of items to fetch. Defaults to 20.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # The end of the timeframe, exclusive, in which to return event volume. If not
        # specified, the current time is used. All datetime values are converted to UTC
        # time.If the specified time isn't hour-aligned, the response includes the event
        # volumecount for the hour the time falls in.
        sig { returns(T.nilable(Time)) }
        attr_reader :timeframe_end

        sig { params(timeframe_end: Time).void }
        attr_writer :timeframe_end

        sig do
          params(
            timeframe_start: Time,
            cursor: T.nilable(String),
            limit: Integer,
            timeframe_end: Time,
            request_options: T.any(Orb::RequestOptions, Orb::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(timeframe_start:, cursor: nil, limit: nil, timeframe_end: nil, request_options: {}); end

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
        def to_hash; end
      end
    end
  end
end
