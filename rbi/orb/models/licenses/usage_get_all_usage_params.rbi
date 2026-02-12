# typed: strong

module Orb
  module Models
    module Licenses
      class UsageGetAllUsageParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Orb::Licenses::UsageGetAllUsageParams, Orb::Internal::AnyHash)
          end

        # The license type ID to filter licenses by.
        sig { returns(String) }
        attr_accessor :license_type_id

        # The subscription ID to get license usage for.
        sig { returns(String) }
        attr_accessor :subscription_id

        # Pagination cursor from a previous request.
        sig { returns(T.nilable(String)) }
        attr_accessor :cursor

        # End date for the usage period (YYYY-MM-DD). Defaults to end of current billing
        # period.
        sig { returns(T.nilable(Date)) }
        attr_accessor :end_date

        # How to group the results. Valid values: 'license', 'day'. Can be combined (e.g.,
        # 'license,day').
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :group_by

        # Maximum number of rows in the response data (default 20, max 100).
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Start date for the usage period (YYYY-MM-DD). Defaults to start of current
        # billing period.
        sig { returns(T.nilable(Date)) }
        attr_accessor :start_date

        sig do
          params(
            license_type_id: String,
            subscription_id: String,
            cursor: T.nilable(String),
            end_date: T.nilable(Date),
            group_by: T.nilable(T::Array[String]),
            limit: Integer,
            start_date: T.nilable(Date),
            request_options: Orb::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The license type ID to filter licenses by.
          license_type_id:,
          # The subscription ID to get license usage for.
          subscription_id:,
          # Pagination cursor from a previous request.
          cursor: nil,
          # End date for the usage period (YYYY-MM-DD). Defaults to end of current billing
          # period.
          end_date: nil,
          # How to group the results. Valid values: 'license', 'day'. Can be combined (e.g.,
          # 'license,day').
          group_by: nil,
          # Maximum number of rows in the response data (default 20, max 100).
          limit: nil,
          # Start date for the usage period (YYYY-MM-DD). Defaults to start of current
          # billing period.
          start_date: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              license_type_id: String,
              subscription_id: String,
              cursor: T.nilable(String),
              end_date: T.nilable(Date),
              group_by: T.nilable(T::Array[String]),
              limit: Integer,
              start_date: T.nilable(Date),
              request_options: Orb::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
