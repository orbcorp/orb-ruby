# typed: strong

module Orb
  module Models
    class TieredConfigModel < Orb::BaseModel
      sig { returns(T::Array[Orb::Models::TieredConfigModel::Tier]) }
      def tiers
      end

      sig do
        params(_: T::Array[Orb::Models::TieredConfigModel::Tier])
          .returns(T::Array[Orb::Models::TieredConfigModel::Tier])
      end
      def tiers=(_)
      end

      sig { params(tiers: T::Array[Orb::Models::TieredConfigModel::Tier]).void }
      def initialize(tiers:)
      end

      sig { override.returns({tiers: T::Array[Orb::Models::TieredConfigModel::Tier]}) }
      def to_hash
      end

      class Tier < Orb::BaseModel
        sig { returns(Float) }
        def first_unit
        end

        sig { params(_: Float).returns(Float) }
        def first_unit=(_)
        end

        sig { returns(String) }
        def unit_amount
        end

        sig { params(_: String).returns(String) }
        def unit_amount=(_)
        end

        sig { returns(T.nilable(Float)) }
        def last_unit
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def last_unit=(_)
        end

        sig { params(first_unit: Float, unit_amount: String, last_unit: T.nilable(Float)).void }
        def initialize(first_unit:, unit_amount:, last_unit: nil)
        end

        sig { override.returns({first_unit: Float, unit_amount: String, last_unit: T.nilable(Float)}) }
        def to_hash
        end
      end
    end
  end
end
