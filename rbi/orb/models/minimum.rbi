# typed: strong

module Orb
  module Models
    class Minimum < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::Minimum, Orb::Internal::AnyHash) }

      # List of price_ids that this minimum amount applies to. For plan/plan phase
      # minimums, this can be a subset of prices.
      sig { returns(T::Array[String]) }
      attr_accessor :applies_to_price_ids

      # The filters that determine which prices to apply this minimum to.
      sig { returns(T::Array[Orb::TransformPriceFilter]) }
      attr_accessor :filters

      # Minimum amount applied
      sig { returns(String) }
      attr_accessor :minimum_amount

      sig do
        params(
          applies_to_price_ids: T::Array[String],
          filters: T::Array[Orb::TransformPriceFilter::OrHash],
          minimum_amount: String
        ).returns(T.attached_class)
      end
      def self.new(
        # List of price_ids that this minimum amount applies to. For plan/plan phase
        # minimums, this can be a subset of prices.
        applies_to_price_ids:,
        # The filters that determine which prices to apply this minimum to.
        filters:,
        # Minimum amount applied
        minimum_amount:
      )
      end

      sig do
        override.returns(
          {
            applies_to_price_ids: T::Array[String],
            filters: T::Array[Orb::TransformPriceFilter],
            minimum_amount: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
