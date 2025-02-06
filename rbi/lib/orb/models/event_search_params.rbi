# typed: strong

module Orb
  module Models
    class EventSearchParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T::Array[String]) }
      attr_accessor :event_ids

      sig { returns(T.nilable(Time)) }
      attr_accessor :timeframe_end

      sig { returns(T.nilable(Time)) }
      attr_accessor :timeframe_start

      sig do
        params(
          event_ids: T::Array[String],
          timeframe_end: T.nilable(Time),
          timeframe_start: T.nilable(Time),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(event_ids:, timeframe_end: nil, timeframe_start: nil, request_options: {}); end

      sig do
        override.returns(
          {
            event_ids: T::Array[String],
            timeframe_end: T.nilable(Time),
            timeframe_start: T.nilable(Time),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash; end
    end
  end
end
