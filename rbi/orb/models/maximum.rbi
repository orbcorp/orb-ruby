# typed: strong

module Orb
  module Models
    class Maximum < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::Maximum, Orb::Internal::AnyHash) }

      # List of price_ids that this maximum amount applies to. For plan/plan phase
      # maximums, this can be a subset of prices.
      sig { returns(T::Array[String]) }
      attr_accessor :applies_to_price_ids

      # The filters that determine which prices to apply this maximum to.
      sig { returns(T::Array[Orb::TransformPriceFilter]) }
      attr_accessor :filters

      # Maximum amount applied
      sig { returns(String) }
      attr_accessor :maximum_amount

      sig do
        params(
          applies_to_price_ids: T::Array[String],
          filters: T::Array[Orb::TransformPriceFilter::OrHash],
          maximum_amount: String
        ).returns(T.attached_class)
      end
      def self.new(
        # List of price_ids that this maximum amount applies to. For plan/plan phase
        # maximums, this can be a subset of prices.
        applies_to_price_ids:,
        # The filters that determine which prices to apply this maximum to.
        filters:,
        # Maximum amount applied
        maximum_amount:
      )
      end

      sig do
        override.returns(
          {
            applies_to_price_ids: T::Array[String],
            filters: T::Array[Orb::TransformPriceFilter],
            maximum_amount: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
