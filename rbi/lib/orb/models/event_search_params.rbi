# typed: strong

module Orb
  module Models
    class EventSearchParams < Orb::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # This is an explicit array of IDs to filter by. Note that an event's ID is the
      #   idempotency_key that was originally used for ingestion, and this only supports
      #   events that have not been amended. Values in this array will be treated case
      #   sensitively.
      sig { returns(T::Array[String]) }
      attr_accessor :event_ids

      # The end of the timeframe, exclusive, in which to search events. If not
      #   specified, the current time is used.
      sig { returns(T.nilable(Time)) }
      attr_accessor :timeframe_end

      # The start of the timeframe, inclusive, in which to search events. If not
      #   specified, the one week ago is used.
      sig { returns(T.nilable(Time)) }
      attr_accessor :timeframe_start

      sig do
        params(
          event_ids: T::Array[String],
          timeframe_end: T.nilable(Time),
          timeframe_start: T.nilable(Time),
          request_options: T.any(Orb::RequestOptions, Orb::Internal::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(event_ids:, timeframe_end: nil, timeframe_start: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              event_ids: T::Array[String],
              timeframe_end: T.nilable(Time),
              timeframe_start: T.nilable(Time),
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
