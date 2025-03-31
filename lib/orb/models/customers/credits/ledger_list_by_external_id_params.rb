# frozen_string_literal: true

module Orb
  module Models
    module Customers
      module Credits
        class LedgerListByExternalIDParams < Orb::BaseModel
          # @!parse
          #   extend Orb::Type::RequestParameters::Converter
          include Orb::RequestParameters

          # @!attribute created_at_gt
          #
          #   @return [Time, nil]
          optional :created_at_gt, Time, api_name: :"created_at[gt]", nil?: true

          # @!attribute created_at_gte
          #
          #   @return [Time, nil]
          optional :created_at_gte, Time, api_name: :"created_at[gte]", nil?: true

          # @!attribute created_at_lt
          #
          #   @return [Time, nil]
          optional :created_at_lt, Time, api_name: :"created_at[lt]", nil?: true

          # @!attribute created_at_lte
          #
          #   @return [Time, nil]
          optional :created_at_lte, Time, api_name: :"created_at[lte]", nil?: true

          # @!attribute currency
          #   The ledger currency or custom pricing unit to use.
          #
          #   @return [String, nil]
          optional :currency, String, nil?: true

          # @!attribute cursor
          #   Cursor for pagination. This can be populated by the `next_cursor` value returned
          #     from the initial request.
          #
          #   @return [String, nil]
          optional :cursor, String, nil?: true

          # @!attribute entry_status
          #
          #   @return [Symbol, Orb::Models::Customers::Credits::LedgerListByExternalIDParams::EntryStatus, nil]
          optional :entry_status,
                   enum: -> { Orb::Models::Customers::Credits::LedgerListByExternalIDParams::EntryStatus },
                   nil?: true

          # @!attribute entry_type
          #
          #   @return [Symbol, Orb::Models::Customers::Credits::LedgerListByExternalIDParams::EntryType, nil]
          optional :entry_type,
                   enum: -> { Orb::Models::Customers::Credits::LedgerListByExternalIDParams::EntryType },
                   nil?: true

          # @!attribute [r] limit
          #   The number of items to fetch. Defaults to 20.
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!parse
          #   # @return [Integer]
          #   attr_writer :limit

          # @!attribute minimum_amount
          #
          #   @return [String, nil]
          optional :minimum_amount, String, nil?: true

          # @!parse
          #   # @param created_at_gt [Time, nil]
          #   # @param created_at_gte [Time, nil]
          #   # @param created_at_lt [Time, nil]
          #   # @param created_at_lte [Time, nil]
          #   # @param currency [String, nil]
          #   # @param cursor [String, nil]
          #   # @param entry_status [Symbol, Orb::Models::Customers::Credits::LedgerListByExternalIDParams::EntryStatus, nil]
          #   # @param entry_type [Symbol, Orb::Models::Customers::Credits::LedgerListByExternalIDParams::EntryType, nil]
          #   # @param limit [Integer]
          #   # @param minimum_amount [String, nil]
          #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(
          #     created_at_gt: nil,
          #     created_at_gte: nil,
          #     created_at_lt: nil,
          #     created_at_lte: nil,
          #     currency: nil,
          #     cursor: nil,
          #     entry_status: nil,
          #     entry_type: nil,
          #     limit: nil,
          #     minimum_amount: nil,
          #     request_options: {},
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void

          module EntryStatus
            extend Orb::Enum

            COMMITTED = :committed
            PENDING = :pending

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          module EntryType
            extend Orb::Enum

            INCREMENT = :increment
            DECREMENT = :decrement
            EXPIRATION_CHANGE = :expiration_change
            CREDIT_BLOCK_EXPIRY = :credit_block_expiry
            VOID = :void
            VOID_INITIATED = :void_initiated
            AMENDMENT = :amendment

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end
      end
    end
  end
end
