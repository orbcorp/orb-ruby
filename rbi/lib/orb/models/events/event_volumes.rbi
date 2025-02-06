# typed: strong

module Orb
  module Models
    EventVolumes = T.type_alias { Events::EventVolumes }

    module Events
      class EventVolumes < Orb::BaseModel
        sig { returns(T::Array[Orb::Models::Events::EventVolumes::Data]) }
        attr_accessor :data

        sig { params(data: T::Array[Orb::Models::Events::EventVolumes::Data]).void }
        def initialize(data:)
        end

        sig { override.returns({data: T::Array[Orb::Models::Events::EventVolumes::Data]}) }
        def to_hash
        end

        class Data < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :count

          sig { returns(Time) }
          attr_accessor :timeframe_end

          sig { returns(Time) }
          attr_accessor :timeframe_start

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
