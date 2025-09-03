# typed: strong

module Orb
  module Models
    class NewFloatingTieredPackagePrice < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::NewFloatingTieredPackagePrice, Orb::Internal::AnyHash)
        end

      # The cadence to bill for this price on.
      sig { returns(Orb::NewFloatingTieredPackagePrice::Cadence::OrSymbol) }
      attr_accessor :cadence

      # An ISO 4217 currency string for which this price is billed in.
      sig { returns(String) }
      attr_accessor :currency

      # The id of the item the price will be associated with.
      sig { returns(String) }
      attr_accessor :item_id

      # The pricing model type
      sig { returns(Orb::NewFloatingTieredPackagePrice::ModelType::OrSymbol) }
      attr_accessor :model_type

      # The name of the price.
      sig { returns(String) }
      attr_accessor :name

      # Configuration for tiered_package pricing
      sig { returns(Orb::NewFloatingTieredPackagePrice::TieredPackageConfig) }
      attr_reader :tiered_package_config

      sig do
        params(
          tiered_package_config:
            Orb::NewFloatingTieredPackagePrice::TieredPackageConfig::OrHash
        ).void
      end
      attr_writer :tiered_package_config

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
          cadence: Orb::NewFloatingTieredPackagePrice::Cadence::OrSymbol,
          currency: String,
          item_id: String,
          model_type: Orb::NewFloatingTieredPackagePrice::ModelType::OrSymbol,
          name: String,
          tiered_package_config:
            Orb::NewFloatingTieredPackagePrice::TieredPackageConfig::OrHash,
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
        # The id of the item the price will be associated with.
        item_id:,
        # The pricing model type
        model_type:,
        # The name of the price.
        name:,
        # Configuration for tiered_package pricing
        tiered_package_config:,
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
            cadence: Orb::NewFloatingTieredPackagePrice::Cadence::OrSymbol,
            currency: String,
            item_id: String,
            model_type: Orb::NewFloatingTieredPackagePrice::ModelType::OrSymbol,
            name: String,
            tiered_package_config:
              Orb::NewFloatingTieredPackagePrice::TieredPackageConfig,
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
            T.all(Symbol, Orb::NewFloatingTieredPackagePrice::Cadence)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ANNUAL =
          T.let(
            :annual,
            Orb::NewFloatingTieredPackagePrice::Cadence::TaggedSymbol
          )
        SEMI_ANNUAL =
          T.let(
            :semi_annual,
            Orb::NewFloatingTieredPackagePrice::Cadence::TaggedSymbol
          )
        MONTHLY =
          T.let(
            :monthly,
            Orb::NewFloatingTieredPackagePrice::Cadence::TaggedSymbol
          )
        QUARTERLY =
          T.let(
            :quarterly,
            Orb::NewFloatingTieredPackagePrice::Cadence::TaggedSymbol
          )
        ONE_TIME =
          T.let(
            :one_time,
            Orb::NewFloatingTieredPackagePrice::Cadence::TaggedSymbol
          )
        CUSTOM =
          T.let(
            :custom,
            Orb::NewFloatingTieredPackagePrice::Cadence::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::NewFloatingTieredPackagePrice::Cadence::TaggedSymbol]
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
            T.all(Symbol, Orb::NewFloatingTieredPackagePrice::ModelType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TIERED_PACKAGE =
          T.let(
            :tiered_package,
            Orb::NewFloatingTieredPackagePrice::ModelType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::NewFloatingTieredPackagePrice::ModelType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class TieredPackageConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::NewFloatingTieredPackagePrice::TieredPackageConfig,
              Orb::Internal::AnyHash
            )
          end

        # Package size
        sig { returns(String) }
        attr_accessor :package_size

        # Apply tiered pricing after rounding up the quantity to the package size. Tiers
        # are defined using exclusive lower bounds.
        sig do
          returns(
            T::Array[
              Orb::NewFloatingTieredPackagePrice::TieredPackageConfig::Tier
            ]
          )
        end
        attr_accessor :tiers

        # Configuration for tiered_package pricing
        sig do
          params(
            package_size: String,
            tiers:
              T::Array[
                Orb::NewFloatingTieredPackagePrice::TieredPackageConfig::Tier::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # Package size
          package_size:,
          # Apply tiered pricing after rounding up the quantity to the package size. Tiers
          # are defined using exclusive lower bounds.
          tiers:
        )
        end

        sig do
          override.returns(
            {
              package_size: String,
              tiers:
                T::Array[
                  Orb::NewFloatingTieredPackagePrice::TieredPackageConfig::Tier
                ]
            }
          )
        end
        def to_hash
        end

        class Tier < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::NewFloatingTieredPackagePrice::TieredPackageConfig::Tier,
                Orb::Internal::AnyHash
              )
            end

          # Price per package
          sig { returns(String) }
          attr_accessor :per_unit

          # Tier lower bound
          sig { returns(String) }
          attr_accessor :tier_lower_bound

          # Configuration for a single tier with business logic
          sig do
            params(per_unit: String, tier_lower_bound: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # Price per package
            per_unit:,
            # Tier lower bound
            tier_lower_bound:
          )
          end

          sig do
            override.returns({ per_unit: String, tier_lower_bound: String })
          end
          def to_hash
          end
        end
      end
    end
  end
end
