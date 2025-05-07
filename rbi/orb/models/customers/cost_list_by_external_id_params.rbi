# typed: strong

module Orb
  module Models
    module Customers
      class CostListByExternalIDParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        OrHash = T.type_alias { T.any(T.self_type, Orb::Internal::AnyHash) }

        # The currency or custom pricing unit to use.
        sig { returns(T.nilable(String)) }
        attr_accessor :currency

        # Costs returned are exclusive of `timeframe_end`.
        sig { returns(T.nilable(Time)) }
        attr_accessor :timeframe_end

        # Costs returned are inclusive of `timeframe_start`.
        sig { returns(T.nilable(Time)) }
        attr_accessor :timeframe_start

        # Controls whether Orb returns cumulative costs since the start of the billing
        # period, or incremental day-by-day costs. If your customer has minimums or
        # discounts, it's strongly recommended that you use the default cumulative
        # behavior.
        sig do
          returns(
            T.nilable(
              Orb::Customers::CostListByExternalIDParams::ViewMode::OrSymbol
            )
          )
        end
        attr_accessor :view_mode

        sig do
          params(
            currency: T.nilable(String),
            timeframe_end: T.nilable(Time),
            timeframe_start: T.nilable(Time),
            view_mode:
              T.nilable(
                Orb::Customers::CostListByExternalIDParams::ViewMode::OrSymbol
              ),
            request_options: Orb::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The currency or custom pricing unit to use.
          currency: nil,
          # Costs returned are exclusive of `timeframe_end`.
          timeframe_end: nil,
          # Costs returned are inclusive of `timeframe_start`.
          timeframe_start: nil,
          # Controls whether Orb returns cumulative costs since the start of the billing
          # period, or incremental day-by-day costs. If your customer has minimums or
          # discounts, it's strongly recommended that you use the default cumulative
          # behavior.
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
              view_mode:
                T.nilable(
                  Orb::Customers::CostListByExternalIDParams::ViewMode::OrSymbol
                ),
              request_options: Orb::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Controls whether Orb returns cumulative costs since the start of the billing
        # period, or incremental day-by-day costs. If your customer has minimums or
        # discounts, it's strongly recommended that you use the default cumulative
        # behavior.
        module ViewMode
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Customers::CostListByExternalIDParams::ViewMode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PERIODIC =
            T.let(
              :periodic,
              Orb::Customers::CostListByExternalIDParams::ViewMode::TaggedSymbol
            )
          CUMULATIVE =
            T.let(
              :cumulative,
              Orb::Customers::CostListByExternalIDParams::ViewMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Customers::CostListByExternalIDParams::ViewMode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
