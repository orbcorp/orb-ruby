# typed: strong

module Orb
  module Models
    module Events
      class VolumeListParams < Orb::BaseModel
        extend Orb::RequestParameters::Converter
        include Orb::RequestParameters

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
            request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(timeframe_start:, cursor: nil, limit: nil, timeframe_end: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              timeframe_start: Time,
              cursor: T.nilable(String),
              limit: Integer,
              timeframe_end: Time,
              request_options: Orb::RequestOptions
            }
          )
        end
        def to_hash; end
      end
    end
  end
end
