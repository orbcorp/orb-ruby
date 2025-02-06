# typed: strong

module Orb
  module Models
    EventVolumes = T.type_alias { Events::EventVolumes }

    module Events
      class EventVolumes < Orb::BaseModel
        Shape = T.type_alias { {data: T::Array[Orb::Models::Events::EventVolumes::Data]} }

        sig { returns(T::Array[Orb::Models::Events::EventVolumes::Data]) }
        attr_accessor :data

        sig { params(data: T::Array[Orb::Models::Events::EventVolumes::Data]).void }
        def initialize(data:); end

        sig { returns(Orb::Models::Events::EventVolumes::Shape) }
        def to_h; end

        class Data < Orb::BaseModel
          Shape = T.type_alias { {count: Integer, timeframe_end: Time, timeframe_start: Time} }

          sig { returns(Integer) }
          attr_accessor :count

          sig { returns(Time) }
          attr_accessor :timeframe_end

          sig { returns(Time) }
          attr_accessor :timeframe_start

          sig { params(count: Integer, timeframe_end: Time, timeframe_start: Time).void }
          def initialize(count:, timeframe_end:, timeframe_start:); end

          sig { returns(Orb::Models::Events::EventVolumes::Data::Shape) }
          def to_h; end
        end
      end
    end
  end
end
