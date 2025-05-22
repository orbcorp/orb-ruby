# frozen_string_literal: true

module Orb
  module Models
    module Events
      # @see Orb::Resources::Events::Volume#list
      class EventVolumes < Orb::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Orb::Models::Events::EventVolumes::Data>]
        required :data, -> { Orb::Internal::Type::ArrayOf[Orb::Events::EventVolumes::Data] }

        # @!method initialize(data:)
        #   @param data [Array<Orb::Models::Events::EventVolumes::Data>]

        class Data < Orb::Internal::Type::BaseModel
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

          # @!method initialize(count:, timeframe_end:, timeframe_start:)
          #   An EventVolume contains the event volume ingested in an hourly window. The
          #   timestamp used for the aggregation is the `timestamp` datetime field on events.
          #
          #   @param count [Integer] The number of events ingested with a timestamp between the timeframe
          #
          #   @param timeframe_end [Time]
          #
          #   @param timeframe_start [Time]
        end
      end
    end

    EventVolumes = Events::EventVolumes
  end
end
