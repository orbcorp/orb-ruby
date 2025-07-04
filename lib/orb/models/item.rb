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
      #
      #   @return [String]
      required :name, String

      # @!method initialize(id:, created_at:, external_connections:, metadata:, name:)
      #   Some parameter documentations has been truncated, see {Orb::Models::Item} for
      #   more details.
      #
      #   The Item resource represents a sellable product or good. Items are associated
      #   with all line items, billable metrics, and prices and are used for defining
      #   external sync behavior for invoices and tax calculation purposes.
      #
      #   @param id [String]
      #
      #   @param created_at [Time]
      #
      #   @param external_connections [Array<Orb::Models::Item::ExternalConnection>]
      #
      #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
      #
      #   @param name [String]

      class ExternalConnection < Orb::Internal::Type::BaseModel
        # @!attribute external_connection_name
        #
        #   @return [Symbol, Orb::Models::Item::ExternalConnection::ExternalConnectionName]
        required :external_connection_name, enum: -> { Orb::Item::ExternalConnection::ExternalConnectionName }

        # @!attribute external_entity_id
        #
        #   @return [String]
        required :external_entity_id, String

        # @!method initialize(external_connection_name:, external_entity_id:)
        #   @param external_connection_name [Symbol, Orb::Models::Item::ExternalConnection::ExternalConnectionName]
        #   @param external_entity_id [String]

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

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
