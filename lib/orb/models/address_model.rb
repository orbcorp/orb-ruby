# frozen_string_literal: true

module Orb
  module Models
    class AddressModel < Orb::BaseModel
      # @!attribute city
      #
      #   @return [String, nil]
      required :city, String, nil?: true

      # @!attribute country
      #
      #   @return [String, nil]
      required :country, String, nil?: true

      # @!attribute line1
      #
      #   @return [String, nil]
      required :line1, String, nil?: true

      # @!attribute line2
      #
      #   @return [String, nil]
      required :line2, String, nil?: true

      # @!attribute postal_code
      #
      #   @return [String, nil]
      required :postal_code, String, nil?: true

      # @!attribute state
      #
      #   @return [String, nil]
      required :state, String, nil?: true

      # @!parse
      #   # @param city [String, nil]
      #   # @param country [String, nil]
      #   # @param line1 [String, nil]
      #   # @param line2 [String, nil]
      #   # @param postal_code [String, nil]
      #   # @param state [String, nil]
      #   #
      #   def initialize(city:, country:, line1:, line2:, postal_code:, state:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
