# typed: strong

module Orb
  module Models
    class SubscriptionFetchCostsParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

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
      sig { returns(T.nilable(Orb::Models::SubscriptionFetchCostsParams::ViewMode::OrSymbol)) }
      attr_accessor :view_mode

      sig do
        params(
          currency: T.nilable(String),
          timeframe_end: T.nilable(Time),
          timeframe_start: T.nilable(Time),
          view_mode: T.nilable(Orb::Models::SubscriptionFetchCostsParams::ViewMode::OrSymbol),
          request_options: T.any(Orb::RequestOptions, Orb::Internal::AnyHash)
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
              view_mode: T.nilable(Orb::Models::SubscriptionFetchCostsParams::ViewMode::OrSymbol),
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
        extend Orb::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::SubscriptionFetchCostsParams::ViewMode) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Orb::Models::SubscriptionFetchCostsParams::ViewMode::TaggedSymbol) }

        PERIODIC = T.let(:periodic, Orb::Models::SubscriptionFetchCostsParams::ViewMode::TaggedSymbol)
        CUMULATIVE = T.let(:cumulative, Orb::Models::SubscriptionFetchCostsParams::ViewMode::TaggedSymbol)

        sig { override.returns(T::Array[Orb::Models::SubscriptionFetchCostsParams::ViewMode::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
