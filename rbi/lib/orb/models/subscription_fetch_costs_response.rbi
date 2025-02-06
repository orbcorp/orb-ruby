# typed: strong

module Orb
  module Models
    class SubscriptionFetchCostsResponse < Orb::BaseModel
      Shape = T.type_alias { {data: T::Array[Orb::Models::SubscriptionFetchCostsResponse::Data]} }

      sig { returns(T::Array[Orb::Models::SubscriptionFetchCostsResponse::Data]) }
      attr_accessor :data

      sig { params(data: T::Array[Orb::Models::SubscriptionFetchCostsResponse::Data]).void }
      def initialize(data:); end

      sig { returns(Orb::Models::SubscriptionFetchCostsResponse::Shape) }
      def to_h; end

      class Data < Orb::BaseModel
        Shape = T.type_alias do
          {
            per_price_costs: T::Array[Orb::Models::SubscriptionFetchCostsResponse::Data::PerPriceCost],
            subtotal: String,
            timeframe_end: Time,
            timeframe_start: Time,
            total: String
          }
        end

        sig { returns(T::Array[Orb::Models::SubscriptionFetchCostsResponse::Data::PerPriceCost]) }
        attr_accessor :per_price_costs

        sig { returns(String) }
        attr_accessor :subtotal

        sig { returns(Time) }
        attr_accessor :timeframe_end

        sig { returns(Time) }
        attr_accessor :timeframe_start

        sig { returns(String) }
        attr_accessor :total

        sig do
          params(
            per_price_costs: T::Array[Orb::Models::SubscriptionFetchCostsResponse::Data::PerPriceCost],
            subtotal: String,
            timeframe_end: Time,
            timeframe_start: Time,
            total: String
          ).void
        end
        def initialize(per_price_costs:, subtotal:, timeframe_end:, timeframe_start:, total:); end

        sig { returns(Orb::Models::SubscriptionFetchCostsResponse::Data::Shape) }
        def to_h; end

        class PerPriceCost < Orb::BaseModel
          Shape = T.type_alias do
            {price: Orb::Models::Price::Variants, subtotal: String, total: String, quantity: T.nilable(Float)}
          end

          sig { returns(Orb::Models::Price::Variants) }
          attr_accessor :price

          sig { returns(String) }
          attr_accessor :subtotal

          sig { returns(String) }
          attr_accessor :total

          sig { returns(T.nilable(Float)) }
          attr_accessor :quantity

          sig do
            params(
              price: Orb::Models::Price::Variants,
              subtotal: String,
              total: String,
              quantity: T.nilable(Float)
            ).void
          end
          def initialize(price:, subtotal:, total:, quantity: nil); end

          sig { returns(Orb::Models::SubscriptionFetchCostsResponse::Data::PerPriceCost::Shape) }
          def to_h; end
        end
      end
    end
  end
end
