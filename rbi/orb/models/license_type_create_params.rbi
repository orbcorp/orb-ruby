# typed: strong

module Orb
  module Models
    class LicenseTypeCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::LicenseTypeCreateParams, Orb::Internal::AnyHash)
        end

      # The key used for grouping licenses of this type. This is typically a user
      # identifier field.
      sig { returns(String) }
      attr_accessor :grouping_key

      # The name of the license type.
      sig { returns(String) }
      attr_accessor :name

      sig do
        params(
          grouping_key: String,
          name: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The key used for grouping licenses of this type. This is typically a user
        # identifier field.
        grouping_key:,
        # The name of the license type.
        name:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            grouping_key: String,
            name: String,
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
