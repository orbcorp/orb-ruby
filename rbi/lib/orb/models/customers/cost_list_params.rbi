# typed: strong

module Orb
  module Models
    module Customers
      class CostListParams < Orb::BaseModel
        extend Orb::Type::RequestParameters::Converter
        include Orb::RequestParameters

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
        #   period, or incremental day-by-day costs. If your customer has minimums or
        #   discounts, it's strongly recommended that you use the default cumulative
        #   behavior.
        sig { returns(T.nilable(Orb::Models::Customers::CostListParams::ViewMode::OrSymbol)) }
        attr_accessor :view_mode

        sig do
          params(
            currency: T.nilable(String),
            timeframe_end: T.nilable(Time),
            timeframe_start: T.nilable(Time),
            view_mode: T.nilable(Orb::Models::Customers::CostListParams::ViewMode::OrSymbol),
            request_options: T.any(Orb::RequestOptions, Orb::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          currency: nil,
          timeframe_end: nil,
          timeframe_start: nil,
          view_mode: nil,
          request_options: {}
        )
        end

        sig do
          override
            .returns(
              {
                currency: T.nilable(String),
                timeframe_end: T.nilable(Time),
                timeframe_start: T.nilable(Time),
                view_mode: T.nilable(Orb::Models::Customers::CostListParams::ViewMode::OrSymbol),
                request_options: Orb::RequestOptions
              }
            )
        end
        def to_hash
        end

        # Controls whether Orb returns cumulative costs since the start of the billing
        #   period, or incremental day-by-day costs. If your customer has minimums or
        #   discounts, it's strongly recommended that you use the default cumulative
        #   behavior.
        module ViewMode
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Customers::CostListParams::ViewMode) }
          OrSymbol = T.type_alias { T.any(Symbol, Orb::Models::Customers::CostListParams::ViewMode::TaggedSymbol) }

          PERIODIC = T.let(:periodic, Orb::Models::Customers::CostListParams::ViewMode::TaggedSymbol)
          CUMULATIVE = T.let(:cumulative, Orb::Models::Customers::CostListParams::ViewMode::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Customers::CostListParams::ViewMode::TaggedSymbol]) }
          def self.values
          end
        end
      end
    end
  end
end
