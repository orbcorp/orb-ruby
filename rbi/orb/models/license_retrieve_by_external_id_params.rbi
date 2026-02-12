# typed: strong

module Orb
  module Models
    class LicenseRetrieveByExternalIDParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::LicenseRetrieveByExternalIDParams, Orb::Internal::AnyHash)
        end

      # The ID of the license type to fetch the license for.
      sig { returns(String) }
      attr_accessor :license_type_id

      # The ID of the subscription to fetch the license for.
      sig { returns(String) }
      attr_accessor :subscription_id

      sig do
        params(
          license_type_id: String,
          subscription_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the license type to fetch the license for.
        license_type_id:,
        # The ID of the subscription to fetch the license for.
        subscription_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            license_type_id: String,
            subscription_id: String,
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
