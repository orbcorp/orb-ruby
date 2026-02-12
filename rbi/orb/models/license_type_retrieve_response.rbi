# typed: strong

module Orb
  module Models
    class LicenseTypeRetrieveResponse < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::Models::LicenseTypeRetrieveResponse,
            Orb::Internal::AnyHash
          )
        end

      # The Orb-assigned unique identifier for the license type.
      sig { returns(String) }
      attr_accessor :id

      # The key used for grouping licenses of this type. This is typically a user
      # identifier field.
      sig { returns(String) }
      attr_accessor :grouping_key

      # The name of the license type.
      sig { returns(String) }
      attr_accessor :name

      # The LicenseType resource represents a type of license that can be assigned to
      # users. License types are used during billing by grouping metrics on the
      # configured grouping key.
      sig do
        params(id: String, grouping_key: String, name: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # The Orb-assigned unique identifier for the license type.
        id:,
        # The key used for grouping licenses of this type. This is typically a user
        # identifier field.
        grouping_key:,
        # The name of the license type.
        name:
      )
      end

      sig do
        override.returns({ id: String, grouping_key: String, name: String })
      end
      def to_hash
      end
    end
  end
end
