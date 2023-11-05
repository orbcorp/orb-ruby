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
      class PaginationMetadata < Orb::Model
        # @!attribute [rw] has_more
        required :has_more, Orb::BooleanModel
        # @!attribute [rw] next_cursor
        required :next_cursor, String
      end
      # @!attribute [rw] data
      required :data, Orb::ArrayOf.new(Data)
      # @!attribute [rw] pagination_metadata
      required :pagination_metadata, PaginationMetadata
    end
  end
end
