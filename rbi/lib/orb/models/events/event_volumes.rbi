# typed: strong

module Orb
  module Models
    EventVolumes = T.type_alias { Events::EventVolumes }

    module Events
      class EventVolumes < Orb::BaseModel
        sig { returns(T::Array[Orb::Models::Events::EventVolumes::Data]) }
        def data
        end

        sig do
          params(_: T::Array[Orb::Models::Events::EventVolumes::Data]).returns(T::Array[Orb::Models::Events::EventVolumes::Data])
        end
        def data=(_)
        end

        sig { params(data: T::Array[Orb::Models::Events::EventVolumes::Data]).void }
        def initialize(data:)
        end

        sig { override.returns({data: T::Array[Orb::Models::Events::EventVolumes::Data]}) }
        def to_hash
        end

        class Data < Orb::BaseModel
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

          sig { params(count: Integer, timeframe_end: Time, timeframe_start: Time).void }
          def initialize(count:, timeframe_end:, timeframe_start:)
          end

          sig { override.returns({count: Integer, timeframe_end: Time, timeframe_start: Time}) }
          def to_hash
          end
        end
      end
    end
  end
end
