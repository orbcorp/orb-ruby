# frozen_string_literal: true

module Orb
  module Models
    class EventSearchParams < Orb::BaseModel
      # @!parse
      #   extend Orb::Type::RequestParameters::Converter
      include Orb::RequestParameters

      # @!attribute event_ids
      #   This is an explicit array of IDs to filter by. Note that an event's ID is the
      #     idempotency_key that was originally used for ingestion, and this only supports
      #     events that have not been amended. Values in this array will be treated case
      #     sensitively.
      #
      #   @return [Array<String>]
      required :event_ids, Orb::ArrayOf[String]

      # @!attribute timeframe_end
      #   The end of the timeframe, exclusive, in which to search events. If not
      #     specified, the current time is used.
      #
      #   @return [Time, nil]
      optional :timeframe_end, Time, nil?: true

      # @!attribute timeframe_start
      #   The start of the timeframe, inclusive, in which to search events. If not
      #     specified, the one week ago is used.
      #
      #   @return [Time, nil]
      optional :timeframe_start, Time, nil?: true

      # @!parse
      #   # @param event_ids [Array<String>]
      #   # @param timeframe_end [Time, nil]
      #   # @param timeframe_start [Time, nil]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(event_ids:, timeframe_end: nil, timeframe_start: nil, request_options: {}, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
