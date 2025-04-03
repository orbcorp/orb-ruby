# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Items#create
    class ItemCreateParams < Orb::BaseModel
      # @!parse
      #   extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute name
      #   The name of the item.
      #
      #   @return [String]
      required :name, String

      # @!parse
      #   # @param name [String]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(name:, request_options: {}, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
