# typed: strong

module Orb
  module Models
    class BulkConfigModel < Orb::BaseModel
      sig { returns(T::Array[Orb::Models::BulkConfigModel::Tier]) }
      def tiers
      end

      sig do
        params(_: T::Array[Orb::Models::BulkConfigModel::Tier])
          .returns(T::Array[Orb::Models::BulkConfigModel::Tier])
      end
      def tiers=(_)
      end

      sig { params(tiers: T::Array[Orb::Models::BulkConfigModel::Tier]).void }
      def initialize(tiers:)
      end

      sig { override.returns({tiers: T::Array[Orb::Models::BulkConfigModel::Tier]}) }
      def to_hash
      end

      class Tier < Orb::BaseModel
        sig { returns(String) }
        def unit_amount
        end

        sig { params(_: String).returns(String) }
        def unit_amount=(_)
        end

        sig { returns(T.nilable(Float)) }
        def maximum_units
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def maximum_units=(_)
        end

        sig { params(unit_amount: String, maximum_units: T.nilable(Float)).void }
        def initialize(unit_amount:, maximum_units: nil)
        end

        sig { override.returns({unit_amount: String, maximum_units: T.nilable(Float)}) }
        def to_hash
        end
      end
    end
  end
end
