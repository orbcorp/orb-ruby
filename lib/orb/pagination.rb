require "orb/base_pagination"
require "orb/model"
class PagePaginationMetadata < Orb::Model
  # @!attribute [rw] has_more
  required :has_more, Orb::BooleanModel
  # @!attribute [rw] next_cursor
  required :next_cursor, String
end

class Page < Orb::Model
  include Orb::Pagination::Page
  required :data, Orb::ArrayOf.new(Orb::Unknown)
  required :pagination_metadata, PagePaginationMetadata
  def initialize(client:, request:, json:)
    super()
    # ensure we can reuse fields in inherited models.
    # Class instance vars do not propagate by inheritance,
    # and we don't want to use class vars.
    self.class.fields =
      Page.fields&.merge(self.class.fields) || self.class.fields
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
