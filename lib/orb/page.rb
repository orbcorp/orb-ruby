# frozen_string_literal: true

module Orb
  # @example
  #   if page.has_next?
  #     page = page.next_page
  #   end
  #
  # @example
  #   page.auto_paging_each do |coupon|
  #     puts(coupon)
  #   end
  #
  # @example
  #   coupons =
  #     page
  #     .to_enum
  #     .lazy
  #     .select { _1.object_id.even? }
  #     .map(&:itself)
  #     .take(2)
  #     .to_a
  #
  #   coupons => Array
  class Page
    include Orb::BasePage

    # @return [Array<Object>, nil]
    attr_accessor :data

    # @return [PaginationMetadata]
    attr_accessor :pagination_metadata

    # @api private
    #
    # @param client [Orb::BaseClient]
    # @param req [Hash{Symbol=>Object}]
    # @param headers [Hash{String=>String}, Net::HTTPHeader]
    # @param page_data [Hash{Symbol=>Object}]
    def initialize(client:, req:, headers:, page_data:)
      super
      model = req.fetch(:model)

      case page_data
      in {data: Array | nil => data}
        @data = data&.map { Orb::Converter.coerce(model, _1) }
      else
      end

      case page_data
      in {pagination_metadata: Hash | nil => pagination_metadata}
        @pagination_metadata = Orb::Page::PaginationMetadata.coerce(pagination_metadata)
      else
      end
    end

    # @return [Boolean]
    def next_page?
      !pagination_metadata&.next_cursor.nil?
    end

    # @raise [Orb::HTTP::Error]
    # @return [Orb::Page]
    def next_page
      unless next_page?
        message = "No more pages available. Please check #next_page? before calling ##{__method__}"
        raise RuntimeError.new(message)
      end

      req = Orb::Util.deep_merge(@req, {query: {cursor: pagination_metadata&.next_cursor}})
      @client.request(req)
    end

    # @param blk [Proc]
    def auto_paging_each(&blk)
      unless block_given?
        raise ArgumentError.new("A block must be given to ##{__method__}")
      end
      page = self
      loop do
        page.data&.each { blk.call(_1) }
        break unless page.next_page?
        page = page.next_page
      end
    end

    # @return [String]
    def inspect
      # rubocop:disable Layout/LineLength
      "#<#{self.class}:0x#{object_id.to_s(16)} data=#{data.inspect} pagination_metadata=#{pagination_metadata.inspect}>"
      # rubocop:enable Layout/LineLength
    end

    class PaginationMetadata < Orb::BaseModel
      # @!attribute has_more
      #
      #   @return [Boolean]
      required :has_more, Orb::BooleanModel

      # @!attribute next_cursor
      #
      #   @return [String, nil]
      required :next_cursor, String, nil?: true

      # @!parse
      #   # @param has_more [Boolean]
      #   # @param next_cursor [String, nil]
      #   #
      #   def initialize(has_more:, next_cursor:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
