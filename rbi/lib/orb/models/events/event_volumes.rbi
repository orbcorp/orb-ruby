# typed: strong

module Orb
  module Models
    module Events
      class EventVolumes < Orb::BaseModel
        sig { returns(T::Array[Orb::Models::Events::EventVolumes::Data]) }
        def data
        end

        sig do
          params(_: T::Array[Orb::Models::Events::EventVolumes::Data])
            .returns(T::Array[Orb::Models::Events::EventVolumes::Data])
        end
        def data=(_)
        end

        sig { params(data: T::Array[Orb::Models::Events::EventVolumes::Data]).returns(T.attached_class) }
        def self.new(data:)
        end

        sig { override.returns({data: T::Array[Orb::Models::Events::EventVolumes::Data]}) }
        def to_hash
        end

        class Data < Orb::BaseModel
          # The number of events ingested with a timestamp between the timeframe
          sig { returns(Integer) }
          def count
          end

          sig { params(_: Integer).returns(Integer) }
          def count=(_)
          end

          sig { returns(Time) }
          def timeframe_end
          end

          sig { params(_: Time).returns(Time) }
          def timeframe_end=(_)
          end

          sig { returns(Time) }
          def timeframe_start
          end

          sig { params(_: Time).returns(Time) }
          def timeframe_start=(_)
          end

          # An EventVolume contains the event volume ingested in an hourly window. The
          #   timestamp used for the aggregation is the `timestamp` datetime field on events.
          sig { params(count: Integer, timeframe_end: Time, timeframe_start: Time).returns(T.attached_class) }
          def self.new(count:, timeframe_end:, timeframe_start:)
          end

          sig { override.returns({count: Integer, timeframe_end: Time, timeframe_start: Time}) }
          def to_hash
          end
        end
      end
    end

    EventVolumes = Events::EventVolumes
  end
end
