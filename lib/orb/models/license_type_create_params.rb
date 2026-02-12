# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::LicenseTypes#create
    class LicenseTypeCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

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

      # @!method initialize(grouping_key:, name:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::LicenseTypeCreateParams} for more details.
      #
      #   @param grouping_key [String] The key used for grouping licenses of this type. This is typically a user identi
      #
      #   @param name [String] The name of the license type.
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
