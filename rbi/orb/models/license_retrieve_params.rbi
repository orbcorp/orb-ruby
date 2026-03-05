# typed: strong

module Orb
  module Models
    class LicenseRetrieveParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::LicenseRetrieveParams, Orb::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :license_id

      sig do
        params(
          license_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(license_id:, request_options: {})
      end

      sig do
        override.returns(
          { license_id: String, request_options: Orb::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
