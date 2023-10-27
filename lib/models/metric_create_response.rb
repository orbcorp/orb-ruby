require 'models/item'
require 'model'

module Models
end

class Models::MetricCreateResponse < Model

        # @!attribute [rw] id
        required :id, String
        # @!attribute [rw] description
        required :description, String
        # @!attribute [rw] item
        required :item, Models::Item
        # @!attribute [rw] metadata
        required :metadata, Hash
        # @!attribute [rw] name
        required :name, String
        # @!attribute [rw] status
        required :status, Enum.new([:"active", :"draft", :"archived"])

end