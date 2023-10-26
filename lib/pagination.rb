require 'base_pagination'

class PagePaginationMetadata < Model

        # @!attribute [rw] has_more
        required :has_more, BooleanModel
        # @!attribute [rw] next_cursor
        required :next_cursor, String

end

class Page < Model

        include Pagination::Page
        required :data, ArrayOf.new(Unknown)
        required :pagination_metadata, PagePaginationMetadata
        def initialize(client:, request:, json:)
          super()
          # ensure we can reuse fields in inherited models.
          # Class instance vars do not propagate by inheritance,
          # and we don't want to use class vars.
          self.class.fields = Page.fields&.merge(self.class.fields) || self.class.fields
          @json = json
          @client = client
          @request = request
        end
        def next_page?
        @data.dig(:pagination_metadata, :next_cursor)
        end
        def next_page_options
          { query: { "cursor" => @data.dig(:pagination_metadata, :next_cursor) } }
        end
        def page_items
          @data[:data]
        end

end