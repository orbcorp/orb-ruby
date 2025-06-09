# typed: strong

module Orb
  module Models
    class NewFloatingPackageWithAllocationPrice < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::NewFloatingPackageWithAllocationPrice,
            Orb::Internal::AnyHash
          )
        end

      # The cadence to bill for this price on.
      sig do
        returns(Orb::NewFloatingPackageWithAllocationPrice::Cadence::OrSymbol)
      end
      attr_accessor :cadence

      # An ISO 4217 currency string for which this price is billed in.
      sig { returns(String) }
      attr_accessor :currency

      # The id of the item the price will be associated with.
      sig { returns(String) }
      attr_accessor :item_id

      sig do
        returns(Orb::NewFloatingPackageWithAllocationPrice::ModelType::OrSymbol)
      end
      attr_accessor :model_type

      # The name of the price.
      sig { returns(String) }
      attr_accessor :name

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :package_with_allocation_config

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
            Orb::NewFloatingPackageWithAllocationPrice::Cadence::OrSymbol,
          currency: String,
          item_id: String,
          model_type:
            Orb::NewFloatingPackageWithAllocationPrice::ModelType::OrSymbol,
          name: String,
          package_with_allocation_config: T::Hash[Symbol, T.anything],
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
        model_type:,
        # The name of the price.
        name:,
        package_with_allocation_config:,
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
              Orb::NewFloatingPackageWithAllocationPrice::Cadence::OrSymbol,
            currency: String,
            item_id: String,
            model_type:
              Orb::NewFloatingPackageWithAllocationPrice::ModelType::OrSymbol,
            name: String,
            package_with_allocation_config: T::Hash[Symbol, T.anything],
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
            T.all(Symbol, Orb::NewFloatingPackageWithAllocationPrice::Cadence)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ANNUAL =
          T.let(
            :annual,
            Orb::NewFloatingPackageWithAllocationPrice::Cadence::TaggedSymbol
          )
        SEMI_ANNUAL =
          T.let(
            :semi_annual,
            Orb::NewFloatingPackageWithAllocationPrice::Cadence::TaggedSymbol
          )
        MONTHLY =
          T.let(
            :monthly,
            Orb::NewFloatingPackageWithAllocationPrice::Cadence::TaggedSymbol
          )
        QUARTERLY =
          T.let(
            :quarterly,
            Orb::NewFloatingPackageWithAllocationPrice::Cadence::TaggedSymbol
          )
        ONE_TIME =
          T.let(
            :one_time,
            Orb::NewFloatingPackageWithAllocationPrice::Cadence::TaggedSymbol
          )
        CUSTOM =
          T.let(
            :custom,
            Orb::NewFloatingPackageWithAllocationPrice::Cadence::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::NewFloatingPackageWithAllocationPrice::Cadence::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module ModelType
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::NewFloatingPackageWithAllocationPrice::ModelType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PACKAGE_WITH_ALLOCATION =
          T.let(
            :package_with_allocation,
            Orb::NewFloatingPackageWithAllocationPrice::ModelType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::NewFloatingPackageWithAllocationPrice::ModelType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The configuration for the rate of the price currency to the invoicing currency.
      module ConversionRateConfig
        extend Orb::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Orb::UnitConversionRateConfig,
              Orb::TieredConversionRateConfig
            )
          end

        sig do
          override.returns(
            T::Array[
              Orb::NewFloatingPackageWithAllocationPrice::ConversionRateConfig::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
