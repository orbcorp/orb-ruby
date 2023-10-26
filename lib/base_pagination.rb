# typed: true
# TODO after https://github.com/stainless-api/stainless/pull/2675 merges, do this import from the customer/util file
require 'util'

module Pagination
  module Page
    def next_page?
      raise NotImplementedError
    end

    def page_items
      raise NotImplementedError
    end

    def get_next_page
      @client.request(**Util.deep_merge(@request, next_page_options))
    end

    def next_page_options
      raise NotImplementedError
    end

    def auto_paging_each(&block)
      page_response = @client.request(**@request)
      while page_response.next_page?
        page_response = page_response.get_next_page
        page_response&.page_items&.each(&block)
      end
    end
  end
end
