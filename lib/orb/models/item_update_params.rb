# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Items#update
    class ItemUpdateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute external_connections
      #
      #   @return [Array<Orb::Models::ItemUpdateParams::ExternalConnection>, nil]
      optional :external_connections,
               -> { Orb::Internal::Type::ArrayOf[Orb::ItemUpdateParams::ExternalConnection] },
               nil?: true

      # @!attribute metadata
      #   User-specified key/value pairs for the resource. Individual keys can be removed
      #   by setting the value to `null`, and the entire metadata mapping can be cleared
      #   by setting `metadata` to `null`.
      #
      #   @return [Hash{Symbol=>String, nil}, nil]
      optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!method initialize(external_connections: nil, metadata: nil, name: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::ItemUpdateParams} for more details.
      #
      #   @param external_connections [Array<Orb::Models::ItemUpdateParams::ExternalConnection>, nil]
      #
      #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
      #
      #   @param name [String, nil]
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      class ExternalConnection < Orb::Internal::Type::BaseModel
        # @!attribute external_connection_name
        #
        #   @return [Symbol, Orb::Models::ItemUpdateParams::ExternalConnection::ExternalConnectionName]
        required :external_connection_name,
                 enum: -> { Orb::ItemUpdateParams::ExternalConnection::ExternalConnectionName }

        # @!attribute external_entity_id
        #
        #   @return [String]
        required :external_entity_id, String

        # @!method initialize(external_connection_name:, external_entity_id:)
        #   @param external_connection_name [Symbol, Orb::Models::ItemUpdateParams::ExternalConnection::ExternalConnectionName]
        #   @param external_entity_id [String]

        # @see Orb::Models::ItemUpdateParams::ExternalConnection#external_connection_name
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
