# frozen_string_literal: true

module Orb
  module Models
    class ItemExternalConnectionModel < Orb::BaseModel
      # @!attribute external_connection_name
      #
      #   @return [Symbol, Orb::Models::ItemExternalConnectionModel::ExternalConnectionName]
      required :external_connection_name,
               enum: -> { Orb::Models::ItemExternalConnectionModel::ExternalConnectionName }

      # @!attribute external_entity_id
      #
      #   @return [String]
      required :external_entity_id, String

      # @!parse
      #   # @param external_connection_name [Symbol, Orb::Models::ItemExternalConnectionModel::ExternalConnectionName]
      #   # @param external_entity_id [String]
      #   #
      #   def initialize(external_connection_name:, external_entity_id:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void

      # @abstract
      #
      # @example
      # ```ruby
      # case external_connection_name
      # in :stripe
      #   # ...
      # in :quickbooks
      #   # ...
      # in :"bill.com"
      #   # ...
      # in :netsuite
      #   # ...
      # in :taxjar
      #   # ...
      # in ...
      #   #...
      # end
      # ```
      class ExternalConnectionName < Orb::Enum
        STRIPE = :stripe
        QUICKBOOKS = :quickbooks
        BILL_COM = :"bill.com"
        NETSUITE = :netsuite
        TAXJAR = :taxjar
        AVALARA = :avalara
        ANROK = :anrok

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
