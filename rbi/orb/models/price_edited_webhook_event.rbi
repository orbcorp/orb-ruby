# typed: strong

module Orb
  module Models
    class PriceEditedWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::PriceEditedWebhookEvent, Orb::Internal::AnyHash)
        end

      # The ID of this webhook event.
      sig { returns(String) }
      attr_accessor :id

      # The time at which this event was created, to the second.
      sig { returns(Time) }
      attr_accessor :created_at

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

      sig { returns(Orb::PriceEditedWebhookEvent::Properties) }
      attr_reader :properties

      sig do
        params(
          properties: Orb::PriceEditedWebhookEvent::Properties::OrHash
        ).void
      end
      attr_writer :properties

      # The event this payload describes.
      sig { returns(Orb::PriceEditedWebhookEvent::Type::TaggedSymbol) }
      attr_accessor :type

      # Issued when a price is edited.
      sig do
        params(
          id: String,
          created_at: Time,
          price:
            T.any(
              Orb::Price::Unit::OrHash,
              Orb::Price::Tiered::OrHash,
              Orb::Price::Bulk::OrHash,
              Orb::Price::BulkWithFilters::OrHash,
              Orb::Price::Package::OrHash,
              Orb::Price::Matrix::OrHash,
              Orb::Price::ThresholdTotalAmount::OrHash,
              Orb::Price::TieredPackage::OrHash,
              Orb::Price::TieredWithMinimum::OrHash,
              Orb::Price::GroupedTiered::OrHash,
              Orb::Price::GroupedTieredMatrix::OrHash,
              Orb::Price::TieredPackageWithMinimum::OrHash,
              Orb::Price::PackageWithAllocation::OrHash,
              Orb::Price::UnitWithPercent::OrHash,
              Orb::Price::MatrixWithAllocation::OrHash,
              Orb::Price::TieredMatrixWithAllocation::OrHash,
              Orb::Price::MatrixWithThresholdDiscounts::OrHash,
              Orb::Price::TieredWithProration::OrHash,
              Orb::Price::UnitWithProration::OrHash,
              Orb::Price::GroupedAllocation::OrHash,
              Orb::Price::BulkWithProration::OrHash,
              Orb::Price::GroupedWithProratedMinimum::OrHash,
              Orb::Price::GroupedWithMeteredMinimum::OrHash,
              Orb::Price::GroupedWithMinMaxThresholds::OrHash,
              Orb::Price::MatrixWithDisplayName::OrHash,
              Orb::Price::GroupedTieredPackage::OrHash,
              Orb::Price::MaxGroupTieredPackage::OrHash,
              Orb::Price::ScalableMatrixWithUnitPricing::OrHash,
              Orb::Price::ScalableMatrixWithTieredPricing::OrHash,
              Orb::Price::CumulativeGroupedBulk::OrHash,
              Orb::Price::CumulativeGroupedAllocation::OrHash,
              Orb::Price::DailyCreditAllowance::OrHash,
              Orb::Price::MeteredAllowance::OrHash,
              Orb::Price::MinimumComposite::OrHash,
              Orb::Price::Percent::OrHash,
              Orb::Price::EventOutput::OrHash
            ),
          properties: Orb::PriceEditedWebhookEvent::Properties::OrHash,
          type: Orb::PriceEditedWebhookEvent::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of this webhook event.
        id:,
        # The time at which this event was created, to the second.
        created_at:,
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
        properties:,
        # The event this payload describes.
        type:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            price: Orb::Price::Variants,
            properties: Orb::PriceEditedWebhookEvent::Properties,
            type: Orb::PriceEditedWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Properties < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PriceEditedWebhookEvent::Properties,
              Orb::Internal::AnyHash
            )
          end

        # metadata values are non-null on the wire (deleting a key removes it from
        # storage); the Optional[str] values only exist on the new half of a metadata
        # FieldChange.
        sig do
          returns(Orb::PriceEditedWebhookEvent::Properties::PreviousAttributes)
        end
        attr_reader :previous_attributes

        sig do
          params(
            previous_attributes:
              Orb::PriceEditedWebhookEvent::Properties::PreviousAttributes::OrHash
          ).void
        end
        attr_writer :previous_attributes

        sig do
          params(
            previous_attributes:
              Orb::PriceEditedWebhookEvent::Properties::PreviousAttributes::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # metadata values are non-null on the wire (deleting a key removes it from
          # storage); the Optional[str] values only exist on the new half of a metadata
          # FieldChange.
          previous_attributes:
        )
        end

        sig do
          override.returns(
            {
              previous_attributes:
                Orb::PriceEditedWebhookEvent::Properties::PreviousAttributes
            }
          )
        end
        def to_hash
        end

        class PreviousAttributes < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::PriceEditedWebhookEvent::Properties::PreviousAttributes,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_accessor :metadata

          # metadata values are non-null on the wire (deleting a key removes it from
          # storage); the Optional[str] values only exist on the new half of a metadata
          # FieldChange.
          sig do
            params(metadata: T.nilable(T::Hash[Symbol, String])).returns(
              T.attached_class
            )
          end
          def self.new(metadata: nil)
          end

          sig do
            override.returns({ metadata: T.nilable(T::Hash[Symbol, String]) })
          end
          def to_hash
          end
        end
      end

      # The event this payload describes.
      module Type
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::PriceEditedWebhookEvent::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRICE_EDITED =
          T.let(
            :"price.edited",
            Orb::PriceEditedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::PriceEditedWebhookEvent::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
