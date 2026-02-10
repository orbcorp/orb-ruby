# typed: strong

module Orb
  module Models
    class NewSubscriptionCumulativeGroupedBulkPrice < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::NewSubscriptionCumulativeGroupedBulkPrice,
            Orb::Internal::AnyHash
          )
        end

      # The cadence to bill for this price on.
      sig do
        returns(
          Orb::NewSubscriptionCumulativeGroupedBulkPrice::Cadence::OrSymbol
        )
      end
      attr_accessor :cadence

      # Configuration for cumulative_grouped_bulk pricing
      sig do
        returns(
          Orb::NewSubscriptionCumulativeGroupedBulkPrice::CumulativeGroupedBulkConfig
        )
      end
      attr_reader :cumulative_grouped_bulk_config

      sig do
        params(
          cumulative_grouped_bulk_config:
            Orb::NewSubscriptionCumulativeGroupedBulkPrice::CumulativeGroupedBulkConfig::OrHash
        ).void
      end
      attr_writer :cumulative_grouped_bulk_config

      # The id of the item the price will be associated with.
      sig { returns(String) }
      attr_accessor :item_id

      # The pricing model type
      sig do
        returns(
          Orb::NewSubscriptionCumulativeGroupedBulkPrice::ModelType::OrSymbol
        )
      end
      attr_accessor :model_type

      # The name of the price.
      sig { returns(String) }
      attr_accessor :name

      # The id of the billable metric for the price. Only needed if the price is
      # usage-based.
      sig { returns(T.nilable(String)) }
      attr_accessor :billable_metric_id

      # If the Price represents a fixed cost, the price will be billed in-advance if
      # this is true, and in-arrears if this is false.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :billed_in_advance

      # For custom cadence: specifies the duration of the billing period in days or
      # months.
      sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
      attr_reader :billing_cycle_configuration

      sig do
        params(
          billing_cycle_configuration:
            T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
        ).void
      end
      attr_writer :billing_cycle_configuration

      # The per unit conversion rate of the price currency to the invoicing currency.
      sig { returns(T.nilable(Float)) }
      attr_accessor :conversion_rate

      # The configuration for the rate of the price currency to the invoicing currency.
      sig do
        returns(
          T.nilable(
            T.any(
              Orb::UnitConversionRateConfig,
              Orb::TieredConversionRateConfig
            )
          )
        )
      end
      attr_accessor :conversion_rate_config

      # An ISO 4217 currency string, or custom pricing unit identifier, in which this
      # price is billed.
      sig { returns(T.nilable(String)) }
      attr_accessor :currency

      # For dimensional price: specifies a price group and dimension values
      sig { returns(T.nilable(Orb::NewDimensionalPriceConfiguration)) }
      attr_reader :dimensional_price_configuration

      sig do
        params(
          dimensional_price_configuration:
            T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash)
        ).void
      end
      attr_writer :dimensional_price_configuration

      # An alias for the price.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_price_id

      # If the Price represents a fixed cost, this represents the quantity of units
      # applied.
      sig { returns(T.nilable(Float)) }
      attr_accessor :fixed_price_quantity

      # The property used to group this price on an invoice
      sig { returns(T.nilable(String)) }
      attr_accessor :invoice_grouping_key

      # Within each billing cycle, specifies the cadence at which invoices are produced.
      # If unspecified, a single invoice is produced per billing cycle.
      sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
      attr_reader :invoicing_cycle_configuration

      sig do
        params(
          invoicing_cycle_configuration:
            T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
        ).void
      end
      attr_writer :invoicing_cycle_configuration

      # The ID of the license type to associate with this price.
      sig { returns(T.nilable(String)) }
      attr_accessor :license_type_id

      # User-specified key/value pairs for the resource. Individual keys can be removed
      # by setting the value to `null`, and the entire metadata mapping can be cleared
      # by setting `metadata` to `null`.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      # A transient ID that can be used to reference this price when adding adjustments
      # in the same API call.
      sig { returns(T.nilable(String)) }
      attr_accessor :reference_id

      sig do
        params(
          cadence:
            Orb::NewSubscriptionCumulativeGroupedBulkPrice::Cadence::OrSymbol,
          cumulative_grouped_bulk_config:
            Orb::NewSubscriptionCumulativeGroupedBulkPrice::CumulativeGroupedBulkConfig::OrHash,
          item_id: String,
          model_type:
            Orb::NewSubscriptionCumulativeGroupedBulkPrice::ModelType::OrSymbol,
          name: String,
          billable_metric_id: T.nilable(String),
          billed_in_advance: T.nilable(T::Boolean),
          billing_cycle_configuration:
            T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
          conversion_rate: T.nilable(Float),
          conversion_rate_config:
            T.nilable(
              T.any(
                Orb::UnitConversionRateConfig::OrHash,
                Orb::TieredConversionRateConfig::OrHash
              )
            ),
          currency: T.nilable(String),
          dimensional_price_configuration:
            T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
          external_price_id: T.nilable(String),
          fixed_price_quantity: T.nilable(Float),
          invoice_grouping_key: T.nilable(String),
          invoicing_cycle_configuration:
            T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
          license_type_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          reference_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The cadence to bill for this price on.
        cadence:,
        # Configuration for cumulative_grouped_bulk pricing
        cumulative_grouped_bulk_config:,
        # The id of the item the price will be associated with.
        item_id:,
        # The pricing model type
        model_type:,
        # The name of the price.
        name:,
        # The id of the billable metric for the price. Only needed if the price is
        # usage-based.
        billable_metric_id: nil,
        # If the Price represents a fixed cost, the price will be billed in-advance if
        # this is true, and in-arrears if this is false.
        billed_in_advance: nil,
        # For custom cadence: specifies the duration of the billing period in days or
        # months.
        billing_cycle_configuration: nil,
        # The per unit conversion rate of the price currency to the invoicing currency.
        conversion_rate: nil,
        # The configuration for the rate of the price currency to the invoicing currency.
        conversion_rate_config: nil,
        # An ISO 4217 currency string, or custom pricing unit identifier, in which this
        # price is billed.
        currency: nil,
        # For dimensional price: specifies a price group and dimension values
        dimensional_price_configuration: nil,
        # An alias for the price.
        external_price_id: nil,
        # If the Price represents a fixed cost, this represents the quantity of units
        # applied.
        fixed_price_quantity: nil,
        # The property used to group this price on an invoice
        invoice_grouping_key: nil,
        # Within each billing cycle, specifies the cadence at which invoices are produced.
        # If unspecified, a single invoice is produced per billing cycle.
        invoicing_cycle_configuration: nil,
        # The ID of the license type to associate with this price.
        license_type_id: nil,
        # User-specified key/value pairs for the resource. Individual keys can be removed
        # by setting the value to `null`, and the entire metadata mapping can be cleared
        # by setting `metadata` to `null`.
        metadata: nil,
        # A transient ID that can be used to reference this price when adding adjustments
        # in the same API call.
        reference_id: nil
      )
      end

      sig do
        override.returns(
          {
            cadence:
              Orb::NewSubscriptionCumulativeGroupedBulkPrice::Cadence::OrSymbol,
            cumulative_grouped_bulk_config:
              Orb::NewSubscriptionCumulativeGroupedBulkPrice::CumulativeGroupedBulkConfig,
            item_id: String,
            model_type:
              Orb::NewSubscriptionCumulativeGroupedBulkPrice::ModelType::OrSymbol,
            name: String,
            billable_metric_id: T.nilable(String),
            billed_in_advance: T.nilable(T::Boolean),
            billing_cycle_configuration:
              T.nilable(Orb::NewBillingCycleConfiguration),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig,
                  Orb::TieredConversionRateConfig
                )
              ),
            currency: T.nilable(String),
            dimensional_price_configuration:
              T.nilable(Orb::NewDimensionalPriceConfiguration),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoice_grouping_key: T.nilable(String),
            invoicing_cycle_configuration:
              T.nilable(Orb::NewBillingCycleConfiguration),
            license_type_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            reference_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # The cadence to bill for this price on.
      module Cadence
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Orb::NewSubscriptionCumulativeGroupedBulkPrice::Cadence
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ANNUAL =
          T.let(
            :annual,
            Orb::NewSubscriptionCumulativeGroupedBulkPrice::Cadence::TaggedSymbol
          )
        SEMI_ANNUAL =
          T.let(
            :semi_annual,
            Orb::NewSubscriptionCumulativeGroupedBulkPrice::Cadence::TaggedSymbol
          )
        MONTHLY =
          T.let(
            :monthly,
            Orb::NewSubscriptionCumulativeGroupedBulkPrice::Cadence::TaggedSymbol
          )
        QUARTERLY =
          T.let(
            :quarterly,
            Orb::NewSubscriptionCumulativeGroupedBulkPrice::Cadence::TaggedSymbol
          )
        ONE_TIME =
          T.let(
            :one_time,
            Orb::NewSubscriptionCumulativeGroupedBulkPrice::Cadence::TaggedSymbol
          )
        CUSTOM =
          T.let(
            :custom,
            Orb::NewSubscriptionCumulativeGroupedBulkPrice::Cadence::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::NewSubscriptionCumulativeGroupedBulkPrice::Cadence::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class CumulativeGroupedBulkConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::NewSubscriptionCumulativeGroupedBulkPrice::CumulativeGroupedBulkConfig,
              Orb::Internal::AnyHash
            )
          end

        # Each tier lower bound must have the same group of values.
        sig do
          returns(
            T::Array[
              Orb::NewSubscriptionCumulativeGroupedBulkPrice::CumulativeGroupedBulkConfig::DimensionValue
            ]
          )
        end
        attr_accessor :dimension_values

        sig { returns(String) }
        attr_accessor :group

        # Configuration for cumulative_grouped_bulk pricing
        sig do
          params(
            dimension_values:
              T::Array[
                Orb::NewSubscriptionCumulativeGroupedBulkPrice::CumulativeGroupedBulkConfig::DimensionValue::OrHash
              ],
            group: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Each tier lower bound must have the same group of values.
          dimension_values:,
          group:
        )
        end

        sig do
          override.returns(
            {
              dimension_values:
                T::Array[
                  Orb::NewSubscriptionCumulativeGroupedBulkPrice::CumulativeGroupedBulkConfig::DimensionValue
                ],
              group: String
            }
          )
        end
        def to_hash
        end

        class DimensionValue < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::NewSubscriptionCumulativeGroupedBulkPrice::CumulativeGroupedBulkConfig::DimensionValue,
                Orb::Internal::AnyHash
              )
            end

          # Grouping key value
          sig { returns(String) }
          attr_accessor :grouping_key

          # Tier lower bound
          sig { returns(String) }
          attr_accessor :tier_lower_bound

          # Unit amount for this combination
          sig { returns(String) }
          attr_accessor :unit_amount

          # Configuration for a dimension value entry
          sig do
            params(
              grouping_key: String,
              tier_lower_bound: String,
              unit_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Grouping key value
            grouping_key:,
            # Tier lower bound
            tier_lower_bound:,
            # Unit amount for this combination
            unit_amount:
          )
          end

          sig do
            override.returns(
              {
                grouping_key: String,
                tier_lower_bound: String,
                unit_amount: String
              }
            )
          end
          def to_hash
          end
        end
      end

      # The pricing model type
      module ModelType
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Orb::NewSubscriptionCumulativeGroupedBulkPrice::ModelType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CUMULATIVE_GROUPED_BULK =
          T.let(
            :cumulative_grouped_bulk,
            Orb::NewSubscriptionCumulativeGroupedBulkPrice::ModelType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::NewSubscriptionCumulativeGroupedBulkPrice::ModelType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
