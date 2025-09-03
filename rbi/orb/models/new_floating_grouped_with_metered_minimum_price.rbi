# typed: strong

module Orb
  module Models
    class NewFloatingGroupedWithMeteredMinimumPrice < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::NewFloatingGroupedWithMeteredMinimumPrice,
            Orb::Internal::AnyHash
          )
        end

      # The cadence to bill for this price on.
      sig do
        returns(
          Orb::NewFloatingGroupedWithMeteredMinimumPrice::Cadence::OrSymbol
        )
      end
      attr_accessor :cadence

      # An ISO 4217 currency string for which this price is billed in.
      sig { returns(String) }
      attr_accessor :currency

      # Configuration for grouped_with_metered_minimum pricing
      sig do
        returns(
          Orb::NewFloatingGroupedWithMeteredMinimumPrice::GroupedWithMeteredMinimumConfig
        )
      end
      attr_reader :grouped_with_metered_minimum_config

      sig do
        params(
          grouped_with_metered_minimum_config:
            Orb::NewFloatingGroupedWithMeteredMinimumPrice::GroupedWithMeteredMinimumConfig::OrHash
        ).void
      end
      attr_writer :grouped_with_metered_minimum_config

      # The id of the item the price will be associated with.
      sig { returns(String) }
      attr_accessor :item_id

      # The pricing model type
      sig do
        returns(
          Orb::NewFloatingGroupedWithMeteredMinimumPrice::ModelType::OrSymbol
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

      # User-specified key/value pairs for the resource. Individual keys can be removed
      # by setting the value to `null`, and the entire metadata mapping can be cleared
      # by setting `metadata` to `null`.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      sig do
        params(
          cadence:
            Orb::NewFloatingGroupedWithMeteredMinimumPrice::Cadence::OrSymbol,
          currency: String,
          grouped_with_metered_minimum_config:
            Orb::NewFloatingGroupedWithMeteredMinimumPrice::GroupedWithMeteredMinimumConfig::OrHash,
          item_id: String,
          model_type:
            Orb::NewFloatingGroupedWithMeteredMinimumPrice::ModelType::OrSymbol,
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
          dimensional_price_configuration:
            T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
          external_price_id: T.nilable(String),
          fixed_price_quantity: T.nilable(Float),
          invoice_grouping_key: T.nilable(String),
          invoicing_cycle_configuration:
            T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
        ).returns(T.attached_class)
      end
      def self.new(
        # The cadence to bill for this price on.
        cadence:,
        # An ISO 4217 currency string for which this price is billed in.
        currency:,
        # Configuration for grouped_with_metered_minimum pricing
        grouped_with_metered_minimum_config:,
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
        # User-specified key/value pairs for the resource. Individual keys can be removed
        # by setting the value to `null`, and the entire metadata mapping can be cleared
        # by setting `metadata` to `null`.
        metadata: nil
      )
      end

      sig do
        override.returns(
          {
            cadence:
              Orb::NewFloatingGroupedWithMeteredMinimumPrice::Cadence::OrSymbol,
            currency: String,
            grouped_with_metered_minimum_config:
              Orb::NewFloatingGroupedWithMeteredMinimumPrice::GroupedWithMeteredMinimumConfig,
            item_id: String,
            model_type:
              Orb::NewFloatingGroupedWithMeteredMinimumPrice::ModelType::OrSymbol,
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
            dimensional_price_configuration:
              T.nilable(Orb::NewDimensionalPriceConfiguration),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoice_grouping_key: T.nilable(String),
            invoicing_cycle_configuration:
              T.nilable(Orb::NewBillingCycleConfiguration),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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
              Orb::NewFloatingGroupedWithMeteredMinimumPrice::Cadence
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ANNUAL =
          T.let(
            :annual,
            Orb::NewFloatingGroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol
          )
        SEMI_ANNUAL =
          T.let(
            :semi_annual,
            Orb::NewFloatingGroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol
          )
        MONTHLY =
          T.let(
            :monthly,
            Orb::NewFloatingGroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol
          )
        QUARTERLY =
          T.let(
            :quarterly,
            Orb::NewFloatingGroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol
          )
        ONE_TIME =
          T.let(
            :one_time,
            Orb::NewFloatingGroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol
          )
        CUSTOM =
          T.let(
            :custom,
            Orb::NewFloatingGroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::NewFloatingGroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class GroupedWithMeteredMinimumConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::NewFloatingGroupedWithMeteredMinimumPrice::GroupedWithMeteredMinimumConfig,
              Orb::Internal::AnyHash
            )
          end

        # Used to partition the usage into groups. The minimum amount is applied to each
        # group.
        sig { returns(String) }
        attr_accessor :grouping_key

        # The minimum amount to charge per group per unit
        sig { returns(String) }
        attr_accessor :minimum_unit_amount

        # Used to determine the unit rate
        sig { returns(String) }
        attr_accessor :pricing_key

        # Scale the unit rates by the scaling factor.
        sig do
          returns(
            T::Array[
              Orb::NewFloatingGroupedWithMeteredMinimumPrice::GroupedWithMeteredMinimumConfig::ScalingFactor
            ]
          )
        end
        attr_accessor :scaling_factors

        # Used to determine the unit rate scaling factor
        sig { returns(String) }
        attr_accessor :scaling_key

        # Apply per unit pricing to each pricing value. The minimum amount is applied any
        # unmatched usage.
        sig do
          returns(
            T::Array[
              Orb::NewFloatingGroupedWithMeteredMinimumPrice::GroupedWithMeteredMinimumConfig::UnitAmount
            ]
          )
        end
        attr_accessor :unit_amounts

        # Configuration for grouped_with_metered_minimum pricing
        sig do
          params(
            grouping_key: String,
            minimum_unit_amount: String,
            pricing_key: String,
            scaling_factors:
              T::Array[
                Orb::NewFloatingGroupedWithMeteredMinimumPrice::GroupedWithMeteredMinimumConfig::ScalingFactor::OrHash
              ],
            scaling_key: String,
            unit_amounts:
              T::Array[
                Orb::NewFloatingGroupedWithMeteredMinimumPrice::GroupedWithMeteredMinimumConfig::UnitAmount::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # Used to partition the usage into groups. The minimum amount is applied to each
          # group.
          grouping_key:,
          # The minimum amount to charge per group per unit
          minimum_unit_amount:,
          # Used to determine the unit rate
          pricing_key:,
          # Scale the unit rates by the scaling factor.
          scaling_factors:,
          # Used to determine the unit rate scaling factor
          scaling_key:,
          # Apply per unit pricing to each pricing value. The minimum amount is applied any
          # unmatched usage.
          unit_amounts:
        )
        end

        sig do
          override.returns(
            {
              grouping_key: String,
              minimum_unit_amount: String,
              pricing_key: String,
              scaling_factors:
                T::Array[
                  Orb::NewFloatingGroupedWithMeteredMinimumPrice::GroupedWithMeteredMinimumConfig::ScalingFactor
                ],
              scaling_key: String,
              unit_amounts:
                T::Array[
                  Orb::NewFloatingGroupedWithMeteredMinimumPrice::GroupedWithMeteredMinimumConfig::UnitAmount
                ]
            }
          )
        end
        def to_hash
        end

        class ScalingFactor < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::NewFloatingGroupedWithMeteredMinimumPrice::GroupedWithMeteredMinimumConfig::ScalingFactor,
                Orb::Internal::AnyHash
              )
            end

          # Scaling factor
          sig { returns(String) }
          attr_accessor :scaling_factor

          # Scaling value
          sig { returns(String) }
          attr_accessor :scaling_value

          # Configuration for a scaling factor
          sig do
            params(scaling_factor: String, scaling_value: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # Scaling factor
            scaling_factor:,
            # Scaling value
            scaling_value:
          )
          end

          sig do
            override.returns({ scaling_factor: String, scaling_value: String })
          end
          def to_hash
          end
        end

        class UnitAmount < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::NewFloatingGroupedWithMeteredMinimumPrice::GroupedWithMeteredMinimumConfig::UnitAmount,
                Orb::Internal::AnyHash
              )
            end

          # Pricing value
          sig { returns(String) }
          attr_accessor :pricing_value

          # Per unit amount
          sig { returns(String) }
          attr_accessor :unit_amount

          # Configuration for a unit amount
          sig do
            params(pricing_value: String, unit_amount: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # Pricing value
            pricing_value:,
            # Per unit amount
            unit_amount:
          )
          end

          sig do
            override.returns({ pricing_value: String, unit_amount: String })
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
              Orb::NewFloatingGroupedWithMeteredMinimumPrice::ModelType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GROUPED_WITH_METERED_MINIMUM =
          T.let(
            :grouped_with_metered_minimum,
            Orb::NewFloatingGroupedWithMeteredMinimumPrice::ModelType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::NewFloatingGroupedWithMeteredMinimumPrice::ModelType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
