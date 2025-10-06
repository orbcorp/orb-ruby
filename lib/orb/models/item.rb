# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Items#create
    class Item < Orb::Internal::Type::BaseModel
      # @!attribute id
      #   The Orb-assigned unique identifier for the item.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   The time at which the item was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute external_connections
      #   A list of external connections for this item, used to sync with external
      #   invoicing and tax systems.
      #
      #   @return [Array<Orb::Models::Item::ExternalConnection>]
      required :external_connections, -> { Orb::Internal::Type::ArrayOf[Orb::Item::ExternalConnection] }

      # @!attribute metadata
      #   User specified key-value pairs for the resource. If not present, this defaults
      #   to an empty dictionary. Individual keys can be removed by setting the value to
      #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
      #   `null`.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, Orb::Internal::Type::HashOf[String]

      # @!attribute name
      #   The name of the item.
      #
      #   @return [String]
      required :name, String

      # @!attribute archived_at
      #   The time at which the item was archived. If null, the item is not archived.
      #
      #   @return [Time, nil]
      optional :archived_at, Time, nil?: true

      # @!method initialize(id:, created_at:, external_connections:, metadata:, name:, archived_at: nil)
      #   Some parameter documentations has been truncated, see {Orb::Models::Item} for
      #   more details.
      #
      #   The Item resource represents a sellable product or good. Items are associated
      #   with all line items, billable metrics, and prices and are used for defining
      #   external sync behavior for invoices and tax calculation purposes.
      #
      #   @param id [String] The Orb-assigned unique identifier for the item.
      #
      #   @param created_at [Time] The time at which the item was created.
      #
      #   @param external_connections [Array<Orb::Models::Item::ExternalConnection>] A list of external connections for this item, used to sync with external invoici
      #
      #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
      #
      #   @param name [String] The name of the item.
      #
      #   @param archived_at [Time, nil] The time at which the item was archived. If null, the item is not archived.

      class ExternalConnection < Orb::Internal::Type::BaseModel
        # @!attribute external_connection_name
        #   The name of the external system this item is connected to.
        #
        #   @return [Symbol, Orb::Models::Item::ExternalConnection::ExternalConnectionName]
        required :external_connection_name, enum: -> { Orb::Item::ExternalConnection::ExternalConnectionName }

        # @!attribute external_entity_id
        #   The identifier of this item in the external system.
        #
        #   @return [String]
        required :external_entity_id, String

        # @!method initialize(external_connection_name:, external_entity_id:)
        #   Represents a connection between an Item and an external system for invoicing or
        #   tax calculation purposes.
        #
        #   @param external_connection_name [Symbol, Orb::Models::Item::ExternalConnection::ExternalConnectionName] The name of the external system this item is connected to.
        #
        #   @param external_entity_id [String] The identifier of this item in the external system.

        # The name of the external system this item is connected to.
        #
        # @see Orb::Models::Item::ExternalConnection#external_connection_name
        module ExternalConnectionName
          extend Orb::Internal::Type::Enum

          STRIPE = :stripe
          QUICKBOOKS = :quickbooks
          BILL_COM = :"bill.com"
          NETSUITE = :netsuite
          TAXJAR = :taxjar
          AVALARA = :avalara
          ANROK = :anrok
          NUMERAL = :numeral

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
