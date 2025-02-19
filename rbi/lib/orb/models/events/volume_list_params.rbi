# typed: strong

module Orb
  module Models
    module Events
      class VolumeListParams < Orb::BaseModel
        extend Orb::RequestParameters::Converter
        include Orb::RequestParameters

        sig { returns(Time) }
        def timeframe_start
        end

        sig { params(_: Time).returns(Time) }
        def timeframe_start=(_)
        end

        sig { returns(T.nilable(String)) }
        def cursor
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def cursor=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def limit
        end

        sig { params(_: Integer).returns(Integer) }
        def limit=(_)
        end

        sig { returns(T.nilable(Time)) }
        def timeframe_end
        end

        sig { params(_: Time).returns(Time) }
        def timeframe_end=(_)
        end

        sig do
          params(
            timeframe_start: Time,
            cursor: T.nilable(String),
            limit: Integer,
            timeframe_end: Time,
            request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(timeframe_start:, cursor: nil, limit: nil, timeframe_end: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                timeframe_start: Time,
                cursor: T.nilable(String),
                limit: Integer,
                timeframe_end: Time,
                request_options: Orb::RequestOptions
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
