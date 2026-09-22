# frozen_string_literal: true

module Orb
  module Models
    class CreditBlockAccountingSyncSucceededWebhookEvent < Orb::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of this webhook event.
      #
      #   @return [String]
      required :id, String

      # @!attribute accounting_sync_record
      #
      #   @return [Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::AccountingSyncRecord]
      required :accounting_sync_record,
               -> { Orb::CreditBlockAccountingSyncSucceededWebhookEvent::AccountingSyncRecord }

      # @!attribute block
      #   The Credit Block resource models prepaid credits within Orb.
      #
      #   @return [Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Block]
      required :block, -> { Orb::CreditBlockAccountingSyncSucceededWebhookEvent::Block }

      # @!attribute created_at
      #   The time at which this event was created, to the second.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute properties
      #
      #   @return [Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Properties]
      required :properties, -> { Orb::CreditBlockAccountingSyncSucceededWebhookEvent::Properties }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Type]
      required :type, enum: -> { Orb::CreditBlockAccountingSyncSucceededWebhookEvent::Type }

      # @!method initialize(id:, accounting_sync_record:, block:, created_at:, properties:, type:)
      #   Issued when a credit block accounting sync succeeds.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param accounting_sync_record [Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::AccountingSyncRecord]
      #
      #   @param block [Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Block] The Credit Block resource models prepaid credits within Orb.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param properties [Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Properties]
      #
      #   @param type [Symbol, Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent#accounting_sync_record
      class AccountingSyncRecord < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute record_type
        #
        #   @return [Symbol, Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType]
        required :record_type,
                 enum: -> { Orb::CreditBlockAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType }

        # @!attribute block_id
        #
        #   @return [String, nil]
        optional :block_id, String, nil?: true

        # @!attribute error_details
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :error_details, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown], nil?: true

        # @!attribute invoice_id
        #
        #   @return [String, nil]
        optional :invoice_id, String, nil?: true

        # @!attribute provider_customer_id
        #
        #   @return [String, nil]
        optional :provider_customer_id, String, nil?: true

        # @!attribute status
        #
        #   @return [String, nil]
        optional :status, String, nil?: true

        # @!attribute sync_action
        #
        #   @return [String, nil]
        optional :sync_action, String, nil?: true

        # @!method initialize(id:, customer_id:, record_type:, block_id: nil, error_details: nil, invoice_id: nil, provider_customer_id: nil, status: nil, sync_action: nil)
        #   @param id [String]
        #   @param customer_id [String]
        #   @param record_type [Symbol, Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType]
        #   @param block_id [String, nil]
        #   @param error_details [Hash{Symbol=>Object}, nil]
        #   @param invoice_id [String, nil]
        #   @param provider_customer_id [String, nil]
        #   @param status [String, nil]
        #   @param sync_action [String, nil]

        # @see Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::AccountingSyncRecord#record_type
        module RecordType
          extend Orb::Internal::Type::Enum

          CUSTOMER = :customer
          INVOICE = :invoice
          TRANSACTION = :transaction
          CUSTOMER_BALANCE_TRANSACTION = :customer_balance_transaction
          CREDIT_NOTE = :credit_note
          SUBSCRIPTION = :subscription
          SALES_ORDER = :sales_order
          BLOCK = :block

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent#block
      class Block < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute balance
        #
        #   @return [String]
        required :balance, String

        # @!attribute credit_block_source
        #   How this credit block was created: `allocation` (a subscription's recurring
        #   credit allocation), `top_up` (an automatic balance-threshold top-up),
        #   `commitment` (a subscription commitment true-up rolled forward as credit), or
        #   `manual` (a manual credit ledger increment, including credits voided or expired
        #   off another block).
        #
        #   @return [Symbol, Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Block::CreditBlockSource]
        required :credit_block_source,
                 enum: -> { Orb::CreditBlockAccountingSyncSucceededWebhookEvent::Block::CreditBlockSource }

        # @!attribute effective_date
        #
        #   @return [Time, nil]
        required :effective_date, Time, nil?: true

        # @!attribute expiry_date
        #
        #   @return [Time, nil]
        required :expiry_date, Time, nil?: true

        # @!attribute filters
        #
        #   @return [Array<Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Block::Filter>]
        required :filters,
                 -> { Orb::Internal::Type::ArrayOf[Orb::CreditBlockAccountingSyncSucceededWebhookEvent::Block::Filter] }

        # @!attribute maximum_initial_balance
        #
        #   @return [String, nil]
        required :maximum_initial_balance, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

        # @!attribute per_unit_cost_basis
        #
        #   @return [String, nil]
        required :per_unit_cost_basis, String, nil?: true

        # @!attribute status
        #
        #   @return [Symbol, Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Block::Status]
        required :status, enum: -> { Orb::CreditBlockAccountingSyncSucceededWebhookEvent::Block::Status }

        # @!attribute credit_allocation
        #   The credit allocation that funded a block. Extends the allocation resource
        #   serialized on prices with the catalog-item attribution of the funding price.
        #
        #   @return [Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Block::CreditAllocation, nil]
        optional :credit_allocation,
                 -> { Orb::CreditBlockAccountingSyncSucceededWebhookEvent::Block::CreditAllocation },
                 nil?: true

        # @!attribute credit_commitment
        #   The subscription commitment whose true-up rolled forward into this credit block.
        #   Present only when `credit_block_source` is `commitment`.
        #
        #   @return [Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Block::CreditCommitment, nil]
        optional :credit_commitment,
                 -> { Orb::CreditBlockAccountingSyncSucceededWebhookEvent::Block::CreditCommitment },
                 nil?: true

        # @!method initialize(id:, balance:, credit_block_source:, effective_date:, expiry_date:, filters:, maximum_initial_balance:, metadata:, per_unit_cost_basis:, status:, credit_allocation: nil, credit_commitment: nil)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Block} for more
        #   details.
        #
        #   The Credit Block resource models prepaid credits within Orb.
        #
        #   @param id [String]
        #
        #   @param balance [String]
        #
        #   @param credit_block_source [Symbol, Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Block::CreditBlockSource] How this credit block was created: `allocation` (a subscription's recurring cred
        #
        #   @param effective_date [Time, nil]
        #
        #   @param expiry_date [Time, nil]
        #
        #   @param filters [Array<Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Block::Filter>]
        #
        #   @param maximum_initial_balance [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param per_unit_cost_basis [String, nil]
        #
        #   @param status [Symbol, Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Block::Status]
        #
        #   @param credit_allocation [Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Block::CreditAllocation, nil] The credit allocation that funded a block. Extends the allocation resource
        #
        #   @param credit_commitment [Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Block::CreditCommitment, nil] The subscription commitment whose true-up rolled forward into this credit block.

        # How this credit block was created: `allocation` (a subscription's recurring
        # credit allocation), `top_up` (an automatic balance-threshold top-up),
        # `commitment` (a subscription commitment true-up rolled forward as credit), or
        # `manual` (a manual credit ledger increment, including credits voided or expired
        # off another block).
        #
        # @see Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Block#credit_block_source
        module CreditBlockSource
          extend Orb::Internal::Type::Enum

          ALLOCATION = :allocation
          TOP_UP = :top_up
          COMMITMENT = :commitment
          MANUAL = :manual

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class Filter < Orb::Internal::Type::BaseModel
          # @!attribute field
          #   The property of the price to filter on.
          #
          #   @return [Symbol, Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Block::Filter::Field]
          required :field, enum: -> { Orb::CreditBlockAccountingSyncSucceededWebhookEvent::Block::Filter::Field }

          # @!attribute operator
          #   Should prices that match the filter be included or excluded.
          #
          #   @return [Symbol, Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Block::Filter::Operator]
          required :operator,
                   enum: -> { Orb::CreditBlockAccountingSyncSucceededWebhookEvent::Block::Filter::Operator }

          # @!attribute values
          #   The IDs or values that match this filter.
          #
          #   @return [Array<String>]
          required :values, Orb::Internal::Type::ArrayOf[String]

          # @!method initialize(field:, operator:, values:)
          #   @param field [Symbol, Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Block::Filter::Field] The property of the price to filter on.
          #
          #   @param operator [Symbol, Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Block::Filter::Operator] Should prices that match the filter be included or excluded.
          #
          #   @param values [Array<String>] The IDs or values that match this filter.

          # The property of the price to filter on.
          #
          # @see Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Block::Filter#field
          module Field
            extend Orb::Internal::Type::Enum

            PRICE_ID = :price_id
            ITEM_ID = :item_id
            PRICE_TYPE = :price_type
            CURRENCY = :currency
            PRICING_UNIT_ID = :pricing_unit_id

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Should prices that match the filter be included or excluded.
          #
          # @see Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Block::Filter#operator
          module Operator
            extend Orb::Internal::Type::Enum

            INCLUDES = :includes
            EXCLUDES = :excludes

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Block#status
        module Status
          extend Orb::Internal::Type::Enum

          ACTIVE = :active
          PENDING_PAYMENT = :pending_payment

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Block#credit_allocation
        class CreditAllocation < Orb::Internal::Type::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::Internal::Type::Boolean

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!attribute custom_expiration
          #
          #   @return [Orb::Models::CustomExpiration, nil]
          required :custom_expiration, -> { Orb::CustomExpiration }, nil?: true

          # @!attribute item_id
          #   The ID of the catalog item this block was allocated from, derived from the
          #   allocation's price.
          #
          #   @return [String]
          required :item_id, String

          # @!attribute filters
          #
          #   @return [Array<Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Block::CreditAllocation::Filter>, nil]
          optional :filters,
                   -> { Orb::Internal::Type::ArrayOf[Orb::CreditBlockAccountingSyncSucceededWebhookEvent::Block::CreditAllocation::Filter] }

          # @!attribute license_type_id
          #
          #   @return [String, nil]
          optional :license_type_id, String, nil?: true

          # @!method initialize(allows_rollover:, currency:, custom_expiration:, item_id:, filters: nil, license_type_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Block::CreditAllocation}
          #   for more details.
          #
          #   The credit allocation that funded a block. Extends the allocation resource
          #   serialized on prices with the catalog-item attribution of the funding price.
          #
          #   @param allows_rollover [Boolean]
          #
          #   @param currency [String]
          #
          #   @param custom_expiration [Orb::Models::CustomExpiration, nil]
          #
          #   @param item_id [String] The ID of the catalog item this block was allocated from, derived from the alloc
          #
          #   @param filters [Array<Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Block::CreditAllocation::Filter>]
          #
          #   @param license_type_id [String, nil]

          class Filter < Orb::Internal::Type::BaseModel
            # @!attribute field
            #   The property of the price to filter on.
            #
            #   @return [Symbol, Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Block::CreditAllocation::Filter::Field]
            required :field,
                     enum: -> { Orb::CreditBlockAccountingSyncSucceededWebhookEvent::Block::CreditAllocation::Filter::Field }

            # @!attribute operator
            #   Should prices that match the filter be included or excluded.
            #
            #   @return [Symbol, Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Block::CreditAllocation::Filter::Operator]
            required :operator,
                     enum: -> { Orb::CreditBlockAccountingSyncSucceededWebhookEvent::Block::CreditAllocation::Filter::Operator }

            # @!attribute values
            #   The IDs or values that match this filter.
            #
            #   @return [Array<String>]
            required :values, Orb::Internal::Type::ArrayOf[String]

            # @!method initialize(field:, operator:, values:)
            #   @param field [Symbol, Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Block::CreditAllocation::Filter::Field] The property of the price to filter on.
            #
            #   @param operator [Symbol, Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Block::CreditAllocation::Filter::Operator] Should prices that match the filter be included or excluded.
            #
            #   @param values [Array<String>] The IDs or values that match this filter.

            # The property of the price to filter on.
            #
            # @see Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Block::CreditAllocation::Filter#field
            module Field
              extend Orb::Internal::Type::Enum

              PRICE_ID = :price_id
              ITEM_ID = :item_id
              PRICE_TYPE = :price_type
              CURRENCY = :currency
              PRICING_UNIT_ID = :pricing_unit_id

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Should prices that match the filter be included or excluded.
            #
            # @see Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Block::CreditAllocation::Filter#operator
            module Operator
              extend Orb::Internal::Type::Enum

              INCLUDES = :includes
              EXCLUDES = :excludes

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        # @see Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent::Block#credit_commitment
        class CreditCommitment < Orb::Internal::Type::BaseModel
          # @!attribute id
          #   The ID of the subscription commitment this block was rolled forward from.
          #
          #   @return [String]
          required :id, String

          # @!attribute subscription_id
          #   The subscription the commitment belongs to.
          #
          #   @return [String, nil]
          optional :subscription_id, String, nil?: true

          # @!method initialize(id:, subscription_id: nil)
          #   The subscription commitment whose true-up rolled forward into this credit block.
          #   Present only when `credit_block_source` is `commitment`.
          #
          #   @param id [String] The ID of the subscription commitment this block was rolled forward from.
          #
          #   @param subscription_id [String, nil] The subscription the commitment belongs to.
        end
      end

      # @see Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute connection_type
        #
        #   @return [String]
        required :connection_type, String

        # @!method initialize(connection_type:)
        #   @param connection_type [String]
      end

      # The event this payload describes.
      #
      # @see Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        CREDIT_BLOCK_ACCOUNTING_SYNC_SUCCEEDED = :"credit_block.accounting_sync_succeeded"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
