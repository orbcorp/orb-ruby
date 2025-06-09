# typed: strong

module Orb
  module Models
    class NewFloatingBulkBPSPrice < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::NewFloatingBulkBPSPrice, Orb::Internal::AnyHash)
        end

      sig { returns(Orb::BulkBPSConfig) }
      attr_reader :bulk_bps_config

      sig { params(bulk_bps_config: Orb::BulkBPSConfig::OrHash).void }
      attr_writer :bulk_bps_config

      # The cadence to bill for this price on.
      sig { returns(Orb::NewFloatingBulkBPSPrice::Cadence::OrSymbol) }
      attr_accessor :cadence

      # An ISO 4217 currency string for which this price is billed in.
      sig { returns(String) }
      attr_accessor :currency

      # The id of the item the price will be associated with.
      sig { returns(String) }
      attr_accessor :item_id

      sig { returns(Orb::NewFloatingBulkBPSPrice::ModelType::OrSymbol) }
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
              Orb::NewFloatingBulkBPSPrice::ConversionRateConfig::Unit,
              Orb::NewFloatingBulkBPSPrice::ConversionRateConfig::Tiered
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
          bulk_bps_config: Orb::BulkBPSConfig::OrHash,
          cadence: Orb::NewFloatingBulkBPSPrice::Cadence::OrSymbol,
          currency: String,
          item_id: String,
          model_type: Orb::NewFloatingBulkBPSPrice::ModelType::OrSymbol,
          name: String,
          billable_metric_id: T.nilable(String),
          billed_in_advance: T.nilable(T::Boolean),
          billing_cycle_configuration:
            T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
          conversion_rate: T.nilable(Float),
          conversion_rate_config:
            T.nilable(
              T.any(
                Orb::NewFloatingBulkBPSPrice::ConversionRateConfig::Unit::OrHash,
                Orb::NewFloatingBulkBPSPrice::ConversionRateConfig::Tiered::OrHash
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
        bulk_bps_config:,
        # The cadence to bill for this price on.
        cadence:,
        # An ISO 4217 currency string for which this price is billed in.
        currency:,
        # The id of the item the price will be associated with.
        item_id:,
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
            bulk_bps_config: Orb::BulkBPSConfig,
            cadence: Orb::NewFloatingBulkBPSPrice::Cadence::OrSymbol,
            currency: String,
            item_id: String,
            model_type: Orb::NewFloatingBulkBPSPrice::ModelType::OrSymbol,
            name: String,
            billable_metric_id: T.nilable(String),
            billed_in_advance: T.nilable(T::Boolean),
            billing_cycle_configuration:
              T.nilable(Orb::NewBillingCycleConfiguration),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::NewFloatingBulkBPSPrice::ConversionRateConfig::Unit,
                  Orb::NewFloatingBulkBPSPrice::ConversionRateConfig::Tiered
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
          T.type_alias { T.all(Symbol, Orb::NewFloatingBulkBPSPrice::Cadence) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ANNUAL =
          T.let(:annual, Orb::NewFloatingBulkBPSPrice::Cadence::TaggedSymbol)
        SEMI_ANNUAL =
          T.let(
            :semi_annual,
            Orb::NewFloatingBulkBPSPrice::Cadence::TaggedSymbol
          )
        MONTHLY =
          T.let(:monthly, Orb::NewFloatingBulkBPSPrice::Cadence::TaggedSymbol)
        QUARTERLY =
          T.let(:quarterly, Orb::NewFloatingBulkBPSPrice::Cadence::TaggedSymbol)
        ONE_TIME =
          T.let(:one_time, Orb::NewFloatingBulkBPSPrice::Cadence::TaggedSymbol)
        CUSTOM =
          T.let(:custom, Orb::NewFloatingBulkBPSPrice::Cadence::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Orb::NewFloatingBulkBPSPrice::Cadence::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module ModelType
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::NewFloatingBulkBPSPrice::ModelType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BULK_BPS =
          T.let(
            :bulk_bps,
            Orb::NewFloatingBulkBPSPrice::ModelType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::NewFloatingBulkBPSPrice::ModelType::TaggedSymbol]
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
              Orb::NewFloatingBulkBPSPrice::ConversionRateConfig::Unit,
              Orb::NewFloatingBulkBPSPrice::ConversionRateConfig::Tiered
            )
          end

        class Unit < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::NewFloatingBulkBPSPrice::ConversionRateConfig::Unit,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :conversion_rate_type

          sig do
            returns(
              Orb::NewFloatingBulkBPSPrice::ConversionRateConfig::Unit::UnitConfig
            )
          end
          attr_reader :unit_config

          sig do
            params(
              unit_config:
                Orb::NewFloatingBulkBPSPrice::ConversionRateConfig::Unit::UnitConfig::OrHash
            ).void
          end
          attr_writer :unit_config

          sig do
            params(
              unit_config:
                Orb::NewFloatingBulkBPSPrice::ConversionRateConfig::Unit::UnitConfig::OrHash,
              conversion_rate_type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(unit_config:, conversion_rate_type: :unit)
          end

          sig do
            override.returns(
              {
                conversion_rate_type: Symbol,
                unit_config:
                  Orb::NewFloatingBulkBPSPrice::ConversionRateConfig::Unit::UnitConfig
              }
            )
          end
          def to_hash
          end

          class UnitConfig < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::NewFloatingBulkBPSPrice::ConversionRateConfig::Unit::UnitConfig,
                  Orb::Internal::AnyHash
                )
              end

            # Amount per unit of overage
            sig { returns(String) }
            attr_accessor :unit_amount

            sig { params(unit_amount: String).returns(T.attached_class) }
            def self.new(
              # Amount per unit of overage
              unit_amount:
            )
            end

            sig { override.returns({ unit_amount: String }) }
            def to_hash
            end
          end
        end

        class Tiered < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::NewFloatingBulkBPSPrice::ConversionRateConfig::Tiered,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :conversion_rate_type

          sig do
            returns(
              Orb::NewFloatingBulkBPSPrice::ConversionRateConfig::Tiered::TieredConfig
            )
          end
          attr_reader :tiered_config

          sig do
            params(
              tiered_config:
                Orb::NewFloatingBulkBPSPrice::ConversionRateConfig::Tiered::TieredConfig::OrHash
            ).void
          end
          attr_writer :tiered_config

          sig do
            params(
              tiered_config:
                Orb::NewFloatingBulkBPSPrice::ConversionRateConfig::Tiered::TieredConfig::OrHash,
              conversion_rate_type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(tiered_config:, conversion_rate_type: :tiered)
          end

          sig do
            override.returns(
              {
                conversion_rate_type: Symbol,
                tiered_config:
                  Orb::NewFloatingBulkBPSPrice::ConversionRateConfig::Tiered::TieredConfig
              }
            )
          end
          def to_hash
          end

          class TieredConfig < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::NewFloatingBulkBPSPrice::ConversionRateConfig::Tiered::TieredConfig,
                  Orb::Internal::AnyHash
                )
              end

            # Tiers for rating based on total usage quantities into the specified tier
            sig do
              returns(
                T::Array[
                  Orb::NewFloatingBulkBPSPrice::ConversionRateConfig::Tiered::TieredConfig::Tier
                ]
              )
            end
            attr_accessor :tiers

            sig do
              params(
                tiers:
                  T::Array[
                    Orb::NewFloatingBulkBPSPrice::ConversionRateConfig::Tiered::TieredConfig::Tier::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # Tiers for rating based on total usage quantities into the specified tier
              tiers:
            )
            end

            sig do
              override.returns(
                {
                  tiers:
                    T::Array[
                      Orb::NewFloatingBulkBPSPrice::ConversionRateConfig::Tiered::TieredConfig::Tier
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
                    Orb::NewFloatingBulkBPSPrice::ConversionRateConfig::Tiered::TieredConfig::Tier,
                    Orb::Internal::AnyHash
                  )
                end

              # Exclusive tier starting value
              sig { returns(Float) }
              attr_accessor :first_unit

              # Amount per unit of overage
              sig { returns(String) }
              attr_accessor :unit_amount

              # Inclusive tier ending value. If null, this is treated as the last tier
              sig { returns(T.nilable(Float)) }
              attr_accessor :last_unit

              sig do
                params(
                  first_unit: Float,
                  unit_amount: String,
                  last_unit: T.nilable(Float)
                ).returns(T.attached_class)
              end
              def self.new(
                # Exclusive tier starting value
                first_unit:,
                # Amount per unit of overage
                unit_amount:,
                # Inclusive tier ending value. If null, this is treated as the last tier
                last_unit: nil
              )
              end

              sig do
                override.returns(
                  {
                    first_unit: Float,
                    unit_amount: String,
                    last_unit: T.nilable(Float)
                  }
                )
              end
              def to_hash
              end
            end
          end
        end

        sig do
          override.returns(
            T::Array[
              Orb::NewFloatingBulkBPSPrice::ConversionRateConfig::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
