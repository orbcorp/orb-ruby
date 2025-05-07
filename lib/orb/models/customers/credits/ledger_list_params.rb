# frozen_string_literal: true

module Orb
  module Models
    module Customers
      module Credits
        # @see Orb::Resources::Customers::Credits::Ledger#list
        class LedgerListParams < Orb::Internal::Type::BaseModel
          extend Orb::Internal::Type::RequestParameters::Converter
          include Orb::Internal::Type::RequestParameters

          # @!attribute created_at_gt
          #
          #   @return [Time, nil]
          optional :created_at_gt, Time, nil?: true

          # @!attribute created_at_gte
          #
          #   @return [Time, nil]
          optional :created_at_gte, Time, nil?: true

          # @!attribute created_at_lt
          #
          #   @return [Time, nil]
          optional :created_at_lt, Time, nil?: true

          # @!attribute created_at_lte
          #
          #   @return [Time, nil]
          optional :created_at_lte, Time, nil?: true

          # @!attribute currency
          #   The ledger currency or custom pricing unit to use.
          #
          #   @return [String, nil]
          optional :currency, String, nil?: true

          # @!attribute cursor
          #   Cursor for pagination. This can be populated by the `next_cursor` value returned
          #   from the initial request.
          #
          #   @return [String, nil]
          optional :cursor, String, nil?: true

          # @!attribute entry_status
          #
          #   @return [Symbol, Orb::Customers::Credits::LedgerListParams::EntryStatus, nil]
          optional :entry_status,
                   enum: -> {
                     Orb::Customers::Credits::LedgerListParams::EntryStatus
                   },
                   nil?: true

          # @!attribute entry_type
          #
          #   @return [Symbol, Orb::Customers::Credits::LedgerListParams::EntryType, nil]
          optional :entry_type, enum: -> { Orb::Customers::Credits::LedgerListParams::EntryType }, nil?: true

          # @!attribute limit
          #   The number of items to fetch. Defaults to 20.
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute minimum_amount
          #
          #   @return [String, nil]
          optional :minimum_amount, String, nil?: true

          # @!method initialize(created_at_gt: nil, created_at_gte: nil, created_at_lt: nil, created_at_lte: nil, currency: nil, cursor: nil, entry_status: nil, entry_type: nil, limit: nil, minimum_amount: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Customers::Credits::LedgerListParams} for more details.
          #
          #   @param created_at_gt [Time, nil]
          #
          #   @param created_at_gte [Time, nil]
          #
          #   @param created_at_lt [Time, nil]
          #
          #   @param created_at_lte [Time, nil]
          #
          #   @param currency [String, nil] The ledger currency or custom pricing unit to use.
          #
          #   @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
          #
          #   @param entry_status [Symbol, Orb::Customers::Credits::LedgerListParams::EntryStatus, nil]
          #
          #   @param entry_type [Symbol, Orb::Customers::Credits::LedgerListParams::EntryType, nil]
          #
          #   @param limit [Integer] The number of items to fetch. Defaults to 20.
          #
          #   @param minimum_amount [String, nil]
          #
          #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

          module EntryStatus
            extend Orb::Internal::Type::Enum

            COMMITTED = :committed
            PENDING = :pending

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          module EntryType
            extend Orb::Internal::Type::Enum

            INCREMENT = :increment
            DECREMENT = :decrement
            EXPIRATION_CHANGE = :expiration_change
            CREDIT_BLOCK_EXPIRY = :credit_block_expiry
            VOID = :void
            VOID_INITIATED = :void_initiated
            AMENDMENT = :amendment

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
