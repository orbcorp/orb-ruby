# typed: strong

module Orb
  module Models
    EventVolumes = Events::EventVolumes

    module Events
      class EventVolumes < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Events::EventVolumes, Orb::Internal::AnyHash)
          end

        sig { returns(T::Array[Orb::Events::EventVolumes::Data]) }
        attr_accessor :data

        sig do
          params(
            data: T::Array[Orb::Events::EventVolumes::Data::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns({ data: T::Array[Orb::Events::EventVolumes::Data] })
        end
        def to_hash
        end

        class Data < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Events::EventVolumes::Data, Orb::Internal::AnyHash)
            end

          # The number of events ingested with a timestamp between the timeframe
          sig { returns(Integer) }
          attr_accessor :count

          sig { returns(Time) }
          attr_accessor :timeframe_end

          sig { returns(Time) }
          attr_accessor :timeframe_start

          # An EventVolume contains the event volume ingested in an hourly window. The
          # timestamp used for the aggregation is the `timestamp` datetime field on events.
          sig do
            params(
              count: Integer,
              timeframe_end: Time,
              timeframe_start: Time
            ).returns(T.attached_class)
          end
          def self.new(
            # The number of events ingested with a timestamp between the timeframe
            count:,
            timeframe_end:,
            timeframe_start:
          )
          end

          sig do
            override.returns(
              { count: Integer, timeframe_end: Time, timeframe_start: Time }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
