# typed: strong

module Orb
  module Models
    class LicenseCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Orb::LicenseCreateParams, Orb::Internal::AnyHash) }

      # The external identifier for the license.
      sig { returns(String) }
      attr_accessor :external_license_id

      sig { returns(String) }
      attr_accessor :license_type_id

      sig { returns(String) }
      attr_accessor :subscription_id

      # The end date of the license. If not provided, the license will remain active
      # until deactivated.
      sig { returns(T.nilable(Date)) }
      attr_accessor :end_date

      # The start date of the license. If not provided, defaults to start of day today
      # in the customer's timezone.
      sig { returns(T.nilable(Date)) }
      attr_accessor :start_date

      sig do
        params(
          external_license_id: String,
          license_type_id: String,
          subscription_id: String,
          end_date: T.nilable(Date),
          start_date: T.nilable(Date),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The external identifier for the license.
        external_license_id:,
        license_type_id:,
        subscription_id:,
        # The end date of the license. If not provided, the license will remain active
        # until deactivated.
        end_date: nil,
        # The start date of the license. If not provided, defaults to start of day today
        # in the customer's timezone.
        start_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            external_license_id: String,
            license_type_id: String,
            subscription_id: String,
            end_date: T.nilable(Date),
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
