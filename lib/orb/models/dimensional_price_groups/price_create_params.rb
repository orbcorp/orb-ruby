# frozen_string_literal: true

module Orb
  module Models
    module DimensionalPriceGroups
      # @see Orb::Resources::DimensionalPriceGroups::Prices#create
      class PriceCreateParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute dimensional_price_group_id
        #
        #   @return [String]
        required :dimensional_price_group_id, String

        # @!attribute cadence
        #   Billing cadence for every price
        #
        #   @return [Symbol, Orb::Models::DimensionalPriceGroups::PriceCreateParams::Cadence]
        required :cadence, enum: -> { Orb::DimensionalPriceGroups::PriceCreateParams::Cadence }

        # @!attribute currency
        #   An ISO 4217 currency string for every price.
        #
        #   @return [String]
        required :currency, String

        # @!attribute item_id
        #   The item for every price. Must be the group's billable metric item.
        #
        #   @return [String]
        required :item_id, String

        # @!attribute model_type
        #
        #   @return [Symbol, Orb::Models::DimensionalPriceGroups::PriceCreateParams::ModelType]
        required :model_type, enum: -> { Orb::DimensionalPriceGroups::PriceCreateParams::ModelType }

        # @!attribute prices
        #
        #   @return [Array<Orb::Models::DimensionalPriceGroups::PriceCreateParams::Price>]
        required :prices,
                 -> { Orb::Internal::Type::ArrayOf[Orb::DimensionalPriceGroups::PriceCreateParams::Price] }

        # @!attribute tiers
        #   Shared tier boundaries. Required for tiered prices and omitted for unit prices.
        #
        #   @return [Array<Orb::Models::DimensionalPriceGroups::PriceCreateParams::Tier>, nil]
        optional :tiers,
                 -> { Orb::Internal::Type::ArrayOf[Orb::DimensionalPriceGroups::PriceCreateParams::Tier] },
                 nil?: true

        # @!method initialize(dimensional_price_group_id:, cadence:, currency:, item_id:, model_type:, prices:, tiers: nil, request_options: {})
        #   @param dimensional_price_group_id [String]
        #
        #   @param cadence [Symbol, Orb::Models::DimensionalPriceGroups::PriceCreateParams::Cadence] Billing cadence for every price
        #
        #   @param currency [String] An ISO 4217 currency string for every price.
        #
        #   @param item_id [String] The item for every price. Must be the group's billable metric item.
        #
        #   @param model_type [Symbol, Orb::Models::DimensionalPriceGroups::PriceCreateParams::ModelType]
        #
        #   @param prices [Array<Orb::Models::DimensionalPriceGroups::PriceCreateParams::Price>]
        #
        #   @param tiers [Array<Orb::Models::DimensionalPriceGroups::PriceCreateParams::Tier>, nil] Shared tier boundaries. Required for tiered prices and omitted for unit prices.
        #
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

        # Billing cadence for every price
        module Cadence
          extend Orb::Internal::Type::Enum

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        module ModelType
          extend Orb::Internal::Type::Enum

          UNIT = :unit
          TIERED = :tiered

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class Price < Orb::Internal::Type::BaseModel
          # @!attribute amounts
          #   One amount for a unit price. One amount per tier for a tiered price, in tier
          #   order.
          #
          #   @return [Array<Float>]
          required :amounts, Orb::Internal::Type::ArrayOf[Float]

          # @!attribute dimension_values
          #   Dimension values, in the group's dimension order.
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String]

          # @!attribute name
          #   Price name. Defaults to the dimension values.
          #
          #   @return [String, nil]
          optional :name, String, nil?: true

          # @!method initialize(amounts:, dimension_values:, name: nil)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::DimensionalPriceGroups::PriceCreateParams::Price} for more
          #   details.
          #
          #   @param amounts [Array<Float>] One amount for a unit price. One amount per tier for a tiered price, in tier ord
          #
          #   @param dimension_values [Array<String>] Dimension values, in the group's dimension order.
          #
          #   @param name [String, nil] Price name. Defaults to the dimension values.
        end

        class Tier < Orb::Internal::Type::BaseModel
          # @!attribute first_unit
          #   Exclusive tier starting value
          #
          #   @return [Float]
          required :first_unit, Float

          # @!attribute last_unit
          #   Inclusive tier ending value. Null on the last tier.
          #
          #   @return [Float, nil]
          optional :last_unit, Float, nil?: true

          # @!method initialize(first_unit:, last_unit: nil)
          #   @param first_unit [Float] Exclusive tier starting value
          #
          #   @param last_unit [Float, nil] Inclusive tier ending value. Null on the last tier.
        end
      end
    end
  end
end
