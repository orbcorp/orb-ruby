require 'model'

require 'models/subscription'

module Models
    class Subscriptions < Model

            class PaginationMetadata < Model

                    # @!attribute [rw] has_more
                    required :has_more, BooleanModel
                    # @!attribute [rw] next_cursor
                    required :next_cursor, String

            end
            # @!attribute [rw] data
            required :data, ArrayOf.new(Models::Subscription)
            # @!attribute [rw] pagination_metadata
            required :pagination_metadata, PaginationMetadata

    end
end