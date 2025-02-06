# typed: strong

module Orb
  module Models
    module Customers
      class CostListByExternalIDParams < Orb::BaseModel
        extend Orb::RequestParameters::Converter
        include Orb::RequestParameters

        Shape = T.type_alias do
          T.all(
            {
              currency: T.nilable(String),
              timeframe_end: T.nilable(Time),
              timeframe_start: T.nilable(Time),
              view_mode: T.nilable(Symbol)
            },
            Orb::RequestParameters::Shape
          )
        end

        sig { returns(T.nilable(String)) }
        attr_accessor :currency

        sig { returns(T.nilable(Time)) }
        attr_accessor :timeframe_end

        sig { returns(T.nilable(Time)) }
        attr_accessor :timeframe_start

        sig { returns(T.nilable(Symbol)) }
        attr_accessor :view_mode

        sig do
          params(
            currency: T.nilable(String),
            timeframe_end: T.nilable(Time),
            timeframe_start: T.nilable(Time),
            view_mode: T.nilable(Symbol),
            request_options: Orb::RequestOpts
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

        sig { returns(Orb::Models::Customers::CostListByExternalIDParams::Shape) }
        def to_h; end

        class ViewMode < Orb::Enum
          abstract!

          PERIODIC = T.let(:periodic, T.nilable(Symbol))
          CUMULATIVE = T.let(:cumulative, T.nilable(Symbol))

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end
    end
  end
end
