# frozen_string_literal: true

module Orb
  module Internal
    # @generic Elem
    #
    # @example
    #   if page.has_next?
    #     page = page.next_page
    #   end
    #
    # @example
    #   page.auto_paging_each do |coupon|
    #     puts(coupon)
    #   end
    class Page
      include Orb::Internal::Type::BasePage

      # @return [Array<generic<Elem>>, nil]
      attr_accessor :data

      # @return [PaginationMetadata]
      attr_accessor :pagination_metadata

      # @return [Boolean]
      def next_page?
        !data.to_a.empty? && !pagination_metadata&.next_cursor.to_s.empty?
      end

      # @raise [Orb::HTTP::Error]
      # @return [self]
      def next_page
        unless next_page?
          message = "No more pages available. Please check #next_page? before calling ##{__method__}"
          raise RuntimeError.new(message)
        end

        req = Orb::Internal::Util.deep_merge(@req, {query: {cursor: pagination_metadata&.next_cursor}})
        @client.request(req)
      end

      # @param blk [Proc]
      #
      # @yieldparam [generic<Elem>]
      def auto_paging_each(&blk)
        unless block_given?
          raise ArgumentError.new("A block must be given to ##{__method__}")
        end

        page = self
        loop do
          page.data&.each(&blk)

          break unless page.next_page?
          page = page.next_page
        end
      end

      # @api private
      #
      # @param client [Orb::Internal::Transport::BaseClient]
      # @param req [Hash{Symbol=>Object}]
      # @param headers [Hash{String=>String}, Net::HTTPHeader]
      # @param page_data [Hash{Symbol=>Object}]
      def initialize(client:, req:, headers:, page_data:)
        super

        case page_data
        in {data: Array => data}
          @data = data.map { Orb::Internal::Type::Converter.coerce(@model, _1) }
        else
        end
        case page_data
        in {pagination_metadata: Hash | nil => pagination_metadata}
          @pagination_metadata =
            Orb::Internal::Type::Converter.coerce(
              Orb::Internal::Page::PaginationMetadata,
              pagination_metadata
            )
        else
        end
      end

      # @api private
      #
      # @return [String]
      def inspect
        model = Orb::Internal::Type::Converter.inspect(@model, depth: 1)

        "#<#{self.class}[#{model}]:0x#{object_id.to_s(16)}>"
      end

      class PaginationMetadata < Orb::Internal::Type::BaseModel
        # @!attribute has_more
        #
        #   @return [Boolean]
        required :has_more, Orb::Internal::Type::Boolean

        # @!attribute next_cursor
        #
        #   @return [String, nil]
        required :next_cursor, String, nil?: true

        # @!method initialize(has_more:, next_cursor:)
        #   @param has_more [Boolean]
        #   @param next_cursor [String, nil]
      end
    end
  end
end
