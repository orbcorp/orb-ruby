# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::LicenseTypes#create
    class LicenseTypeCreateResponse < Orb::Internal::Type::BaseModel
      # @!attribute id
      #   The Orb-assigned unique identifier for the license type.
      #
      #   @return [String]
      required :id, String

      # @!attribute grouping_key
      #   The key used for grouping licenses of this type. This is typically a user
      #   identifier field.
      #
      #   @return [String]
      required :grouping_key, String

      # @!attribute name
      #   The name of the license type.
      #
      #   @return [String]
      required :name, String

      # @!method initialize(id:, grouping_key:, name:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::LicenseTypeCreateResponse} for more details.
      #
      #   The LicenseType resource represents a type of license that can be assigned to
      #   users. License types are used during billing by grouping metrics on the
      #   configured grouping key.
      #
      #   @param id [String] The Orb-assigned unique identifier for the license type.
      #
      #   @param grouping_key [String] The key used for grouping licenses of this type. This is typically a user identi
      #
      #   @param name [String] The name of the license type.
    end
  end
end
