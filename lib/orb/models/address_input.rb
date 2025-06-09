# frozen_string_literal: true

module Orb
  module Models
    class AddressInput < Orb::Internal::Type::BaseModel
      # @!attribute city
      #
      #   @return [String, nil]
      optional :city, String, nil?: true

      # @!attribute country
      #
      #   @return [String, nil]
      optional :country, String, nil?: true

      # @!attribute line1
      #
      #   @return [String, nil]
      optional :line1, String, nil?: true

      # @!attribute line2
      #
      #   @return [String, nil]
      optional :line2, String, nil?: true

      # @!attribute postal_code
      #
      #   @return [String, nil]
      optional :postal_code, String, nil?: true

      # @!attribute state
      #
      #   @return [String, nil]
      optional :state, String, nil?: true

      # @!method initialize(city: nil, country: nil, line1: nil, line2: nil, postal_code: nil, state: nil)
      #   @param city [String, nil]
      #   @param country [String, nil]
      #   @param line1 [String, nil]
      #   @param line2 [String, nil]
      #   @param postal_code [String, nil]
      #   @param state [String, nil]
    end
  end
end
