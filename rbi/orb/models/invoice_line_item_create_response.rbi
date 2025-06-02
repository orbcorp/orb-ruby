# typed: strong

module Orb
  module Models
    class InvoiceLineItemCreateResponse < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::Models::InvoiceLineItemCreateResponse,
            Orb::Internal::AnyHash
          )
        end

      # A unique ID for this line item.
      sig { returns(String) }
      attr_accessor :id

      # The line amount after any adjustments and before overage conversion, credits and
      # partial invoicing.
      sig { returns(String) }
      attr_accessor :adjusted_subtotal

      # All adjustments applied to the line item in the order they were applied based on
      # invoice calculations (ie. usage discounts -> amount discounts -> percentage
      # discounts -> minimums -> maximums).
      sig do
        returns(
          T::Array[
            Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Variants
          ]
        )
      end
      attr_accessor :adjustments

      # The final amount for a line item after all adjustments and pre paid credits have
      # been applied.
      sig { returns(String) }
      attr_accessor :amount

      # The number of prepaid credits applied.
      sig { returns(String) }
      attr_accessor :credits_applied

      sig { returns(T.nilable(Orb::Discount::Variants)) }
      attr_accessor :discount

      # The end date of the range of time applied for this line item's price.
      sig { returns(Time) }
      attr_accessor :end_date

      # An additional filter that was used to calculate the usage for this line item.
      sig { returns(T.nilable(String)) }
      attr_accessor :filter

      # [DEPRECATED] For configured prices that are split by a grouping key, this will
      # be populated with the key and a value. The `amount` and `subtotal` will be the
      # values for this particular grouping.
      sig { returns(T.nilable(String)) }
      attr_accessor :grouping

      # This field is deprecated in favor of `adjustments`.
      sig do
        returns(T.nilable(Orb::Models::InvoiceLineItemCreateResponse::Maximum))
      end
      attr_reader :maximum

      sig do
        params(
          maximum:
            T.nilable(
              Orb::Models::InvoiceLineItemCreateResponse::Maximum::OrHash
            )
        ).void
      end
      attr_writer :maximum

      # This field is deprecated in favor of `adjustments`.
      sig { returns(T.nilable(String)) }
      attr_accessor :maximum_amount

      # This field is deprecated in favor of `adjustments`.
      sig do
        returns(T.nilable(Orb::Models::InvoiceLineItemCreateResponse::Minimum))
      end
      attr_reader :minimum

      sig do
        params(
          minimum:
            T.nilable(
              Orb::Models::InvoiceLineItemCreateResponse::Minimum::OrHash
            )
        ).void
      end
      attr_writer :minimum

      # This field is deprecated in favor of `adjustments`.
      sig { returns(T.nilable(String)) }
      attr_accessor :minimum_amount

      # The name of the price associated with this line item.
      sig { returns(String) }
      attr_accessor :name

      # Any amount applied from a partial invoice
      sig { returns(String) }
      attr_accessor :partially_invoiced_amount

      # The Price resource represents a price that can be billed on a subscription,
      # resulting in a charge on an invoice in the form of an invoice line item. Prices
      # take a quantity and determine an amount to bill.
      #
      # Orb supports a few different pricing models out of the box. Each of these models
      # is serialized differently in a given Price object. The model_type field
      # determines the key for the configuration object that is present.
      #
      # For more on the types of prices, see
      # [the core concepts documentation](/core-concepts#plan-and-price)
      sig { returns(Orb::Price::Variants) }
      attr_accessor :price

      # Either the fixed fee quantity or the usage during the service period.
      sig { returns(Float) }
      attr_accessor :quantity

      # The start date of the range of time applied for this line item's price.
      sig { returns(Time) }
      attr_accessor :start_date

      # For complex pricing structures, the line item can be broken down further in
      # `sub_line_items`.
      sig do
        returns(
          T::Array[
            Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Variants
          ]
        )
      end
      attr_accessor :sub_line_items

      # The line amount before before any adjustments.
      sig { returns(String) }
      attr_accessor :subtotal

      # An array of tax rates and their incurred tax amounts. Empty if no tax
      # integration is configured.
      sig do
        returns(T::Array[Orb::Models::InvoiceLineItemCreateResponse::TaxAmount])
      end
      attr_accessor :tax_amounts

      # A list of customer ids that were used to calculate the usage for this line item.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :usage_customer_ids

      sig do
        params(
          id: String,
          adjusted_subtotal: String,
          adjustments:
            T::Array[
              T.any(
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::UsageDiscount::OrHash,
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::AmountDiscount::OrHash,
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::PercentageDiscount::OrHash,
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Minimum::OrHash,
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Maximum::OrHash
              )
            ],
          amount: String,
          credits_applied: String,
          discount:
            T.nilable(
              T.any(
                Orb::PercentageDiscount::OrHash,
                Orb::TrialDiscount::OrHash,
                Orb::UsageDiscount::OrHash,
                Orb::AmountDiscount::OrHash
              )
            ),
          end_date: Time,
          filter: T.nilable(String),
          grouping: T.nilable(String),
          maximum:
            T.nilable(
              Orb::Models::InvoiceLineItemCreateResponse::Maximum::OrHash
            ),
          maximum_amount: T.nilable(String),
          minimum:
            T.nilable(
              Orb::Models::InvoiceLineItemCreateResponse::Minimum::OrHash
            ),
          minimum_amount: T.nilable(String),
          name: String,
          partially_invoiced_amount: String,
          price:
            T.any(
              Orb::Price::Unit::OrHash,
              Orb::Price::Package::OrHash,
              Orb::Price::Matrix::OrHash,
              Orb::Price::Tiered::OrHash,
              Orb::Price::TieredBps::OrHash,
              Orb::Price::Bps::OrHash,
              Orb::Price::BulkBps::OrHash,
              Orb::Price::Bulk::OrHash,
              Orb::Price::ThresholdTotalAmount::OrHash,
              Orb::Price::TieredPackage::OrHash,
              Orb::Price::GroupedTiered::OrHash,
              Orb::Price::TieredWithMinimum::OrHash,
              Orb::Price::TieredPackageWithMinimum::OrHash,
              Orb::Price::PackageWithAllocation::OrHash,
              Orb::Price::UnitWithPercent::OrHash,
              Orb::Price::MatrixWithAllocation::OrHash,
              Orb::Price::TieredWithProration::OrHash,
              Orb::Price::UnitWithProration::OrHash,
              Orb::Price::GroupedAllocation::OrHash,
              Orb::Price::GroupedWithProratedMinimum::OrHash,
              Orb::Price::GroupedWithMeteredMinimum::OrHash,
              Orb::Price::MatrixWithDisplayName::OrHash,
              Orb::Price::BulkWithProration::OrHash,
              Orb::Price::GroupedTieredPackage::OrHash,
              Orb::Price::MaxGroupTieredPackage::OrHash,
              Orb::Price::ScalableMatrixWithUnitPricing::OrHash,
              Orb::Price::ScalableMatrixWithTieredPricing::OrHash,
              Orb::Price::CumulativeGroupedBulk::OrHash
            ),
          quantity: Float,
          start_date: Time,
          sub_line_items:
            T::Array[
              T.any(
                Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Matrix::OrHash,
                Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Tier::OrHash,
                Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Null::OrHash
              )
            ],
          subtotal: String,
          tax_amounts:
            T::Array[
              Orb::Models::InvoiceLineItemCreateResponse::TaxAmount::OrHash
            ],
          usage_customer_ids: T.nilable(T::Array[String])
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for this line item.
        id:,
        # The line amount after any adjustments and before overage conversion, credits and
        # partial invoicing.
        adjusted_subtotal:,
        # All adjustments applied to the line item in the order they were applied based on
        # invoice calculations (ie. usage discounts -> amount discounts -> percentage
        # discounts -> minimums -> maximums).
        adjustments:,
        # The final amount for a line item after all adjustments and pre paid credits have
        # been applied.
        amount:,
        # The number of prepaid credits applied.
        credits_applied:,
        discount:,
        # The end date of the range of time applied for this line item's price.
        end_date:,
        # An additional filter that was used to calculate the usage for this line item.
        filter:,
        # [DEPRECATED] For configured prices that are split by a grouping key, this will
        # be populated with the key and a value. The `amount` and `subtotal` will be the
        # values for this particular grouping.
        grouping:,
        # This field is deprecated in favor of `adjustments`.
        maximum:,
        # This field is deprecated in favor of `adjustments`.
        maximum_amount:,
        # This field is deprecated in favor of `adjustments`.
        minimum:,
        # This field is deprecated in favor of `adjustments`.
        minimum_amount:,
        # The name of the price associated with this line item.
        name:,
        # Any amount applied from a partial invoice
        partially_invoiced_amount:,
        # The Price resource represents a price that can be billed on a subscription,
        # resulting in a charge on an invoice in the form of an invoice line item. Prices
        # take a quantity and determine an amount to bill.
        #
        # Orb supports a few different pricing models out of the box. Each of these models
        # is serialized differently in a given Price object. The model_type field
        # determines the key for the configuration object that is present.
        #
        # For more on the types of prices, see
        # [the core concepts documentation](/core-concepts#plan-and-price)
        price:,
        # Either the fixed fee quantity or the usage during the service period.
        quantity:,
        # The start date of the range of time applied for this line item's price.
        start_date:,
        # For complex pricing structures, the line item can be broken down further in
        # `sub_line_items`.
        sub_line_items:,
        # The line amount before before any adjustments.
        subtotal:,
        # An array of tax rates and their incurred tax amounts. Empty if no tax
        # integration is configured.
        tax_amounts:,
        # A list of customer ids that were used to calculate the usage for this line item.
        usage_customer_ids:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            adjusted_subtotal: String,
            adjustments:
              T::Array[
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Variants
              ],
            amount: String,
            credits_applied: String,
            discount: T.nilable(Orb::Discount::Variants),
            end_date: Time,
            filter: T.nilable(String),
            grouping: T.nilable(String),
            maximum:
              T.nilable(Orb::Models::InvoiceLineItemCreateResponse::Maximum),
            maximum_amount: T.nilable(String),
            minimum:
              T.nilable(Orb::Models::InvoiceLineItemCreateResponse::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            partially_invoiced_amount: String,
            price: Orb::Price::Variants,
            quantity: Float,
            start_date: Time,
            sub_line_items:
              T::Array[
                Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Variants
              ],
            subtotal: String,
            tax_amounts:
              T::Array[Orb::Models::InvoiceLineItemCreateResponse::TaxAmount],
            usage_customer_ids: T.nilable(T::Array[String])
          }
        )
      end
      def to_hash
      end

      module Adjustment
        extend Orb::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Orb::Models::InvoiceLineItemCreateResponse::Adjustment::UsageDiscount,
              Orb::Models::InvoiceLineItemCreateResponse::Adjustment::AmountDiscount,
              Orb::Models::InvoiceLineItemCreateResponse::Adjustment::PercentageDiscount,
              Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Minimum,
              Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Maximum
            )
          end

        class UsageDiscount < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::UsageDiscount,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(Symbol) }
          attr_accessor :adjustment_type

          # The value applied by an adjustment.
          sig { returns(String) }
          attr_accessor :amount

          # The price IDs that this adjustment applies to.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # The filters that determine which prices to apply this adjustment to.
          sig do
            returns(
              T::Array[
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::UsageDiscount::Filter
              ]
            )
          end
          attr_accessor :filters

          # True for adjustments that apply to an entire invocice, false for adjustments
          # that apply to only one price.
          sig { returns(T::Boolean) }
          attr_accessor :is_invoice_level

          # The reason for the adjustment.
          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          # The number of usage units by which to discount the price this adjustment applies
          # to in a given billing period.
          sig { returns(Float) }
          attr_accessor :usage_discount

          sig do
            params(
              id: String,
              amount: String,
              applies_to_price_ids: T::Array[String],
              filters:
                T::Array[
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::UsageDiscount::Filter::OrHash
                ],
              is_invoice_level: T::Boolean,
              reason: T.nilable(String),
              usage_discount: Float,
              adjustment_type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            # The value applied by an adjustment.
            amount:,
            # The price IDs that this adjustment applies to.
            applies_to_price_ids:,
            # The filters that determine which prices to apply this adjustment to.
            filters:,
            # True for adjustments that apply to an entire invocice, false for adjustments
            # that apply to only one price.
            is_invoice_level:,
            # The reason for the adjustment.
            reason:,
            # The number of usage units by which to discount the price this adjustment applies
            # to in a given billing period.
            usage_discount:,
            adjustment_type: :usage_discount
          )
          end

          sig do
            override.returns(
              {
                id: String,
                adjustment_type: Symbol,
                amount: String,
                applies_to_price_ids: T::Array[String],
                filters:
                  T::Array[
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::UsageDiscount::Filter
                  ],
                is_invoice_level: T::Boolean,
                reason: T.nilable(String),
                usage_discount: Float
              }
            )
          end
          def to_hash
          end

          class Filter < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::UsageDiscount::Filter,
                  Orb::Internal::AnyHash
                )
              end

            # The property of the price to filter on.
            sig do
              returns(
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::UsageDiscount::Filter::Field::TaggedSymbol
              )
            end
            attr_accessor :field

            # Should prices that match the filter be included or excluded.
            sig do
              returns(
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::UsageDiscount::Filter::Operator::TaggedSymbol
              )
            end
            attr_accessor :operator

            # The IDs or values that match this filter.
            sig { returns(T::Array[String]) }
            attr_accessor :values

            sig do
              params(
                field:
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::UsageDiscount::Filter::Field::OrSymbol,
                operator:
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::UsageDiscount::Filter::Operator::OrSymbol,
                values: T::Array[String]
              ).returns(T.attached_class)
            end
            def self.new(
              # The property of the price to filter on.
              field:,
              # Should prices that match the filter be included or excluded.
              operator:,
              # The IDs or values that match this filter.
              values:
            )
            end

            sig do
              override.returns(
                {
                  field:
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::UsageDiscount::Filter::Field::TaggedSymbol,
                  operator:
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::UsageDiscount::Filter::Operator::TaggedSymbol,
                  values: T::Array[String]
                }
              )
            end
            def to_hash
            end

            # The property of the price to filter on.
            module Field
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::UsageDiscount::Filter::Field
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PRICE_ID =
                T.let(
                  :price_id,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::UsageDiscount::Filter::Field::TaggedSymbol
                )
              ITEM_ID =
                T.let(
                  :item_id,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::UsageDiscount::Filter::Field::TaggedSymbol
                )
              PRICE_TYPE =
                T.let(
                  :price_type,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::UsageDiscount::Filter::Field::TaggedSymbol
                )
              CURRENCY =
                T.let(
                  :currency,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::UsageDiscount::Filter::Field::TaggedSymbol
                )
              PRICING_UNIT_ID =
                T.let(
                  :pricing_unit_id,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::UsageDiscount::Filter::Field::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::UsageDiscount::Filter::Field::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Should prices that match the filter be included or excluded.
            module Operator
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::UsageDiscount::Filter::Operator
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INCLUDES =
                T.let(
                  :includes,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::UsageDiscount::Filter::Operator::TaggedSymbol
                )
              EXCLUDES =
                T.let(
                  :excludes,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::UsageDiscount::Filter::Operator::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::UsageDiscount::Filter::Operator::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class AmountDiscount < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::AmountDiscount,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(Symbol) }
          attr_accessor :adjustment_type

          # The value applied by an adjustment.
          sig { returns(String) }
          attr_accessor :amount

          # The amount by which to discount the prices this adjustment applies to in a given
          # billing period.
          sig { returns(String) }
          attr_accessor :amount_discount

          # The price IDs that this adjustment applies to.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # The filters that determine which prices to apply this adjustment to.
          sig do
            returns(
              T::Array[
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::AmountDiscount::Filter
              ]
            )
          end
          attr_accessor :filters

          # True for adjustments that apply to an entire invocice, false for adjustments
          # that apply to only one price.
          sig { returns(T::Boolean) }
          attr_accessor :is_invoice_level

          # The reason for the adjustment.
          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          sig do
            params(
              id: String,
              amount: String,
              amount_discount: String,
              applies_to_price_ids: T::Array[String],
              filters:
                T::Array[
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::AmountDiscount::Filter::OrHash
                ],
              is_invoice_level: T::Boolean,
              reason: T.nilable(String),
              adjustment_type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            # The value applied by an adjustment.
            amount:,
            # The amount by which to discount the prices this adjustment applies to in a given
            # billing period.
            amount_discount:,
            # The price IDs that this adjustment applies to.
            applies_to_price_ids:,
            # The filters that determine which prices to apply this adjustment to.
            filters:,
            # True for adjustments that apply to an entire invocice, false for adjustments
            # that apply to only one price.
            is_invoice_level:,
            # The reason for the adjustment.
            reason:,
            adjustment_type: :amount_discount
          )
          end

          sig do
            override.returns(
              {
                id: String,
                adjustment_type: Symbol,
                amount: String,
                amount_discount: String,
                applies_to_price_ids: T::Array[String],
                filters:
                  T::Array[
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::AmountDiscount::Filter
                  ],
                is_invoice_level: T::Boolean,
                reason: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class Filter < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::AmountDiscount::Filter,
                  Orb::Internal::AnyHash
                )
              end

            # The property of the price to filter on.
            sig do
              returns(
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::AmountDiscount::Filter::Field::TaggedSymbol
              )
            end
            attr_accessor :field

            # Should prices that match the filter be included or excluded.
            sig do
              returns(
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::AmountDiscount::Filter::Operator::TaggedSymbol
              )
            end
            attr_accessor :operator

            # The IDs or values that match this filter.
            sig { returns(T::Array[String]) }
            attr_accessor :values

            sig do
              params(
                field:
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::AmountDiscount::Filter::Field::OrSymbol,
                operator:
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::AmountDiscount::Filter::Operator::OrSymbol,
                values: T::Array[String]
              ).returns(T.attached_class)
            end
            def self.new(
              # The property of the price to filter on.
              field:,
              # Should prices that match the filter be included or excluded.
              operator:,
              # The IDs or values that match this filter.
              values:
            )
            end

            sig do
              override.returns(
                {
                  field:
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::AmountDiscount::Filter::Field::TaggedSymbol,
                  operator:
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::AmountDiscount::Filter::Operator::TaggedSymbol,
                  values: T::Array[String]
                }
              )
            end
            def to_hash
            end

            # The property of the price to filter on.
            module Field
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::AmountDiscount::Filter::Field
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PRICE_ID =
                T.let(
                  :price_id,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::AmountDiscount::Filter::Field::TaggedSymbol
                )
              ITEM_ID =
                T.let(
                  :item_id,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::AmountDiscount::Filter::Field::TaggedSymbol
                )
              PRICE_TYPE =
                T.let(
                  :price_type,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::AmountDiscount::Filter::Field::TaggedSymbol
                )
              CURRENCY =
                T.let(
                  :currency,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::AmountDiscount::Filter::Field::TaggedSymbol
                )
              PRICING_UNIT_ID =
                T.let(
                  :pricing_unit_id,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::AmountDiscount::Filter::Field::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::AmountDiscount::Filter::Field::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Should prices that match the filter be included or excluded.
            module Operator
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::AmountDiscount::Filter::Operator
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INCLUDES =
                T.let(
                  :includes,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::AmountDiscount::Filter::Operator::TaggedSymbol
                )
              EXCLUDES =
                T.let(
                  :excludes,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::AmountDiscount::Filter::Operator::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::AmountDiscount::Filter::Operator::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class PercentageDiscount < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::PercentageDiscount,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(Symbol) }
          attr_accessor :adjustment_type

          # The value applied by an adjustment.
          sig { returns(String) }
          attr_accessor :amount

          # The price IDs that this adjustment applies to.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # The filters that determine which prices to apply this adjustment to.
          sig do
            returns(
              T::Array[
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::PercentageDiscount::Filter
              ]
            )
          end
          attr_accessor :filters

          # True for adjustments that apply to an entire invocice, false for adjustments
          # that apply to only one price.
          sig { returns(T::Boolean) }
          attr_accessor :is_invoice_level

          # The percentage (as a value between 0 and 1) by which to discount the price
          # intervals this adjustment applies to in a given billing period.
          sig { returns(Float) }
          attr_accessor :percentage_discount

          # The reason for the adjustment.
          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          sig do
            params(
              id: String,
              amount: String,
              applies_to_price_ids: T::Array[String],
              filters:
                T::Array[
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::PercentageDiscount::Filter::OrHash
                ],
              is_invoice_level: T::Boolean,
              percentage_discount: Float,
              reason: T.nilable(String),
              adjustment_type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            # The value applied by an adjustment.
            amount:,
            # The price IDs that this adjustment applies to.
            applies_to_price_ids:,
            # The filters that determine which prices to apply this adjustment to.
            filters:,
            # True for adjustments that apply to an entire invocice, false for adjustments
            # that apply to only one price.
            is_invoice_level:,
            # The percentage (as a value between 0 and 1) by which to discount the price
            # intervals this adjustment applies to in a given billing period.
            percentage_discount:,
            # The reason for the adjustment.
            reason:,
            adjustment_type: :percentage_discount
          )
          end

          sig do
            override.returns(
              {
                id: String,
                adjustment_type: Symbol,
                amount: String,
                applies_to_price_ids: T::Array[String],
                filters:
                  T::Array[
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::PercentageDiscount::Filter
                  ],
                is_invoice_level: T::Boolean,
                percentage_discount: Float,
                reason: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class Filter < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::PercentageDiscount::Filter,
                  Orb::Internal::AnyHash
                )
              end

            # The property of the price to filter on.
            sig do
              returns(
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::PercentageDiscount::Filter::Field::TaggedSymbol
              )
            end
            attr_accessor :field

            # Should prices that match the filter be included or excluded.
            sig do
              returns(
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::PercentageDiscount::Filter::Operator::TaggedSymbol
              )
            end
            attr_accessor :operator

            # The IDs or values that match this filter.
            sig { returns(T::Array[String]) }
            attr_accessor :values

            sig do
              params(
                field:
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::PercentageDiscount::Filter::Field::OrSymbol,
                operator:
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::PercentageDiscount::Filter::Operator::OrSymbol,
                values: T::Array[String]
              ).returns(T.attached_class)
            end
            def self.new(
              # The property of the price to filter on.
              field:,
              # Should prices that match the filter be included or excluded.
              operator:,
              # The IDs or values that match this filter.
              values:
            )
            end

            sig do
              override.returns(
                {
                  field:
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::PercentageDiscount::Filter::Field::TaggedSymbol,
                  operator:
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::PercentageDiscount::Filter::Operator::TaggedSymbol,
                  values: T::Array[String]
                }
              )
            end
            def to_hash
            end

            # The property of the price to filter on.
            module Field
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::PercentageDiscount::Filter::Field
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PRICE_ID =
                T.let(
                  :price_id,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::PercentageDiscount::Filter::Field::TaggedSymbol
                )
              ITEM_ID =
                T.let(
                  :item_id,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::PercentageDiscount::Filter::Field::TaggedSymbol
                )
              PRICE_TYPE =
                T.let(
                  :price_type,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::PercentageDiscount::Filter::Field::TaggedSymbol
                )
              CURRENCY =
                T.let(
                  :currency,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::PercentageDiscount::Filter::Field::TaggedSymbol
                )
              PRICING_UNIT_ID =
                T.let(
                  :pricing_unit_id,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::PercentageDiscount::Filter::Field::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::PercentageDiscount::Filter::Field::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Should prices that match the filter be included or excluded.
            module Operator
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::PercentageDiscount::Filter::Operator
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INCLUDES =
                T.let(
                  :includes,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::PercentageDiscount::Filter::Operator::TaggedSymbol
                )
              EXCLUDES =
                T.let(
                  :excludes,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::PercentageDiscount::Filter::Operator::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::PercentageDiscount::Filter::Operator::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Minimum,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(Symbol) }
          attr_accessor :adjustment_type

          # The value applied by an adjustment.
          sig { returns(String) }
          attr_accessor :amount

          # The price IDs that this adjustment applies to.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # The filters that determine which prices to apply this adjustment to.
          sig do
            returns(
              T::Array[
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Minimum::Filter
              ]
            )
          end
          attr_accessor :filters

          # True for adjustments that apply to an entire invocice, false for adjustments
          # that apply to only one price.
          sig { returns(T::Boolean) }
          attr_accessor :is_invoice_level

          # The item ID that revenue from this minimum will be attributed to.
          sig { returns(String) }
          attr_accessor :item_id

          # The minimum amount to charge in a given billing period for the prices this
          # adjustment applies to.
          sig { returns(String) }
          attr_accessor :minimum_amount

          # The reason for the adjustment.
          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          sig do
            params(
              id: String,
              amount: String,
              applies_to_price_ids: T::Array[String],
              filters:
                T::Array[
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Minimum::Filter::OrHash
                ],
              is_invoice_level: T::Boolean,
              item_id: String,
              minimum_amount: String,
              reason: T.nilable(String),
              adjustment_type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            # The value applied by an adjustment.
            amount:,
            # The price IDs that this adjustment applies to.
            applies_to_price_ids:,
            # The filters that determine which prices to apply this adjustment to.
            filters:,
            # True for adjustments that apply to an entire invocice, false for adjustments
            # that apply to only one price.
            is_invoice_level:,
            # The item ID that revenue from this minimum will be attributed to.
            item_id:,
            # The minimum amount to charge in a given billing period for the prices this
            # adjustment applies to.
            minimum_amount:,
            # The reason for the adjustment.
            reason:,
            adjustment_type: :minimum
          )
          end

          sig do
            override.returns(
              {
                id: String,
                adjustment_type: Symbol,
                amount: String,
                applies_to_price_ids: T::Array[String],
                filters:
                  T::Array[
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Minimum::Filter
                  ],
                is_invoice_level: T::Boolean,
                item_id: String,
                minimum_amount: String,
                reason: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class Filter < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Minimum::Filter,
                  Orb::Internal::AnyHash
                )
              end

            # The property of the price to filter on.
            sig do
              returns(
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Minimum::Filter::Field::TaggedSymbol
              )
            end
            attr_accessor :field

            # Should prices that match the filter be included or excluded.
            sig do
              returns(
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Minimum::Filter::Operator::TaggedSymbol
              )
            end
            attr_accessor :operator

            # The IDs or values that match this filter.
            sig { returns(T::Array[String]) }
            attr_accessor :values

            sig do
              params(
                field:
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Minimum::Filter::Field::OrSymbol,
                operator:
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Minimum::Filter::Operator::OrSymbol,
                values: T::Array[String]
              ).returns(T.attached_class)
            end
            def self.new(
              # The property of the price to filter on.
              field:,
              # Should prices that match the filter be included or excluded.
              operator:,
              # The IDs or values that match this filter.
              values:
            )
            end

            sig do
              override.returns(
                {
                  field:
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Minimum::Filter::Field::TaggedSymbol,
                  operator:
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Minimum::Filter::Operator::TaggedSymbol,
                  values: T::Array[String]
                }
              )
            end
            def to_hash
            end

            # The property of the price to filter on.
            module Field
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Minimum::Filter::Field
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PRICE_ID =
                T.let(
                  :price_id,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Minimum::Filter::Field::TaggedSymbol
                )
              ITEM_ID =
                T.let(
                  :item_id,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Minimum::Filter::Field::TaggedSymbol
                )
              PRICE_TYPE =
                T.let(
                  :price_type,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Minimum::Filter::Field::TaggedSymbol
                )
              CURRENCY =
                T.let(
                  :currency,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Minimum::Filter::Field::TaggedSymbol
                )
              PRICING_UNIT_ID =
                T.let(
                  :pricing_unit_id,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Minimum::Filter::Field::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Minimum::Filter::Field::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Should prices that match the filter be included or excluded.
            module Operator
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Minimum::Filter::Operator
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INCLUDES =
                T.let(
                  :includes,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Minimum::Filter::Operator::TaggedSymbol
                )
              EXCLUDES =
                T.let(
                  :excludes,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Minimum::Filter::Operator::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Minimum::Filter::Operator::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Maximum,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(Symbol) }
          attr_accessor :adjustment_type

          # The value applied by an adjustment.
          sig { returns(String) }
          attr_accessor :amount

          # The price IDs that this adjustment applies to.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # The filters that determine which prices to apply this adjustment to.
          sig do
            returns(
              T::Array[
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Maximum::Filter
              ]
            )
          end
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

          sig do
            params(
              id: String,
              amount: String,
              applies_to_price_ids: T::Array[String],
              filters:
                T::Array[
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Maximum::Filter::OrHash
                ],
              is_invoice_level: T::Boolean,
              maximum_amount: String,
              reason: T.nilable(String),
              adjustment_type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
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
            adjustment_type: :maximum
          )
          end

          sig do
            override.returns(
              {
                id: String,
                adjustment_type: Symbol,
                amount: String,
                applies_to_price_ids: T::Array[String],
                filters:
                  T::Array[
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Maximum::Filter
                  ],
                is_invoice_level: T::Boolean,
                maximum_amount: String,
                reason: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class Filter < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Maximum::Filter,
                  Orb::Internal::AnyHash
                )
              end

            # The property of the price to filter on.
            sig do
              returns(
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Maximum::Filter::Field::TaggedSymbol
              )
            end
            attr_accessor :field

            # Should prices that match the filter be included or excluded.
            sig do
              returns(
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Maximum::Filter::Operator::TaggedSymbol
              )
            end
            attr_accessor :operator

            # The IDs or values that match this filter.
            sig { returns(T::Array[String]) }
            attr_accessor :values

            sig do
              params(
                field:
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Maximum::Filter::Field::OrSymbol,
                operator:
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Maximum::Filter::Operator::OrSymbol,
                values: T::Array[String]
              ).returns(T.attached_class)
            end
            def self.new(
              # The property of the price to filter on.
              field:,
              # Should prices that match the filter be included or excluded.
              operator:,
              # The IDs or values that match this filter.
              values:
            )
            end

            sig do
              override.returns(
                {
                  field:
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Maximum::Filter::Field::TaggedSymbol,
                  operator:
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Maximum::Filter::Operator::TaggedSymbol,
                  values: T::Array[String]
                }
              )
            end
            def to_hash
            end

            # The property of the price to filter on.
            module Field
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Maximum::Filter::Field
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PRICE_ID =
                T.let(
                  :price_id,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Maximum::Filter::Field::TaggedSymbol
                )
              ITEM_ID =
                T.let(
                  :item_id,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Maximum::Filter::Field::TaggedSymbol
                )
              PRICE_TYPE =
                T.let(
                  :price_type,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Maximum::Filter::Field::TaggedSymbol
                )
              CURRENCY =
                T.let(
                  :currency,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Maximum::Filter::Field::TaggedSymbol
                )
              PRICING_UNIT_ID =
                T.let(
                  :pricing_unit_id,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Maximum::Filter::Field::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Maximum::Filter::Field::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Should prices that match the filter be included or excluded.
            module Operator
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Maximum::Filter::Operator
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INCLUDES =
                T.let(
                  :includes,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Maximum::Filter::Operator::TaggedSymbol
                )
              EXCLUDES =
                T.let(
                  :excludes,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Maximum::Filter::Operator::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Maximum::Filter::Operator::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        sig do
          override.returns(
            T::Array[
              Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Variants
            ]
          )
        end
        def self.variants
        end
      end

      class Maximum < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Models::InvoiceLineItemCreateResponse::Maximum,
              Orb::Internal::AnyHash
            )
          end

        # List of price_ids that this maximum amount applies to. For plan/plan phase
        # maximums, this can be a subset of prices.
        sig { returns(T::Array[String]) }
        attr_accessor :applies_to_price_ids

        # The filters that determine which prices to apply this maximum to.
        sig do
          returns(
            T::Array[
              Orb::Models::InvoiceLineItemCreateResponse::Maximum::Filter
            ]
          )
        end
        attr_accessor :filters

        # Maximum amount applied
        sig { returns(String) }
        attr_accessor :maximum_amount

        # This field is deprecated in favor of `adjustments`.
        sig do
          params(
            applies_to_price_ids: T::Array[String],
            filters:
              T::Array[
                Orb::Models::InvoiceLineItemCreateResponse::Maximum::Filter::OrHash
              ],
            maximum_amount: String
          ).returns(T.attached_class)
        end
        def self.new(
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          applies_to_price_ids:,
          # The filters that determine which prices to apply this maximum to.
          filters:,
          # Maximum amount applied
          maximum_amount:
        )
        end

        sig do
          override.returns(
            {
              applies_to_price_ids: T::Array[String],
              filters:
                T::Array[
                  Orb::Models::InvoiceLineItemCreateResponse::Maximum::Filter
                ],
              maximum_amount: String
            }
          )
        end
        def to_hash
        end

        class Filter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Models::InvoiceLineItemCreateResponse::Maximum::Filter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::Models::InvoiceLineItemCreateResponse::Maximum::Filter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Models::InvoiceLineItemCreateResponse::Maximum::Filter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field:
                Orb::Models::InvoiceLineItemCreateResponse::Maximum::Filter::Field::OrSymbol,
              operator:
                Orb::Models::InvoiceLineItemCreateResponse::Maximum::Filter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Models::InvoiceLineItemCreateResponse::Maximum::Filter::Field::TaggedSymbol,
                operator:
                  Orb::Models::InvoiceLineItemCreateResponse::Maximum::Filter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Models::InvoiceLineItemCreateResponse::Maximum::Filter::Field
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Models::InvoiceLineItemCreateResponse::Maximum::Filter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Models::InvoiceLineItemCreateResponse::Maximum::Filter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Models::InvoiceLineItemCreateResponse::Maximum::Filter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Models::InvoiceLineItemCreateResponse::Maximum::Filter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Models::InvoiceLineItemCreateResponse::Maximum::Filter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Models::InvoiceLineItemCreateResponse::Maximum::Filter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Models::InvoiceLineItemCreateResponse::Maximum::Filter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Models::InvoiceLineItemCreateResponse::Maximum::Filter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Models::InvoiceLineItemCreateResponse::Maximum::Filter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Models::InvoiceLineItemCreateResponse::Maximum::Filter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      class Minimum < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Models::InvoiceLineItemCreateResponse::Minimum,
              Orb::Internal::AnyHash
            )
          end

        # List of price_ids that this minimum amount applies to. For plan/plan phase
        # minimums, this can be a subset of prices.
        sig { returns(T::Array[String]) }
        attr_accessor :applies_to_price_ids

        # The filters that determine which prices to apply this minimum to.
        sig do
          returns(
            T::Array[
              Orb::Models::InvoiceLineItemCreateResponse::Minimum::Filter
            ]
          )
        end
        attr_accessor :filters

        # Minimum amount applied
        sig { returns(String) }
        attr_accessor :minimum_amount

        # This field is deprecated in favor of `adjustments`.
        sig do
          params(
            applies_to_price_ids: T::Array[String],
            filters:
              T::Array[
                Orb::Models::InvoiceLineItemCreateResponse::Minimum::Filter::OrHash
              ],
            minimum_amount: String
          ).returns(T.attached_class)
        end
        def self.new(
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          applies_to_price_ids:,
          # The filters that determine which prices to apply this minimum to.
          filters:,
          # Minimum amount applied
          minimum_amount:
        )
        end

        sig do
          override.returns(
            {
              applies_to_price_ids: T::Array[String],
              filters:
                T::Array[
                  Orb::Models::InvoiceLineItemCreateResponse::Minimum::Filter
                ],
              minimum_amount: String
            }
          )
        end
        def to_hash
        end

        class Filter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Models::InvoiceLineItemCreateResponse::Minimum::Filter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::Models::InvoiceLineItemCreateResponse::Minimum::Filter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Models::InvoiceLineItemCreateResponse::Minimum::Filter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field:
                Orb::Models::InvoiceLineItemCreateResponse::Minimum::Filter::Field::OrSymbol,
              operator:
                Orb::Models::InvoiceLineItemCreateResponse::Minimum::Filter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Models::InvoiceLineItemCreateResponse::Minimum::Filter::Field::TaggedSymbol,
                operator:
                  Orb::Models::InvoiceLineItemCreateResponse::Minimum::Filter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Models::InvoiceLineItemCreateResponse::Minimum::Filter::Field
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Models::InvoiceLineItemCreateResponse::Minimum::Filter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Models::InvoiceLineItemCreateResponse::Minimum::Filter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Models::InvoiceLineItemCreateResponse::Minimum::Filter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Models::InvoiceLineItemCreateResponse::Minimum::Filter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Models::InvoiceLineItemCreateResponse::Minimum::Filter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Models::InvoiceLineItemCreateResponse::Minimum::Filter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Models::InvoiceLineItemCreateResponse::Minimum::Filter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Models::InvoiceLineItemCreateResponse::Minimum::Filter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Models::InvoiceLineItemCreateResponse::Minimum::Filter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Models::InvoiceLineItemCreateResponse::Minimum::Filter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      module SubLineItem
        extend Orb::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Matrix,
              Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Tier,
              Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Null
            )
          end

        class Matrix < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Matrix,
                Orb::Internal::AnyHash
              )
            end

          # The total amount for this sub line item.
          sig { returns(String) }
          attr_accessor :amount

          sig do
            returns(
              T.nilable(
                Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Matrix::Grouping
              )
            )
          end
          attr_reader :grouping

          sig do
            params(
              grouping:
                T.nilable(
                  Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Matrix::Grouping::OrHash
                )
            ).void
          end
          attr_writer :grouping

          sig do
            returns(
              Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Matrix::MatrixConfig
            )
          end
          attr_reader :matrix_config

          sig do
            params(
              matrix_config:
                Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Matrix::MatrixConfig::OrHash
            ).void
          end
          attr_writer :matrix_config

          sig { returns(String) }
          attr_accessor :name

          sig { returns(Float) }
          attr_accessor :quantity

          sig { returns(Symbol) }
          attr_accessor :type

          sig do
            params(
              amount: String,
              grouping:
                T.nilable(
                  Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Matrix::Grouping::OrHash
                ),
              matrix_config:
                Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Matrix::MatrixConfig::OrHash,
              name: String,
              quantity: Float,
              type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The total amount for this sub line item.
            amount:,
            grouping:,
            matrix_config:,
            name:,
            quantity:,
            type: :matrix
          )
          end

          sig do
            override.returns(
              {
                amount: String,
                grouping:
                  T.nilable(
                    Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Matrix::Grouping
                  ),
                matrix_config:
                  Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Matrix::MatrixConfig,
                name: String,
                quantity: Float,
                type: Symbol
              }
            )
          end
          def to_hash
          end

          class Grouping < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Matrix::Grouping,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :key

            # No value indicates the default group
            sig { returns(T.nilable(String)) }
            attr_accessor :value

            sig do
              params(key: String, value: T.nilable(String)).returns(
                T.attached_class
              )
            end
            def self.new(
              key:,
              # No value indicates the default group
              value:
            )
            end

            sig { override.returns({ key: String, value: T.nilable(String) }) }
            def to_hash
            end
          end

          class MatrixConfig < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Matrix::MatrixConfig,
                  Orb::Internal::AnyHash
                )
              end

            # The ordered dimension values for this line item.
            sig { returns(T::Array[T.nilable(String)]) }
            attr_accessor :dimension_values

            sig do
              params(dimension_values: T::Array[T.nilable(String)]).returns(
                T.attached_class
              )
            end
            def self.new(
              # The ordered dimension values for this line item.
              dimension_values:
            )
            end

            sig do
              override.returns(
                { dimension_values: T::Array[T.nilable(String)] }
              )
            end
            def to_hash
            end
          end
        end

        class Tier < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Tier,
                Orb::Internal::AnyHash
              )
            end

          # The total amount for this sub line item.
          sig { returns(String) }
          attr_accessor :amount

          sig do
            returns(
              T.nilable(
                Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Tier::Grouping
              )
            )
          end
          attr_reader :grouping

          sig do
            params(
              grouping:
                T.nilable(
                  Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Tier::Grouping::OrHash
                )
            ).void
          end
          attr_writer :grouping

          sig { returns(String) }
          attr_accessor :name

          sig { returns(Float) }
          attr_accessor :quantity

          sig do
            returns(
              Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Tier::TierConfig
            )
          end
          attr_reader :tier_config

          sig do
            params(
              tier_config:
                Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Tier::TierConfig::OrHash
            ).void
          end
          attr_writer :tier_config

          sig { returns(Symbol) }
          attr_accessor :type

          sig do
            params(
              amount: String,
              grouping:
                T.nilable(
                  Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Tier::Grouping::OrHash
                ),
              name: String,
              quantity: Float,
              tier_config:
                Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Tier::TierConfig::OrHash,
              type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The total amount for this sub line item.
            amount:,
            grouping:,
            name:,
            quantity:,
            tier_config:,
            type: :tier
          )
          end

          sig do
            override.returns(
              {
                amount: String,
                grouping:
                  T.nilable(
                    Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Tier::Grouping
                  ),
                name: String,
                quantity: Float,
                tier_config:
                  Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Tier::TierConfig,
                type: Symbol
              }
            )
          end
          def to_hash
          end

          class Grouping < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Tier::Grouping,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :key

            # No value indicates the default group
            sig { returns(T.nilable(String)) }
            attr_accessor :value

            sig do
              params(key: String, value: T.nilable(String)).returns(
                T.attached_class
              )
            end
            def self.new(
              key:,
              # No value indicates the default group
              value:
            )
            end

            sig { override.returns({ key: String, value: T.nilable(String) }) }
            def to_hash
            end
          end

          class TierConfig < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Tier::TierConfig,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(Float) }
            attr_accessor :first_unit

            sig { returns(T.nilable(Float)) }
            attr_accessor :last_unit

            sig { returns(String) }
            attr_accessor :unit_amount

            sig do
              params(
                first_unit: Float,
                last_unit: T.nilable(Float),
                unit_amount: String
              ).returns(T.attached_class)
            end
            def self.new(first_unit:, last_unit:, unit_amount:)
            end

            sig do
              override.returns(
                {
                  first_unit: Float,
                  last_unit: T.nilable(Float),
                  unit_amount: String
                }
              )
            end
            def to_hash
            end
          end
        end

        class Null < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Null,
                Orb::Internal::AnyHash
              )
            end

          # The total amount for this sub line item.
          sig { returns(String) }
          attr_accessor :amount

          sig do
            returns(
              T.nilable(
                Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Null::Grouping
              )
            )
          end
          attr_reader :grouping

          sig do
            params(
              grouping:
                T.nilable(
                  Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Null::Grouping::OrHash
                )
            ).void
          end
          attr_writer :grouping

          sig { returns(String) }
          attr_accessor :name

          sig { returns(Float) }
          attr_accessor :quantity

          sig { returns(Symbol) }
          attr_accessor :type

          sig do
            params(
              amount: String,
              grouping:
                T.nilable(
                  Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Null::Grouping::OrHash
                ),
              name: String,
              quantity: Float,
              type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The total amount for this sub line item.
            amount:,
            grouping:,
            name:,
            quantity:,
            type: :"'null'"
          )
          end

          sig do
            override.returns(
              {
                amount: String,
                grouping:
                  T.nilable(
                    Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Null::Grouping
                  ),
                name: String,
                quantity: Float,
                type: Symbol
              }
            )
          end
          def to_hash
          end

          class Grouping < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Null::Grouping,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :key

            # No value indicates the default group
            sig { returns(T.nilable(String)) }
            attr_accessor :value

            sig do
              params(key: String, value: T.nilable(String)).returns(
                T.attached_class
              )
            end
            def self.new(
              key:,
              # No value indicates the default group
              value:
            )
            end

            sig { override.returns({ key: String, value: T.nilable(String) }) }
            def to_hash
            end
          end
        end

        sig do
          override.returns(
            T::Array[
              Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Variants
            ]
          )
        end
        def self.variants
        end
      end

      class TaxAmount < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Models::InvoiceLineItemCreateResponse::TaxAmount,
              Orb::Internal::AnyHash
            )
          end

        # The amount of additional tax incurred by this tax rate.
        sig { returns(String) }
        attr_accessor :amount

        # The human-readable description of the applied tax rate.
        sig { returns(String) }
        attr_accessor :tax_rate_description

        # The tax rate percentage, out of 100.
        sig { returns(T.nilable(String)) }
        attr_accessor :tax_rate_percentage

        sig do
          params(
            amount: String,
            tax_rate_description: String,
            tax_rate_percentage: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The amount of additional tax incurred by this tax rate.
          amount:,
          # The human-readable description of the applied tax rate.
          tax_rate_description:,
          # The tax rate percentage, out of 100.
          tax_rate_percentage:
        )
        end

        sig do
          override.returns(
            {
              amount: String,
              tax_rate_description: String,
              tax_rate_percentage: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
