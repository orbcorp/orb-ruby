# typed: strong

module Orb
  module Models
    class NewFloatingTieredWithMinimumPrice < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::NewFloatingTieredWithMinimumPrice, Orb::Internal::AnyHash)
        end

      # The cadence to bill for this price on.
      sig { returns(Orb::NewFloatingTieredWithMinimumPrice::Cadence::OrSymbol) }
      attr_accessor :cadence

      # An ISO 4217 currency string for which this price is billed in.
      sig { returns(String) }
      attr_accessor :currency

      # The id of the item the price will be associated with.
      sig { returns(String) }
      attr_accessor :item_id

      # The pricing model type
      sig do
        returns(Orb::NewFloatingTieredWithMinimumPrice::ModelType::OrSymbol)
      end
      attr_accessor :model_type

      # The name of the price.
      sig { returns(String) }
      attr_accessor :name

      # Configuration for tiered_with_minimum pricing
      sig do
        returns(Orb::NewFloatingTieredWithMinimumPrice::TieredWithMinimumConfig)
      end
      attr_reader :tiered_with_minimum_config

      sig do
        params(
          tiered_with_minimum_config:
            Orb::NewFloatingTieredWithMinimumPrice::TieredWithMinimumConfig::OrHash
        ).void
      end
      attr_writer :tiered_with_minimum_config

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

      # The ID of the license type to associate with this price.
      sig { returns(T.nilable(String)) }
      attr_accessor :license_type_id

      # User-specified key/value pairs for the resource. Individual keys can be removed
      # by setting the value to `null`, and the entire metadata mapping can be cleared
      # by setting `metadata` to `null`.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      sig do
        params(
          cadence: Orb::NewFloatingTieredWithMinimumPrice::Cadence::OrSymbol,
          currency: String,
          item_id: String,
          model_type:
            Orb::NewFloatingTieredWithMinimumPrice::ModelType::OrSymbol,
          name: String,
          tiered_with_minimum_config:
            Orb::NewFloatingTieredWithMinimumPrice::TieredWithMinimumConfig::OrHash,
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
          license_type_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
        ).returns(T.attached_class)
      end
      def self.new(
        # The cadence to bill for this price on.
        cadence:,
        # An ISO 4217 currency string for which this price is billed in.
        currency:,
        # The id of the item the price will be associated with.
        item_id:,
        # The pricing model type
        model_type:,
        # The name of the price.
        name:,
        # Configuration for tiered_with_minimum pricing
        tiered_with_minimum_config:,
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
        # The ID of the license type to associate with this price.
        license_type_id: nil,
        # User-specified key/value pairs for the resource. Individual keys can be removed
        # by setting the value to `null`, and the entire metadata mapping can be cleared
        # by setting `metadata` to `null`.
        metadata: nil
      )
      end

      sig do
        override.returns(
          {
            cadence: Orb::NewFloatingTieredWithMinimumPrice::Cadence::OrSymbol,
            currency: String,
            item_id: String,
            model_type:
              Orb::NewFloatingTieredWithMinimumPrice::ModelType::OrSymbol,
            name: String,
            tiered_with_minimum_config:
              Orb::NewFloatingTieredWithMinimumPrice::TieredWithMinimumConfig,
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
            license_type_id: T.nilable(String),
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
            T.all(Symbol, Orb::NewFloatingTieredWithMinimumPrice::Cadence)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ANNUAL =
          T.let(
            :annual,
            Orb::NewFloatingTieredWithMinimumPrice::Cadence::TaggedSymbol
          )
        SEMI_ANNUAL =
          T.let(
            :semi_annual,
            Orb::NewFloatingTieredWithMinimumPrice::Cadence::TaggedSymbol
          )
        MONTHLY =
          T.let(
            :monthly,
            Orb::NewFloatingTieredWithMinimumPrice::Cadence::TaggedSymbol
          )
        QUARTERLY =
          T.let(
            :quarterly,
            Orb::NewFloatingTieredWithMinimumPrice::Cadence::TaggedSymbol
          )
        ONE_TIME =
          T.let(
            :one_time,
            Orb::NewFloatingTieredWithMinimumPrice::Cadence::TaggedSymbol
          )
        CUSTOM =
          T.let(
            :custom,
            Orb::NewFloatingTieredWithMinimumPrice::Cadence::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::NewFloatingTieredWithMinimumPrice::Cadence::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The pricing model type
      module ModelType
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::NewFloatingTieredWithMinimumPrice::ModelType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TIERED_WITH_MINIMUM =
          T.let(
            :tiered_with_minimum,
            Orb::NewFloatingTieredWithMinimumPrice::ModelType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::NewFloatingTieredWithMinimumPrice::ModelType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class TieredWithMinimumConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::NewFloatingTieredWithMinimumPrice::TieredWithMinimumConfig,
              Orb::Internal::AnyHash
            )
          end

        # Tiered pricing with a minimum amount dependent on the volume tier. Tiers are
        # defined using exclusive lower bounds.
        sig do
          returns(
            T::Array[
              Orb::NewFloatingTieredWithMinimumPrice::TieredWithMinimumConfig::Tier
            ]
          )
        end
        attr_accessor :tiers

        # If true, tiers with an accrued amount of 0 will not be included in the rating.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :hide_zero_amount_tiers

        sig { params(hide_zero_amount_tiers: T::Boolean).void }
        attr_writer :hide_zero_amount_tiers

        # If true, the unit price will be prorated to the billing period
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :prorate

        sig { params(prorate: T::Boolean).void }
        attr_writer :prorate

        # Configuration for tiered_with_minimum pricing
        sig do
          params(
            tiers:
              T::Array[
                Orb::NewFloatingTieredWithMinimumPrice::TieredWithMinimumConfig::Tier::OrHash
              ],
            hide_zero_amount_tiers: T::Boolean,
            prorate: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Tiered pricing with a minimum amount dependent on the volume tier. Tiers are
          # defined using exclusive lower bounds.
          tiers:,
          # If true, tiers with an accrued amount of 0 will not be included in the rating.
          hide_zero_amount_tiers: nil,
          # If true, the unit price will be prorated to the billing period
          prorate: nil
        )
        end

        sig do
          override.returns(
            {
              tiers:
                T::Array[
                  Orb::NewFloatingTieredWithMinimumPrice::TieredWithMinimumConfig::Tier
                ],
              hide_zero_amount_tiers: T::Boolean,
              prorate: T::Boolean
            }
          )
        end
        def to_hash
        end

        class Tier < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::NewFloatingTieredWithMinimumPrice::TieredWithMinimumConfig::Tier,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :minimum_amount

          sig { returns(String) }
          attr_accessor :tier_lower_bound

          # Per unit amount
          sig { returns(String) }
          attr_accessor :unit_amount

          # Configuration for a single tier
          sig do
            params(
              minimum_amount: String,
              tier_lower_bound: String,
              unit_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            minimum_amount:,
            tier_lower_bound:,
            # Per unit amount
            unit_amount:
          )
          end

          sig do
            override.returns(
              {
                minimum_amount: String,
                tier_lower_bound: String,
                unit_amount: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
