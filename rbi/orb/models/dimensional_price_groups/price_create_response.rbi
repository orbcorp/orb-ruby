# typed: strong

module Orb
  module Models
    module DimensionalPriceGroups
      class PriceCreateResponse < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Models::DimensionalPriceGroups::PriceCreateResponse,
              Orb::Internal::AnyHash
            )
          end

        # The prices created by this request, in request order.
        sig { returns(T::Array[Orb::Price::Variants]) }
        attr_accessor :data

        sig do
          params(
            data:
              T::Array[
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
                )
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # The prices created by this request, in request order.
          data:
        )
        end

        sig { override.returns({ data: T::Array[Orb::Price::Variants] }) }
        def to_hash
        end
      end
    end
  end
end
