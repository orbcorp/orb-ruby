# typed: strong

module Orb
  module Models
    module Events
      class VolumeListParams < Orb::BaseModel
        extend Orb::RequestParameters::Converter
        include Orb::RequestParameters

        Shape = T.type_alias do
          T.all(
            {timeframe_start: Time, cursor: T.nilable(String), limit: Integer, timeframe_end: Time},
            Orb::RequestParameters::Shape
          )
        end

        sig { returns(Time) }
        attr_accessor :timeframe_start

        sig { returns(T.nilable(String)) }
        attr_accessor :cursor

        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        sig { returns(T.nilable(Time)) }
        attr_reader :timeframe_end

        sig { params(timeframe_end: Time).void }
        attr_writer :timeframe_end

        sig do
          params(
            timeframe_start: Time,
            cursor: T.nilable(String),
            limit: Integer,
            timeframe_end: Time,
            request_options: Orb::RequestOpts
          ).void
        end
        def initialize(timeframe_start:, cursor: nil, limit: nil, timeframe_end: nil, request_options: {})
        end

        sig { returns(Orb::Models::Events::VolumeListParams::Shape) }
        def to_h; end
      end
    end
  end
end
