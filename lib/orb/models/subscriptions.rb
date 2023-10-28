require 'orb/model'
require 'orb/models/subscription'
module Orb
    module Models
        class Subscriptions < Orb::Model

                class PaginationMetadata < Orb::Model

                        # @!attribute [rw] has_more
                        required :has_more, Orb::BooleanModel
                        # @!attribute [rw] next_cursor
                        required :next_cursor, String

                end
                # @!attribute [rw] data
                required :data, Orb::ArrayOf.new(Orb::Models::Subscription)
                # @!attribute [rw] pagination_metadata
                required :pagination_metadata, PaginationMetadata

        end
    end
end