# typed: strong

module Orb
  module Models
    module Events
      class EventVolumes < Orb::Internal::Type::BaseModel
        sig { returns(T::Array[Orb::Models::Events::EventVolumes::Data]) }
        attr_accessor :data

        sig do
          params(data: T::Array[T.any(Orb::Models::Events::EventVolumes::Data, Orb::Internal::AnyHash)])
            .returns(T.attached_class)
        end
        def self.new(data:); end

        sig { override.returns({data: T::Array[Orb::Models::Events::EventVolumes::Data]}) }
        def to_hash; end

        class Data < Orb::Internal::Type::BaseModel
          # The number of events ingested with a timestamp between the timeframe
          sig { returns(Integer) }
          attr_accessor :count

          sig { returns(Time) }
          attr_accessor :timeframe_end

          sig { returns(Time) }
          attr_accessor :timeframe_start

          # An EventVolume contains the event volume ingested in an hourly window. The
          # timestamp used for the aggregation is the `timestamp` datetime field on events.
          sig { params(count: Integer, timeframe_end: Time, timeframe_start: Time).returns(T.attached_class) }
          def self.new(
            # The number of events ingested with a timestamp between the timeframe
            count:,
            timeframe_end:,
            timeframe_start:
          ); end
          sig { override.returns({count: Integer, timeframe_end: Time, timeframe_start: Time}) }
          def to_hash; end
        end
      end
    end

    EventVolumes = Events::EventVolumes
  end
end
