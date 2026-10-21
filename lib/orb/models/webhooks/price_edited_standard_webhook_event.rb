# frozen_string_literal: true

module Orb
  module Models
    module Webhooks
      class PriceEditedStandardWebhookEvent < Orb::Internal::Type::BaseModel
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

        # @!attribute payload_style
        #   The serialization style this payload was rendered in, as configured on the
        #   endpoint.
        #
        #   @return [Symbol, Orb::Models::Webhooks::PriceEditedStandardWebhookEvent::PayloadStyle]
        required :payload_style, enum: -> { Orb::Webhooks::PriceEditedStandardWebhookEvent::PayloadStyle }

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
        #   @return [Orb::Models::Webhooks::PriceEditedStandardWebhookEvent::Properties]
        required :properties, -> { Orb::Webhooks::PriceEditedStandardWebhookEvent::Properties }

        # @!attribute type
        #   The event this payload describes.
        #
        #   @return [Symbol, Orb::Models::Webhooks::PriceEditedStandardWebhookEvent::Type]
        required :type, enum: -> { Orb::Webhooks::PriceEditedStandardWebhookEvent::Type }

        # @!method initialize(id:, created_at:, payload_style:, price:, properties:, type:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Webhooks::PriceEditedStandardWebhookEvent} for more details.
        #
        #   Issued when a price is edited.
        #
        #   @param id [String] The ID of this webhook event.
        #
        #   @param created_at [Time] The time at which this event was created, to the second.
        #
        #   @param payload_style [Symbol, Orb::Models::Webhooks::PriceEditedStandardWebhookEvent::PayloadStyle] The serialization style this payload was rendered in, as configured on the endpo
        #
        #   @param price [Orb::Models::Price::Unit, Orb::Models::Price::Tiered, Orb::Models::Price::Bulk, Orb::Models::Price::BulkWithFilters, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::GroupedTiered, Orb::Models::Price::GroupedTieredMatrix, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredMatrixWithAllocation, Orb::Models::Price::MatrixWithThresholdDiscounts, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::GroupedWithMinMaxThresholds, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk, Orb::Models::Price::CumulativeGroupedAllocation, Orb::Models::Price::DailyCreditAllowance, Orb::Models::Price::MeteredAllowance, Orb::Models::Price::MinimumComposite, Orb::Models::Price::Percent, Orb::Models::Price::EventOutput] The Price resource represents a price that can be billed on a subscription, resu
        #
        #   @param properties [Orb::Models::Webhooks::PriceEditedStandardWebhookEvent::Properties]
        #
        #   @param type [Symbol, Orb::Models::Webhooks::PriceEditedStandardWebhookEvent::Type] The event this payload describes.

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        #
        # @see Orb::Models::Webhooks::PriceEditedStandardWebhookEvent#payload_style
        module PayloadStyle
          extend Orb::Internal::Type::Enum

          EXPANDED = :expanded
          STANDARD = :standard

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Webhooks::PriceEditedStandardWebhookEvent#properties
        class Properties < Orb::Internal::Type::BaseModel
          # @!attribute previous_attributes
          #   metadata values are non-null on the wire (deleting a key removes it from
          #   storage); the Optional[str] values only exist on the new half of a metadata
          #   FieldChange.
          #
          #   @return [Orb::Models::Webhooks::PriceEditedStandardWebhookEvent::Properties::PreviousAttributes]
          required :previous_attributes,
                   -> { Orb::Webhooks::PriceEditedStandardWebhookEvent::Properties::PreviousAttributes }

          # @!method initialize(previous_attributes:)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Webhooks::PriceEditedStandardWebhookEvent::Properties} for more
          #   details.
          #
          #   @param previous_attributes [Orb::Models::Webhooks::PriceEditedStandardWebhookEvent::Properties::PreviousAttributes] metadata values are non-null on the wire (deleting a key removes it from storage

          # @see Orb::Models::Webhooks::PriceEditedStandardWebhookEvent::Properties#previous_attributes
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
        # @see Orb::Models::Webhooks::PriceEditedStandardWebhookEvent#type
        module Type
          extend Orb::Internal::Type::Enum

          PRICE_EDITED = :"price.edited"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
