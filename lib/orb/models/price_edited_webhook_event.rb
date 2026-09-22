# frozen_string_literal: true

module Orb
  module Models
    class PriceEditedWebhookEvent < Orb::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of this webhook event.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   The time at which this event was created, to the second.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute price
      #   The Price resource represents a price that can be billed on a subscription,
      #   resulting in a charge on an invoice in the form of an invoice line item. Prices
      #   take a quantity and determine an amount to bill.
      #
      #   Orb supports a few different pricing models out of the box. Each of these models
      #   is serialized differently in a given Price object. The model_type field
      #   determines the key for the configuration object that is present.
      #
      #   For more on the types of prices, see
      #   [the core concepts documentation](/core-concepts#plan-and-price)
      #
      #   @return [Orb::Models::Price::Unit, Orb::Models::Price::Tiered, Orb::Models::Price::Bulk, Orb::Models::Price::BulkWithFilters, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::GroupedTiered, Orb::Models::Price::GroupedTieredMatrix, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredMatrixWithAllocation, Orb::Models::Price::MatrixWithThresholdDiscounts, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::GroupedWithMinMaxThresholds, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk, Orb::Models::Price::CumulativeGroupedAllocation, Orb::Models::Price::DailyCreditAllowance, Orb::Models::Price::MeteredAllowance, Orb::Models::Price::MinimumComposite, Orb::Models::Price::Percent, Orb::Models::Price::EventOutput]
      required :price, union: -> { Orb::Price }

      # @!attribute properties
      #
      #   @return [Orb::Models::PriceEditedWebhookEvent::Properties]
      required :properties, -> { Orb::PriceEditedWebhookEvent::Properties }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::PriceEditedWebhookEvent::Type]
      required :type, enum: -> { Orb::PriceEditedWebhookEvent::Type }

      # @!method initialize(id:, created_at:, price:, properties:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::PriceEditedWebhookEvent} for more details.
      #
      #   Issued when a price is edited.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param price [Orb::Models::Price::Unit, Orb::Models::Price::Tiered, Orb::Models::Price::Bulk, Orb::Models::Price::BulkWithFilters, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::GroupedTiered, Orb::Models::Price::GroupedTieredMatrix, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredMatrixWithAllocation, Orb::Models::Price::MatrixWithThresholdDiscounts, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::GroupedWithMinMaxThresholds, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk, Orb::Models::Price::CumulativeGroupedAllocation, Orb::Models::Price::DailyCreditAllowance, Orb::Models::Price::MeteredAllowance, Orb::Models::Price::MinimumComposite, Orb::Models::Price::Percent, Orb::Models::Price::EventOutput] The Price resource represents a price that can be billed on a subscription, resu
      #
      #   @param properties [Orb::Models::PriceEditedWebhookEvent::Properties]
      #
      #   @param type [Symbol, Orb::Models::PriceEditedWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::PriceEditedWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute previous_attributes
        #   metadata values are non-null on the wire (deleting a key removes it from
        #   storage); the Optional[str] values only exist on the new half of a metadata
        #   FieldChange.
        #
        #   @return [Orb::Models::PriceEditedWebhookEvent::Properties::PreviousAttributes]
        required :previous_attributes, -> { Orb::PriceEditedWebhookEvent::Properties::PreviousAttributes }

        # @!method initialize(previous_attributes:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::PriceEditedWebhookEvent::Properties} for more details.
        #
        #   @param previous_attributes [Orb::Models::PriceEditedWebhookEvent::Properties::PreviousAttributes] metadata values are non-null on the wire (deleting a key removes it from storage

        # @see Orb::Models::PriceEditedWebhookEvent::Properties#previous_attributes
        class PreviousAttributes < Orb::Internal::Type::BaseModel
          # @!attribute metadata
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :metadata, Orb::Internal::Type::HashOf[String], nil?: true

          # @!method initialize(metadata: nil)
          #   metadata values are non-null on the wire (deleting a key removes it from
          #   storage); the Optional[str] values only exist on the new half of a metadata
          #   FieldChange.
          #
          #   @param metadata [Hash{Symbol=>String}, nil]
        end
      end

      # The event this payload describes.
      #
      # @see Orb::Models::PriceEditedWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        PRICE_EDITED = :"price.edited"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
