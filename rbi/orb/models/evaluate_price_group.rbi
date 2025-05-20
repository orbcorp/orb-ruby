# typed: strong

module Orb
  module Models
    class EvaluatePriceGroup < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::EvaluatePriceGroup, Orb::Internal::AnyHash) }

      # The price's output for the group
      sig { returns(String) }
      attr_accessor :amount

      # The values for the group in the order specified by `grouping_keys`
      sig do
        returns(T::Array[Orb::EvaluatePriceGroup::GroupingValue::Variants])
      end
      attr_accessor :grouping_values

      # The price's usage quantity for the group
      sig { returns(Float) }
      attr_accessor :quantity

      sig do
        params(
          amount: String,
          grouping_values:
            T::Array[Orb::EvaluatePriceGroup::GroupingValue::Variants],
          quantity: Float
        ).returns(T.attached_class)
      end
      def self.new(
        # The price's output for the group
        amount:,
        # The values for the group in the order specified by `grouping_keys`
        grouping_values:,
        # The price's usage quantity for the group
        quantity:
      )
      end

      sig do
        override.returns(
          {
            amount: String,
            grouping_values:
              T::Array[Orb::EvaluatePriceGroup::GroupingValue::Variants],
            quantity: Float
          }
        )
      end
      def to_hash
      end

      module GroupingValue
        extend Orb::Internal::Type::Union

        Variants = T.type_alias { T.any(String, Float, T::Boolean) }

        sig do
          override.returns(
            T::Array[Orb::EvaluatePriceGroup::GroupingValue::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
