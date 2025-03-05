# frozen_string_literal: true

module Orb
  module Models
    class ItemModel < Orb::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute external_connections
      #
      #   @return [Array<Orb::Models::ItemExternalConnectionModel>]
      required :external_connections, -> { Orb::ArrayOf[Orb::Models::ItemExternalConnectionModel] }

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!parse
      #   # The Item resource represents a sellable product or good. Items are associated
      #   #   with all line items, billable metrics, and prices and are used for defining
      #   #   external sync behavior for invoices and tax calculation purposes.
      #   #
      #   # @param id [String]
      #   # @param created_at [Time]
      #   # @param external_connections [Array<Orb::Models::ItemExternalConnectionModel>]
      #   # @param name [String]
      #   #
      #   def initialize(id:, created_at:, external_connections:, name:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
