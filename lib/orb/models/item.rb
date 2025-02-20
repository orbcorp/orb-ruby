# frozen_string_literal: true

module Orb
  module Models
    class Item < Orb::BaseModel
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
      #   @return [Array<Orb::Models::Item::ExternalConnection>]
      required :external_connections, -> { Orb::ArrayOf[Orb::Models::Item::ExternalConnection] }

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
      #   # @param external_connections [Array<Orb::Models::Item::ExternalConnection>]
      #   # @param name [String]
      #   #
      #   def initialize(id:, created_at:, external_connections:, name:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void

      class ExternalConnection < Orb::BaseModel
        # @!attribute external_connection_name
        #
        #   @return [Symbol, Orb::Models::Item::ExternalConnection::ExternalConnectionName]
        required :external_connection_name,
                 enum: -> { Orb::Models::Item::ExternalConnection::ExternalConnectionName }

        # @!attribute external_entity_id
        #
        #   @return [String]
        required :external_entity_id, String

        # @!parse
        #   # @param external_connection_name [Symbol, Orb::Models::Item::ExternalConnection::ExternalConnectionName]
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
end
