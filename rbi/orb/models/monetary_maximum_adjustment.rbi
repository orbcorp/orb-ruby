# typed: strong

module Orb
  module Models
    class MonetaryMaximumAdjustment < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::MonetaryMaximumAdjustment, Orb::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig do
        returns(Orb::MonetaryMaximumAdjustment::AdjustmentType::TaggedSymbol)
      end
      attr_accessor :adjustment_type

      # The value applied by an adjustment.
      sig { returns(String) }
      attr_accessor :amount

      # The price IDs that this adjustment applies to.
      sig { returns(T::Array[String]) }
      attr_accessor :applies_to_price_ids

      # The filters that determine which prices to apply this adjustment to.
      sig { returns(T::Array[Orb::TransformPriceFilter]) }
      attr_accessor :filters

      # True for adjustments that apply to an entire invocice, false for adjustments
      # that apply to only one price.
      sig { returns(T::Boolean) }
      attr_accessor :is_invoice_level

      # The maximum amount to charge in a given billing period for the prices this
      # adjustment applies to.
      sig { returns(String) }
      attr_accessor :maximum_amount

      # The reason for the adjustment.
      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      # The adjustment id this adjustment replaces. This adjustment will take the place
      # of the replaced adjustment in plan version migrations.
      sig { returns(T.nilable(String)) }
      attr_accessor :replaces_adjustment_id

      sig do
        params(
          id: String,
          adjustment_type:
            Orb::MonetaryMaximumAdjustment::AdjustmentType::OrSymbol,
          amount: String,
          applies_to_price_ids: T::Array[String],
          filters: T::Array[Orb::TransformPriceFilter::OrHash],
          is_invoice_level: T::Boolean,
          maximum_amount: String,
          reason: T.nilable(String),
          replaces_adjustment_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        adjustment_type:,
        # The value applied by an adjustment.
        amount:,
        # The price IDs that this adjustment applies to.
        applies_to_price_ids:,
        # The filters that determine which prices to apply this adjustment to.
        filters:,
        # True for adjustments that apply to an entire invocice, false for adjustments
        # that apply to only one price.
        is_invoice_level:,
        # The maximum amount to charge in a given billing period for the prices this
        # adjustment applies to.
        maximum_amount:,
        # The reason for the adjustment.
        reason:,
        # The adjustment id this adjustment replaces. This adjustment will take the place
        # of the replaced adjustment in plan version migrations.
        replaces_adjustment_id:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            adjustment_type:
              Orb::MonetaryMaximumAdjustment::AdjustmentType::TaggedSymbol,
            amount: String,
            applies_to_price_ids: T::Array[String],
            filters: T::Array[Orb::TransformPriceFilter],
            is_invoice_level: T::Boolean,
            maximum_amount: String,
            reason: T.nilable(String),
            replaces_adjustment_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      module AdjustmentType
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::MonetaryMaximumAdjustment::AdjustmentType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MAXIMUM =
          T.let(
            :maximum,
            Orb::MonetaryMaximumAdjustment::AdjustmentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::MonetaryMaximumAdjustment::AdjustmentType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
