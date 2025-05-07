# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Items#create
    class Item < Orb::Internal::Type::BaseModel
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
      #   @return [Array<Orb::Item::ExternalConnection>]
      required :external_connections, -> { Orb::Internal::Type::ArrayOf[Orb::Item::ExternalConnection] }

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!method initialize(id:, created_at:, external_connections:, name:)
      #   The Item resource represents a sellable product or good. Items are associated
      #   with all line items, billable metrics, and prices and are used for defining
      #   external sync behavior for invoices and tax calculation purposes.
      #
      #   @param id [String]
      #   @param created_at [Time]
      #   @param external_connections [Array<Orb::Item::ExternalConnection>]
      #   @param name [String]

      class ExternalConnection < Orb::Internal::Type::BaseModel
        # @!attribute external_connection_name
        #
        #   @return [Symbol, Orb::Item::ExternalConnection::ExternalConnectionName]
        required :external_connection_name, enum: -> { Orb::Item::ExternalConnection::ExternalConnectionName }

        # @!attribute external_entity_id
        #
        #   @return [String]
        required :external_entity_id, String

        # @!method initialize(external_connection_name:, external_entity_id:)
        #   @param external_connection_name [Symbol, Orb::Item::ExternalConnection::ExternalConnectionName]
        #   @param external_entity_id [String]

        # @see Orb::Item::ExternalConnection#external_connection_name
        module ExternalConnectionName
          extend Orb::Internal::Type::Enum

          STRIPE = :stripe
          QUICKBOOKS = :quickbooks
          BILL_COM = :"bill.com"
          NETSUITE = :netsuite
          TAXJAR = :taxjar
          AVALARA = :avalara
          ANROK = :anrok

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
