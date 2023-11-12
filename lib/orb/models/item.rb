require "orb/model"
module Orb
  module Models
    class Item < Orb::Model
      class ExternalConnections < Orb::Model
        # @!attribute [rw] external_connection_name
        required :external_connection_name,
                 Orb::Enum.new(
                   [
                     :"stripe",
                     :"quickbooks",
                     :"bill.com",
                     :"netsuite",
                     :"taxjar",
                     :"avalara",
                     :"anrok"
                   ]
                 )
        # @!attribute [rw] external_entity_id
        required :external_entity_id, String
      end
      # @!attribute [rw] id
      required :id, String
      # @!attribute [rw] created_at
      required :created_at, String
      # @!attribute [rw] external_connections
      required :external_connections, Orb::ArrayOf.new(ExternalConnections)
      # @!attribute [rw] name_
      required :name_, String
    end
  end
end
