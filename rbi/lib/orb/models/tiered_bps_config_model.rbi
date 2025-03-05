# typed: strong

module Orb
  module Models
    class TieredBpsConfigModel < Orb::BaseModel
      sig { returns(T::Array[Orb::Models::TieredBpsConfigModel::Tier]) }
      def tiers
      end

      sig do
        params(_: T::Array[Orb::Models::TieredBpsConfigModel::Tier])
          .returns(T::Array[Orb::Models::TieredBpsConfigModel::Tier])
      end
      def tiers=(_)
      end

      sig { params(tiers: T::Array[Orb::Models::TieredBpsConfigModel::Tier]).void }
      def initialize(tiers:)
      end

      sig { override.returns({tiers: T::Array[Orb::Models::TieredBpsConfigModel::Tier]}) }
      def to_hash
      end

      class Tier < Orb::BaseModel
        sig { returns(Float) }
        def bps
        end

        sig { params(_: Float).returns(Float) }
        def bps=(_)
        end

        sig { returns(String) }
        def minimum_amount
        end

        sig { params(_: String).returns(String) }
        def minimum_amount=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T.nilable(String)) }
        def per_unit_maximum
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def per_unit_maximum=(_)
        end

        sig do
          params(
            bps: Float,
            minimum_amount: String,
            maximum_amount: T.nilable(String),
            per_unit_maximum: T.nilable(String)
          )
            .void
        end
        def initialize(bps:, minimum_amount:, maximum_amount: nil, per_unit_maximum: nil)
        end

        sig do
          override
            .returns(
              {
                bps: Float,
                minimum_amount: String,
                maximum_amount: T.nilable(String),
                per_unit_maximum: T.nilable(String)
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
