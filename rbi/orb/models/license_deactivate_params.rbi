# typed: strong

module Orb
  module Models
    class LicenseDeactivateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::LicenseDeactivateParams, Orb::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :license_id

      # The date to deactivate the license. If not provided, defaults to end of day
      # today in the customer's timezone.
      sig { returns(T.nilable(Date)) }
      attr_accessor :end_date

      sig do
        params(
          license_id: String,
          end_date: T.nilable(Date),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        license_id:,
        # The date to deactivate the license. If not provided, defaults to end of day
        # today in the customer's timezone.
        end_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            license_id: String,
            end_date: T.nilable(Date),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
