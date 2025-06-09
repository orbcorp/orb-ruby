# typed: strong

module Orb
  module Models
    class NewPlanTieredPackagePrice < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::NewPlanTieredPackagePrice, Orb::Internal::AnyHash)
        end

      # The cadence to bill for this price on.
      sig { returns(Orb::NewPlanTieredPackagePrice::Cadence::OrSymbol) }
      attr_accessor :cadence

      # The id of the item the price will be associated with.
      sig { returns(String) }
      attr_accessor :item_id

      sig { returns(Orb::NewPlanTieredPackagePrice::ModelType::OrSymbol) }
      attr_accessor :model_type

      # The name of the price.
      sig { returns(String) }
      attr_accessor :name

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :tiered_package_config

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

      # User-specified key/value pairs for the resource. Individual keys can be removed
      # by setting the value to `null`, and the entire metadata mapping can be cleared
      # by setting `metadata` to `null`.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      sig do
        params(
          cadence: Orb::NewPlanTieredPackagePrice::Cadence::OrSymbol,
          item_id: String,
          model_type: Orb::NewPlanTieredPackagePrice::ModelType::OrSymbol,
          name: String,
          tiered_package_config: T::Hash[Symbol, T.anything],
          billable_metric_id: T.nilable(String),
          billed_in_advance: T.nilable(T::Boolean),
          billing_cycle_configuration:
            T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
          conversion_rate: T.nilable(Float),
          currency: T.nilable(String),
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
        # The id of the item the price will be associated with.
        item_id:,
        model_type:,
        # The name of the price.
        name:,
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
        # User-specified key/value pairs for the resource. Individual keys can be removed
        # by setting the value to `null`, and the entire metadata mapping can be cleared
        # by setting `metadata` to `null`.
        metadata: nil
      )
      end

      sig do
        override.returns(
          {
            cadence: Orb::NewPlanTieredPackagePrice::Cadence::OrSymbol,
            item_id: String,
            model_type: Orb::NewPlanTieredPackagePrice::ModelType::OrSymbol,
            name: String,
            tiered_package_config: T::Hash[Symbol, T.anything],
            billable_metric_id: T.nilable(String),
            billed_in_advance: T.nilable(T::Boolean),
            billing_cycle_configuration:
              T.nilable(Orb::NewBillingCycleConfiguration),
            conversion_rate: T.nilable(Float),
            currency: T.nilable(String),
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
            T.all(Symbol, Orb::NewPlanTieredPackagePrice::Cadence)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ANNUAL =
          T.let(:annual, Orb::NewPlanTieredPackagePrice::Cadence::TaggedSymbol)
        SEMI_ANNUAL =
          T.let(
            :semi_annual,
            Orb::NewPlanTieredPackagePrice::Cadence::TaggedSymbol
          )
        MONTHLY =
          T.let(:monthly, Orb::NewPlanTieredPackagePrice::Cadence::TaggedSymbol)
        QUARTERLY =
          T.let(
            :quarterly,
            Orb::NewPlanTieredPackagePrice::Cadence::TaggedSymbol
          )
        ONE_TIME =
          T.let(
            :one_time,
            Orb::NewPlanTieredPackagePrice::Cadence::TaggedSymbol
          )
        CUSTOM =
          T.let(:custom, Orb::NewPlanTieredPackagePrice::Cadence::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Orb::NewPlanTieredPackagePrice::Cadence::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module ModelType
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::NewPlanTieredPackagePrice::ModelType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TIERED_PACKAGE =
          T.let(
            :tiered_package,
            Orb::NewPlanTieredPackagePrice::ModelType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::NewPlanTieredPackagePrice::ModelType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
