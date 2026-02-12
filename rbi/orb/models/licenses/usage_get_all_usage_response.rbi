# typed: strong

module Orb
  module Models
    module Licenses
      class UsageGetAllUsageResponse < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Models::Licenses::UsageGetAllUsageResponse,
              Orb::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[Orb::Models::Licenses::UsageGetAllUsageResponse::Data]
          )
        end
        attr_accessor :data

        sig { returns(Orb::PaginationMetadata) }
        attr_reader :pagination_metadata

        sig do
          params(pagination_metadata: Orb::PaginationMetadata::OrHash).void
        end
        attr_writer :pagination_metadata

        sig do
          params(
            data:
              T::Array[
                Orb::Models::Licenses::UsageGetAllUsageResponse::Data::OrHash
              ],
            pagination_metadata: Orb::PaginationMetadata::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:, pagination_metadata:)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[Orb::Models::Licenses::UsageGetAllUsageResponse::Data],
              pagination_metadata: Orb::PaginationMetadata
            }
          )
        end
        def to_hash
        end

        class Data < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Models::Licenses::UsageGetAllUsageResponse::Data,
                Orb::Internal::AnyHash
              )
            end

          # The total credits allocated to this license for the period.
          sig { returns(Float) }
          attr_accessor :allocated_credits

          # The credits consumed by this license for the period.
          sig { returns(Float) }
          attr_accessor :consumed_credits

          # The end date of the usage period.
          sig { returns(Date) }
          attr_accessor :end_date

          # The unique identifier for the license type.
          sig { returns(String) }
          attr_accessor :license_type_id

          # The pricing unit for the credits (e.g., 'credits').
          sig { returns(String) }
          attr_accessor :pricing_unit

          # The remaining credits available for this license (allocated - consumed).
          sig { returns(Float) }
          attr_accessor :remaining_credits

          # The start date of the usage period.
          sig { returns(Date) }
          attr_accessor :start_date

          # The unique identifier for the subscription.
          sig { returns(String) }
          attr_accessor :subscription_id

          # Credits consumed while the license was active (eligible for individual
          # allocation deduction).
          sig { returns(T.nilable(Float)) }
          attr_accessor :allocation_eligible_credits

          # The external identifier for the license. Null when grouped by day only.
          sig { returns(T.nilable(String)) }
          attr_accessor :external_license_id

          # The unique identifier for the license. Null when grouped by day only.
          sig { returns(T.nilable(String)) }
          attr_accessor :license_id

          # Credits consumed while the license was inactive (draws from shared pool, not
          # individual allocation).
          sig { returns(T.nilable(Float)) }
          attr_accessor :shared_pool_credits

          # The LicenseUsage resource represents usage and remaining credits for a license
          # over a date range.
          #
          # When grouped by 'day' only, license_id and external_license_id will be null as
          # the data is aggregated across all licenses.
          sig do
            params(
              allocated_credits: Float,
              consumed_credits: Float,
              end_date: Date,
              license_type_id: String,
              pricing_unit: String,
              remaining_credits: Float,
              start_date: Date,
              subscription_id: String,
              allocation_eligible_credits: T.nilable(Float),
              external_license_id: T.nilable(String),
              license_id: T.nilable(String),
              shared_pool_credits: T.nilable(Float)
            ).returns(T.attached_class)
          end
          def self.new(
            # The total credits allocated to this license for the period.
            allocated_credits:,
            # The credits consumed by this license for the period.
            consumed_credits:,
            # The end date of the usage period.
            end_date:,
            # The unique identifier for the license type.
            license_type_id:,
            # The pricing unit for the credits (e.g., 'credits').
            pricing_unit:,
            # The remaining credits available for this license (allocated - consumed).
            remaining_credits:,
            # The start date of the usage period.
            start_date:,
            # The unique identifier for the subscription.
            subscription_id:,
            # Credits consumed while the license was active (eligible for individual
            # allocation deduction).
            allocation_eligible_credits: nil,
            # The external identifier for the license. Null when grouped by day only.
            external_license_id: nil,
            # The unique identifier for the license. Null when grouped by day only.
            license_id: nil,
            # Credits consumed while the license was inactive (draws from shared pool, not
            # individual allocation).
            shared_pool_credits: nil
          )
          end

          sig do
            override.returns(
              {
                allocated_credits: Float,
                consumed_credits: Float,
                end_date: Date,
                license_type_id: String,
                pricing_unit: String,
                remaining_credits: Float,
                start_date: Date,
                subscription_id: String,
                allocation_eligible_credits: T.nilable(Float),
                external_license_id: T.nilable(String),
                license_id: T.nilable(String),
                shared_pool_credits: T.nilable(Float)
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
