# frozen_string_literal: true

module Orb
  module Models
    class NewSubscriptionTieredWithMinimumPrice < Orb::Internal::Type::BaseModel
      # @!attribute cadence
      #   The cadence to bill for this price on.
      #
      #   @return [Symbol, Orb::Models::NewSubscriptionTieredWithMinimumPrice::Cadence]
      required :cadence, enum: -> { Orb::NewSubscriptionTieredWithMinimumPrice::Cadence }

      # @!attribute item_id
      #   The id of the item the price will be associated with.
      #
      #   @return [String]
      required :item_id, String

      # @!attribute model_type
      #
      #   @return [Symbol, Orb::Models::NewSubscriptionTieredWithMinimumPrice::ModelType]
      required :model_type, enum: -> { Orb::NewSubscriptionTieredWithMinimumPrice::ModelType }

      # @!attribute name
      #   The name of the price.
      #
      #   @return [String]
      required :name, String

      # @!attribute tiered_with_minimum_config
      #
      #   @return [Hash{Symbol=>Object}]
      required :tiered_with_minimum_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

      # @!attribute billable_metric_id
      #   The id of the billable metric for the price. Only needed if the price is
      #   usage-based.
      #
      #   @return [String, nil]
      optional :billable_metric_id, String, nil?: true

      # @!attribute billed_in_advance
      #   If the Price represents a fixed cost, the price will be billed in-advance if
      #   this is true, and in-arrears if this is false.
      #
      #   @return [Boolean, nil]
      optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

      # @!attribute billing_cycle_configuration
      #   For custom cadence: specifies the duration of the billing period in days or
      #   months.
      #
      #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
      optional :billing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

      # @!attribute conversion_rate
      #   The per unit conversion rate of the price currency to the invoicing currency.
      #
      #   @return [Float, nil]
      optional :conversion_rate, Float, nil?: true

      # @!attribute currency
      #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
      #   price is billed.
      #
      #   @return [String, nil]
      optional :currency, String, nil?: true

      # @!attribute dimensional_price_configuration
      #   For dimensional price: specifies a price group and dimension values
      #
      #   @return [Orb::Models::NewDimensionalPriceConfiguration, nil]
      optional :dimensional_price_configuration, -> { Orb::NewDimensionalPriceConfiguration }, nil?: true

      # @!attribute external_price_id
      #   An alias for the price.
      #
      #   @return [String, nil]
      optional :external_price_id, String, nil?: true

      # @!attribute fixed_price_quantity
      #   If the Price represents a fixed cost, this represents the quantity of units
      #   applied.
      #
      #   @return [Float, nil]
      optional :fixed_price_quantity, Float, nil?: true

      # @!attribute invoice_grouping_key
      #   The property used to group this price on an invoice
      #
      #   @return [String, nil]
      optional :invoice_grouping_key, String, nil?: true

      # @!attribute invoicing_cycle_configuration
      #   Within each billing cycle, specifies the cadence at which invoices are produced.
      #   If unspecified, a single invoice is produced per billing cycle.
      #
      #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
      optional :invoicing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

      # @!attribute metadata
      #   User-specified key/value pairs for the resource. Individual keys can be removed
      #   by setting the value to `null`, and the entire metadata mapping can be cleared
      #   by setting `metadata` to `null`.
      #
      #   @return [Hash{Symbol=>String, nil}, nil]
      optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

      # @!attribute reference_id
      #   A transient ID that can be used to reference this price when adding adjustments
      #   in the same API call.
      #
      #   @return [String, nil]
      optional :reference_id, String, nil?: true

      # @!method initialize(cadence:, item_id:, model_type:, name:, tiered_with_minimum_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::NewSubscriptionTieredWithMinimumPrice} for more details.
      #
      #   @param cadence [Symbol, Orb::Models::NewSubscriptionTieredWithMinimumPrice::Cadence] The cadence to bill for this price on.
      #
      #   @param item_id [String] The id of the item the price will be associated with.
      #
      #   @param model_type [Symbol, Orb::Models::NewSubscriptionTieredWithMinimumPrice::ModelType]
      #
      #   @param name [String] The name of the price.
      #
      #   @param tiered_with_minimum_config [Hash{Symbol=>Object}]
      #
      #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
      #
      #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
      #
      #   @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
      #
      #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
      #
      #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
      #
      #   @param dimensional_price_configuration [Orb::Models::NewDimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
      #
      #   @param external_price_id [String, nil] An alias for the price.
      #
      #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
      #
      #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
      #
      #   @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
      #
      #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
      #
      #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments

      # The cadence to bill for this price on.
      #
      # @see Orb::Models::NewSubscriptionTieredWithMinimumPrice#cadence
      module Cadence
        extend Orb::Internal::Type::Enum

        ANNUAL = :annual
        SEMI_ANNUAL = :semi_annual
        MONTHLY = :monthly
        QUARTERLY = :quarterly
        ONE_TIME = :one_time
        CUSTOM = :custom

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Orb::Models::NewSubscriptionTieredWithMinimumPrice#model_type
      module ModelType
        extend Orb::Internal::Type::Enum

        TIERED_WITH_MINIMUM = :tiered_with_minimum

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
