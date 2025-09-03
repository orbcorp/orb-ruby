# typed: strong

module Orb
  module Models
    class NewFloatingThresholdTotalAmountPrice < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::NewFloatingThresholdTotalAmountPrice,
            Orb::Internal::AnyHash
          )
        end

      # The cadence to bill for this price on.
      sig do
        returns(Orb::NewFloatingThresholdTotalAmountPrice::Cadence::OrSymbol)
      end
      attr_accessor :cadence

      # An ISO 4217 currency string for which this price is billed in.
      sig { returns(String) }
      attr_accessor :currency

      # The id of the item the price will be associated with.
      sig { returns(String) }
      attr_accessor :item_id

      # The pricing model type
      sig do
        returns(Orb::NewFloatingThresholdTotalAmountPrice::ModelType::OrSymbol)
      end
      attr_accessor :model_type

      # The name of the price.
      sig { returns(String) }
      attr_accessor :name

      # Configuration for threshold_total_amount pricing
      sig do
        returns(
          Orb::NewFloatingThresholdTotalAmountPrice::ThresholdTotalAmountConfig
        )
      end
      attr_reader :threshold_total_amount_config

      sig do
        params(
          threshold_total_amount_config:
            Orb::NewFloatingThresholdTotalAmountPrice::ThresholdTotalAmountConfig::OrHash
        ).void
      end
      attr_writer :threshold_total_amount_config

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
          cadence: Orb::NewFloatingThresholdTotalAmountPrice::Cadence::OrSymbol,
          currency: String,
          item_id: String,
          model_type:
            Orb::NewFloatingThresholdTotalAmountPrice::ModelType::OrSymbol,
          name: String,
          threshold_total_amount_config:
            Orb::NewFloatingThresholdTotalAmountPrice::ThresholdTotalAmountConfig::OrHash,
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
        # Configuration for threshold_total_amount pricing
        threshold_total_amount_config:,
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
              Orb::NewFloatingThresholdTotalAmountPrice::Cadence::OrSymbol,
            currency: String,
            item_id: String,
            model_type:
              Orb::NewFloatingThresholdTotalAmountPrice::ModelType::OrSymbol,
            name: String,
            threshold_total_amount_config:
              Orb::NewFloatingThresholdTotalAmountPrice::ThresholdTotalAmountConfig,
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
            T.all(Symbol, Orb::NewFloatingThresholdTotalAmountPrice::Cadence)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ANNUAL =
          T.let(
            :annual,
            Orb::NewFloatingThresholdTotalAmountPrice::Cadence::TaggedSymbol
          )
        SEMI_ANNUAL =
          T.let(
            :semi_annual,
            Orb::NewFloatingThresholdTotalAmountPrice::Cadence::TaggedSymbol
          )
        MONTHLY =
          T.let(
            :monthly,
            Orb::NewFloatingThresholdTotalAmountPrice::Cadence::TaggedSymbol
          )
        QUARTERLY =
          T.let(
            :quarterly,
            Orb::NewFloatingThresholdTotalAmountPrice::Cadence::TaggedSymbol
          )
        ONE_TIME =
          T.let(
            :one_time,
            Orb::NewFloatingThresholdTotalAmountPrice::Cadence::TaggedSymbol
          )
        CUSTOM =
          T.let(
            :custom,
            Orb::NewFloatingThresholdTotalAmountPrice::Cadence::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::NewFloatingThresholdTotalAmountPrice::Cadence::TaggedSymbol
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
            T.all(Symbol, Orb::NewFloatingThresholdTotalAmountPrice::ModelType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        THRESHOLD_TOTAL_AMOUNT =
          T.let(
            :threshold_total_amount,
            Orb::NewFloatingThresholdTotalAmountPrice::ModelType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::NewFloatingThresholdTotalAmountPrice::ModelType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class ThresholdTotalAmountConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::NewFloatingThresholdTotalAmountPrice::ThresholdTotalAmountConfig,
              Orb::Internal::AnyHash
            )
          end

        # When the quantity consumed passes a provided threshold, the configured total
        # will be charged
        sig do
          returns(
            T::Array[
              Orb::NewFloatingThresholdTotalAmountPrice::ThresholdTotalAmountConfig::ConsumptionTable
            ]
          )
        end
        attr_accessor :consumption_table

        # If true, the unit price will be prorated to the billing period
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :prorate

        # Configuration for threshold_total_amount pricing
        sig do
          params(
            consumption_table:
              T::Array[
                Orb::NewFloatingThresholdTotalAmountPrice::ThresholdTotalAmountConfig::ConsumptionTable::OrHash
              ],
            prorate: T.nilable(T::Boolean)
          ).returns(T.attached_class)
        end
        def self.new(
          # When the quantity consumed passes a provided threshold, the configured total
          # will be charged
          consumption_table:,
          # If true, the unit price will be prorated to the billing period
          prorate: nil
        )
        end

        sig do
          override.returns(
            {
              consumption_table:
                T::Array[
                  Orb::NewFloatingThresholdTotalAmountPrice::ThresholdTotalAmountConfig::ConsumptionTable
                ],
              prorate: T.nilable(T::Boolean)
            }
          )
        end
        def to_hash
        end

        class ConsumptionTable < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::NewFloatingThresholdTotalAmountPrice::ThresholdTotalAmountConfig::ConsumptionTable,
                Orb::Internal::AnyHash
              )
            end

          # Quantity threshold
          sig { returns(String) }
          attr_accessor :threshold

          # Total amount for this threshold
          sig { returns(String) }
          attr_accessor :total_amount

          # Configuration for a single threshold
          sig do
            params(threshold: String, total_amount: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # Quantity threshold
            threshold:,
            # Total amount for this threshold
            total_amount:
          )
          end

          sig { override.returns({ threshold: String, total_amount: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
