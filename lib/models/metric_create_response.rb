require 'model'

module Models
end

class Models::MetricCreateResponse < Model

        class Item < Model

                class ExternalConnections < Model

                        # @!attribute [rw] external_connection_name
                        required :external_connection_name, Enum.new([:"stripe", :"quickbooks", :"bill.com", :"netsuite", :"taxjar", :"avalara", :"anrok"])
                        # @!attribute [rw] external_entity_id
                        required :external_entity_id, String

                end
                # @!attribute [rw] id
                required :id, String
                # @!attribute [rw] created_at
                required :created_at, String
                # @!attribute [rw] external_connections
                required :external_connections, ArrayOf.new(ExternalConnections)
                # @!attribute [rw] name
                required :name, String

        end
        # @!attribute [rw] id
        required :id, String
        # @!attribute [rw] description
        required :description, String
        # @!attribute [rw] item
        required :item, Item
        # @!attribute [rw] metadata
        required :metadata, Hash
        # @!attribute [rw] name
        required :name, String
        # @!attribute [rw] status
        required :status, Enum.new([:"active", :"draft", :"archived"])

end