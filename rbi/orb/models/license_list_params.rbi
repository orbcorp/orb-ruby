# typed: strong

module Orb
  module Models
    class LicenseListParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Orb::LicenseListParams, Orb::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :subscription_id

      # Cursor for pagination. This can be populated by the `next_cursor` value returned
      # from the initial request.
      sig { returns(T.nilable(String)) }
      attr_accessor :cursor

      sig { returns(T.nilable(String)) }
      attr_accessor :external_license_id

      sig { returns(T.nilable(String)) }
      attr_accessor :license_type_id

      # The number of items to fetch. Defaults to 20.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(Orb::LicenseListParams::Status::OrSymbol)) }
      attr_accessor :status

      sig do
        params(
          subscription_id: String,
          cursor: T.nilable(String),
          external_license_id: T.nilable(String),
          license_type_id: T.nilable(String),
          limit: Integer,
          status: T.nilable(Orb::LicenseListParams::Status::OrSymbol),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        subscription_id:,
        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        # from the initial request.
        cursor: nil,
        external_license_id: nil,
        license_type_id: nil,
        # The number of items to fetch. Defaults to 20.
        limit: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            subscription_id: String,
            cursor: T.nilable(String),
            external_license_id: T.nilable(String),
            license_type_id: T.nilable(String),
            limit: Integer,
            status: T.nilable(Orb::LicenseListParams::Status::OrSymbol),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Status
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::LicenseListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE = T.let(:active, Orb::LicenseListParams::Status::TaggedSymbol)
        INACTIVE =
          T.let(:inactive, Orb::LicenseListParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Orb::LicenseListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
