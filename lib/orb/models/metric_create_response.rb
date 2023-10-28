require 'orb/model'
require 'orb/models/item'
module Orb
    module Models
        class MetricCreateResponse < Orb::Model

                # @!attribute [rw] id
                required :id, String
                # @!attribute [rw] description
                required :description, String
                # @!attribute [rw] item
                required :item, Orb::Models::Item
                # @!attribute [rw] metadata
                required :metadata, Hash
                # @!attribute [rw] name
                required :name, String
                # @!attribute [rw] status
                required :status, Orb::Enum.new([:"active", :"draft", :"archived"])

        end
    end
end