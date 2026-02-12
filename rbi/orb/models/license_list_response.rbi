# typed: strong

module Orb
  module Models
    class LicenseListResponse < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::Models::LicenseListResponse, Orb::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(Time)) }
      attr_accessor :end_date

      sig { returns(String) }
      attr_accessor :external_license_id

      sig { returns(String) }
      attr_accessor :license_type_id

      sig { returns(Time) }
      attr_accessor :start_date

      sig { returns(Orb::Models::LicenseListResponse::Status::TaggedSymbol) }
      attr_accessor :status

      sig { returns(String) }
      attr_accessor :subscription_id

      sig do
        params(
          id: String,
          end_date: T.nilable(Time),
          external_license_id: String,
          license_type_id: String,
          start_date: Time,
          status: Orb::Models::LicenseListResponse::Status::OrSymbol,
          subscription_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        end_date:,
        external_license_id:,
        license_type_id:,
        start_date:,
        status:,
        subscription_id:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            end_date: T.nilable(Time),
            external_license_id: String,
            license_type_id: String,
            start_date: Time,
            status: Orb::Models::LicenseListResponse::Status::TaggedSymbol,
            subscription_id: String
          }
        )
      end
      def to_hash
      end

      module Status
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::Models::LicenseListResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(:active, Orb::Models::LicenseListResponse::Status::TaggedSymbol)
        INACTIVE =
          T.let(
            :inactive,
            Orb::Models::LicenseListResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::Models::LicenseListResponse::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
