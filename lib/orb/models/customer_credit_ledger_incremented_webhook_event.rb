# frozen_string_literal: true

module Orb
  module Models
    class CustomerCreditLedgerIncrementedWebhookEvent < Orb::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of this webhook event.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   The time at which this event was created, to the second.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute customer
      #   A customer is a buyer of your products, and the other party to the billing
      #   relationship.
      #
      #   In Orb, customers are assigned system generated identifiers automatically, but
      #   it's often desirable to have these match existing identifiers in your system. To
      #   avoid having to denormalize Orb ID information, you can pass in an
      #   `external_customer_id` with your own identifier. See
      #   [Customer ID Aliases](/events-and-metrics/customer-aliases) for further
      #   information about how these aliases work in Orb.
      #
      #   In addition to having an identifier in your system, a customer may exist in a
      #   payment provider solution like Stripe. Use the `payment_provider_id` and the
      #   `payment_provider` enum field to express this mapping.
      #
      #   A customer also has a timezone (from the standard
      #   [IANA timezone database](https://www.iana.org/time-zones)), which defaults to
      #   your account's timezone. See [Timezone localization](/essentials/timezones) for
      #   information on what this timezone parameter influences within Orb.
      #
      #   @return [Orb::Models::Customer]
      required :customer, -> { Orb::Customer }

      # @!attribute properties
      #
      #   @return [Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties]
      required :properties, -> { Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Type]
      required :type, enum: -> { Orb::CustomerCreditLedgerIncrementedWebhookEvent::Type }

      # @!method initialize(id:, created_at:, customer:, properties:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent} for more details.
      #
      #   Issued when a customer's credit ledger is incremented.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param customer [Orb::Models::Customer] A customer is a buyer of your products, and the other party to the billing relat
      #
      #   @param properties [Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties]
      #
      #   @param type [Symbol, Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute block
        #   The Credit Block resource models prepaid credits within Orb.
        #
        #   @return [Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block]
        required :block, -> { Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block }

        # @!attribute pricing_unit
        #   A currency or custom credit unit, as embedded in webhook payloads.
        #
        #   @return [Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::PricingUnit]
        required :pricing_unit, -> { Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::PricingUnit }

        # @!method initialize(block:, pricing_unit:)
        #   @param block [Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block] The Credit Block resource models prepaid credits within Orb.
        #
        #   @param pricing_unit [Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::PricingUnit] A currency or custom credit unit, as embedded in webhook payloads.

        # @see Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties#block
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
          #   @return [Symbol, Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditBlockSource]
          required :credit_block_source,
                   enum: -> { Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditBlockSource }

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
          #   @return [Array<Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Filter>]
          required :filters,
                   -> { Orb::Internal::Type::ArrayOf[Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Filter] }

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
          #   @return [Symbol, Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Status]
          required :status, enum: -> { Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Status }

          # @!attribute credit_allocation
          #   The credit allocation that funded a block. Extends the allocation resource
          #   serialized on prices with the catalog-item attribution of the funding price.
          #
          #   @return [Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation, nil]
          optional :credit_allocation,
                   -> {
                     Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation
                   },
                   nil?: true

          # @!attribute credit_commitment
          #   The subscription commitment whose true-up rolled forward into this credit block.
          #   Present only when `credit_block_source` is `commitment`.
          #
          #   @return [Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditCommitment, nil]
          optional :credit_commitment,
                   -> {
                     Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditCommitment
                   },
                   nil?: true

          # @!method initialize(id:, balance:, credit_block_source:, effective_date:, expiry_date:, filters:, maximum_initial_balance:, metadata:, per_unit_cost_basis:, status:, credit_allocation: nil, credit_commitment: nil)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block}
          #   for more details.
          #
          #   The Credit Block resource models prepaid credits within Orb.
          #
          #   @param id [String]
          #
          #   @param balance [String]
          #
          #   @param credit_block_source [Symbol, Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditBlockSource] How this credit block was created: `allocation` (a subscription's recurring cred
          #
          #   @param effective_date [Time, nil]
          #
          #   @param expiry_date [Time, nil]
          #
          #   @param filters [Array<Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Filter>]
          #
          #   @param maximum_initial_balance [String, nil]
          #
          #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
          #
          #   @param per_unit_cost_basis [String, nil]
          #
          #   @param status [Symbol, Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Status]
          #
          #   @param credit_allocation [Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation, nil] The credit allocation that funded a block. Extends the allocation resource
          #
          #   @param credit_commitment [Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditCommitment, nil] The subscription commitment whose true-up rolled forward into this credit block.

          # How this credit block was created: `allocation` (a subscription's recurring
          # credit allocation), `top_up` (an automatic balance-threshold top-up),
          # `commitment` (a subscription commitment true-up rolled forward as credit), or
          # `manual` (a manual credit ledger increment, including credits voided or expired
          # off another block).
          #
          # @see Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block#credit_block_source
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
            #   @return [Symbol, Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Filter::Field]
            required :field,
                     enum: -> { Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Filter::Field }

            # @!attribute operator
            #   Should prices that match the filter be included or excluded.
            #
            #   @return [Symbol, Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Filter::Operator]
            required :operator,
                     enum: -> { Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Filter::Operator }

            # @!attribute values
            #   The IDs or values that match this filter.
            #
            #   @return [Array<String>]
            required :values, Orb::Internal::Type::ArrayOf[String]

            # @!method initialize(field:, operator:, values:)
            #   @param field [Symbol, Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Filter::Field] The property of the price to filter on.
            #
            #   @param operator [Symbol, Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Filter::Operator] Should prices that match the filter be included or excluded.
            #
            #   @param values [Array<String>] The IDs or values that match this filter.

            # The property of the price to filter on.
            #
            # @see Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Filter#field
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
            # @see Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Filter#operator
            module Operator
              extend Orb::Internal::Type::Enum

              INCLUDES = :includes
              EXCLUDES = :excludes

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block#status
          module Status
            extend Orb::Internal::Type::Enum

            ACTIVE = :active
            PENDING_PAYMENT = :pending_payment

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block#credit_allocation
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
            #   @return [Array<Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter>, nil]
            optional :filters,
                     -> { Orb::Internal::Type::ArrayOf[Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter] }

            # @!attribute license_type_id
            #
            #   @return [String, nil]
            optional :license_type_id, String, nil?: true

            # @!method initialize(allows_rollover:, currency:, custom_expiration:, item_id:, filters: nil, license_type_id: nil)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation}
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
            #   @param filters [Array<Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter>]
            #
            #   @param license_type_id [String, nil]

            class Filter < Orb::Internal::Type::BaseModel
              # @!attribute field
              #   The property of the price to filter on.
              #
              #   @return [Symbol, Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter::Field]
              required :field,
                       enum: -> { Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter::Field }

              # @!attribute operator
              #   Should prices that match the filter be included or excluded.
              #
              #   @return [Symbol, Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter::Operator]
              required :operator,
                       enum: -> { Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter::Operator }

              # @!attribute values
              #   The IDs or values that match this filter.
              #
              #   @return [Array<String>]
              required :values, Orb::Internal::Type::ArrayOf[String]

              # @!method initialize(field:, operator:, values:)
              #   @param field [Symbol, Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter::Field] The property of the price to filter on.
              #
              #   @param operator [Symbol, Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter::Operator] Should prices that match the filter be included or excluded.
              #
              #   @param values [Array<String>] The IDs or values that match this filter.

              # The property of the price to filter on.
              #
              # @see Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter#field
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
              # @see Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter#operator
              module Operator
                extend Orb::Internal::Type::Enum

                INCLUDES = :includes
                EXCLUDES = :excludes

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          # @see Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block#credit_commitment
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

        # @see Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent::Properties#pricing_unit
        class PricingUnit < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute display_name
          #
          #   @return [String, nil]
          required :display_name, String, nil?: true

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute symbol
          #
          #   @return [String, nil]
          required :symbol, String, nil?: true

          # @!method initialize(id:, display_name:, name:, symbol:)
          #   A currency or custom credit unit, as embedded in webhook payloads.
          #
          #   @param id [String]
          #   @param display_name [String, nil]
          #   @param name [String]
          #   @param symbol [String, nil]
        end
      end

      # The event this payload describes.
      #
      # @see Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        CUSTOMER_CREDIT_LEDGER_INCREMENTED = :"customer.credit_ledger_incremented"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
