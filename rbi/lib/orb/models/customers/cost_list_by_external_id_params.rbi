# typed: strong

module Orb
  module Models
    module Customers
      class CostListByExternalIDParams < Orb::BaseModel
        extend Orb::RequestParameters::Converter
        include Orb::RequestParameters

        sig { returns(T.nilable(String)) }
        def currency
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def currency=(_)
        end

        sig { returns(T.nilable(Time)) }
        def timeframe_end
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def timeframe_end=(_)
        end

        sig { returns(T.nilable(Time)) }
        def timeframe_start
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def timeframe_start=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def view_mode
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def view_mode=(_)
        end

        sig do
          params(
            currency: T.nilable(String),
            timeframe_end: T.nilable(Time),
            timeframe_start: T.nilable(Time),
            view_mode: T.nilable(Symbol),
            request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(
          currency: nil,
          timeframe_end: nil,
          timeframe_start: nil,
          view_mode: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              currency: T.nilable(String),
              timeframe_end: T.nilable(Time),
              timeframe_start: T.nilable(Time),
              view_mode: T.nilable(Symbol),
              request_options: Orb::RequestOptions
            }
          )
        end
        def to_hash
        end

        class ViewMode < Orb::Enum
          abstract!

          PERIODIC = T.let(:periodic, T.nilable(Symbol))
          CUMULATIVE = T.let(:cumulative, T.nilable(Symbol))

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
