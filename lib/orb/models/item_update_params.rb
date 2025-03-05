# frozen_string_literal: true

module Orb
  module Models
    class ItemUpdateParams < Orb::BaseModel
      # @!parse
      #   extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # @!attribute external_connections
      #
      #   @return [Array<Orb::Models::ItemExternalConnectionModel>, nil]
      optional :external_connections, -> { Orb::ArrayOf[Orb::Models::ItemExternalConnectionModel] }, nil?: true

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!parse
      #   # @param external_connections [Array<Orb::Models::ItemExternalConnectionModel>, nil]
      #   # @param name [String, nil]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(external_connections: nil, name: nil, request_options: {}, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
