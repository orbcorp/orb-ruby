require "orb/model"
module Orb
  module Models
    class EventSearchResponse < Orb::Model
      class Data < Orb::Model
        # @!attribute [rw] id
        required :id, String
        # @!attribute [rw] customer_id
        required :customer_id, String
        # @!attribute [rw] event_name
        required :event_name, String
        # @!attribute [rw] external_customer_id
        required :external_customer_id, String
        # @!attribute [rw] properties
        required :properties, Orb::Unknown
        # @!attribute [rw] timestamp
        required :timestamp, String
      end
      # @!attribute [rw] data
      required :data, Orb::ArrayOf.new(Data)
    end
  end
end
