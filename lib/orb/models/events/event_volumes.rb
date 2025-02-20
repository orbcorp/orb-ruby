# frozen_string_literal: true

module Orb
  module Models
    module Events
      class EventVolumes < Orb::BaseModel
        # @!attribute data
        #
        #   @return [Array<Orb::Models::Events::EventVolumes::Data>]
        required :data, -> { Orb::ArrayOf[Orb::Models::Events::EventVolumes::Data] }

        # @!parse
        #   # @param data [Array<Orb::Models::Events::EventVolumes::Data>]
        #   #
        #   def initialize(data:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void

        class Data < Orb::BaseModel
          # @!attribute count
          #   The number of events ingested with a timestamp between the timeframe
          #
          #   @return [Integer]
          required :count, Integer

          # @!attribute timeframe_end
          #
          #   @return [Time]
          required :timeframe_end, Time

          # @!attribute timeframe_start
          #
          #   @return [Time]
          required :timeframe_start, Time

          # @!parse
          #   # An EventVolume contains the event volume ingested in an hourly window. The
          #   #   timestamp used for the aggregation is the `timestamp` datetime field on events.
          #   #
          #   # @param count [Integer]
          #   # @param timeframe_end [Time]
          #   # @param timeframe_start [Time]
          #   #
          #   def initialize(count:, timeframe_end:, timeframe_start:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end
    end

    EventVolumes = Events::EventVolumes
  end
end
