require 'model'

module Models
    class EventSearchResponse < Model

            class Data < Model

                    # @!attribute [rw] id
                    required :id, String
                    # @!attribute [rw] customer_id
                    required :customer_id, String
                    # @!attribute [rw] event_name
                    required :event_name, String
                    # @!attribute [rw] external_customer_id
                    required :external_customer_id, String
                    # @!attribute [rw] properties
                    required :properties, Unknown
                    # @!attribute [rw] timestamp
                    required :timestamp, String

            end
            class PaginationMetadata < Model

                    # @!attribute [rw] has_more
                    required :has_more, BooleanModel
                    # @!attribute [rw] next_cursor
                    required :next_cursor, String

            end
            # @!attribute [rw] data
            required :data, ArrayOf.new(Data)
            # @!attribute [rw] pagination_metadata
            required :pagination_metadata, PaginationMetadata

    end
end