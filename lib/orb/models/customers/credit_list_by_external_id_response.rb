# frozen_string_literal: true

module Orb
  module Models
    module Customers
      # @see Orb::Resources::Customers::Credits#list_by_external_id
      class CreditListByExternalIDResponse < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute balance
        #
        #   @return [Float]
        required :balance, Float

        # @!attribute credit_block_source
        #   How this credit block was created: `allocation` (a subscription's recurring
        #   credit allocation), `top_up` (an automatic balance-threshold top-up),
        #   `commitment` (a subscription commitment true-up rolled forward as credit), or
        #   `manual` (a manual credit ledger increment, including credits voided or expired
        #   off another block).
        #
        #   @return [Symbol, Orb::Models::Customers::CreditListByExternalIDResponse::CreditBlockSource]
        required :credit_block_source,
                 enum: -> { Orb::Models::Customers::CreditListByExternalIDResponse::CreditBlockSource }

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
        #   @return [Array<Orb::Models::Customers::CreditListByExternalIDResponse::Filter>]
        required :filters,
                 -> { Orb::Internal::Type::ArrayOf[Orb::Models::Customers::CreditListByExternalIDResponse::Filter] }

        # @!attribute maximum_initial_balance
        #
        #   @return [Float, nil]
        required :maximum_initial_balance, Float, nil?: true

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
        #   @return [Symbol, Orb::Models::Customers::CreditListByExternalIDResponse::Status]
        required :status, enum: -> { Orb::Models::Customers::CreditListByExternalIDResponse::Status }

        # @!attribute credit_allocation
        #   The credit allocation that funded a block. Extends the allocation resource
        #   serialized on prices with the catalog-item attribution of the funding price.
        #
        #   @return [Orb::Models::Customers::CreditListByExternalIDResponse::CreditAllocation, nil]
        optional :credit_allocation,
                 -> { Orb::Models::Customers::CreditListByExternalIDResponse::CreditAllocation },
                 nil?: true

        # @!attribute credit_commitment
        #   The subscription commitment whose true-up rolled forward into this credit block.
        #   Present only when `credit_block_source` is `commitment`.
        #
        #   @return [Orb::Models::Customers::CreditListByExternalIDResponse::CreditCommitment, nil]
        optional :credit_commitment,
                 -> { Orb::Models::Customers::CreditListByExternalIDResponse::CreditCommitment },
                 nil?: true

        # @!method initialize(id:, balance:, credit_block_source:, effective_date:, expiry_date:, filters:, maximum_initial_balance:, metadata:, per_unit_cost_basis:, status:, credit_allocation: nil, credit_commitment: nil)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Customers::CreditListByExternalIDResponse} for more details.
        #
        #   @param id [String]
        #
        #   @param balance [Float]
        #
        #   @param credit_block_source [Symbol, Orb::Models::Customers::CreditListByExternalIDResponse::CreditBlockSource] How this credit block was created: `allocation` (a subscription's recurring cred
        #
        #   @param effective_date [Time, nil]
        #
        #   @param expiry_date [Time, nil]
        #
        #   @param filters [Array<Orb::Models::Customers::CreditListByExternalIDResponse::Filter>]
        #
        #   @param maximum_initial_balance [Float, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param per_unit_cost_basis [String, nil]
        #
        #   @param status [Symbol, Orb::Models::Customers::CreditListByExternalIDResponse::Status]
        #
        #   @param credit_allocation [Orb::Models::Customers::CreditListByExternalIDResponse::CreditAllocation, nil] The credit allocation that funded a block. Extends the allocation resource
        #
        #   @param credit_commitment [Orb::Models::Customers::CreditListByExternalIDResponse::CreditCommitment, nil] The subscription commitment whose true-up rolled forward into this credit block.

        # How this credit block was created: `allocation` (a subscription's recurring
        # credit allocation), `top_up` (an automatic balance-threshold top-up),
        # `commitment` (a subscription commitment true-up rolled forward as credit), or
        # `manual` (a manual credit ledger increment, including credits voided or expired
        # off another block).
        #
        # @see Orb::Models::Customers::CreditListByExternalIDResponse#credit_block_source
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
          #   The property of the price the block applies to. Only item_id is supported.
          #
          #   @return [Symbol, Orb::Models::Customers::CreditListByExternalIDResponse::Filter::Field]
          required :field, enum: -> { Orb::Models::Customers::CreditListByExternalIDResponse::Filter::Field }

          # @!attribute operator
          #   Should prices that match the filter be included or excluded.
          #
          #   @return [Symbol, Orb::Models::Customers::CreditListByExternalIDResponse::Filter::Operator]
          required :operator, enum: -> { Orb::Models::Customers::CreditListByExternalIDResponse::Filter::Operator }

          # @!attribute values
          #   The IDs or values that match this filter.
          #
          #   @return [Array<String>]
          required :values, Orb::Internal::Type::ArrayOf[String]

          # @!method initialize(field:, operator:, values:)
          #   A PriceFilter that only allows item_id field for block filters.
          #
          #   @param field [Symbol, Orb::Models::Customers::CreditListByExternalIDResponse::Filter::Field] The property of the price the block applies to. Only item_id is supported.
          #
          #   @param operator [Symbol, Orb::Models::Customers::CreditListByExternalIDResponse::Filter::Operator] Should prices that match the filter be included or excluded.
          #
          #   @param values [Array<String>] The IDs or values that match this filter.

          # The property of the price the block applies to. Only item_id is supported.
          #
          # @see Orb::Models::Customers::CreditListByExternalIDResponse::Filter#field
          module Field
            extend Orb::Internal::Type::Enum

            ITEM_ID = :item_id

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Should prices that match the filter be included or excluded.
          #
          # @see Orb::Models::Customers::CreditListByExternalIDResponse::Filter#operator
          module Operator
            extend Orb::Internal::Type::Enum

            INCLUDES = :includes
            EXCLUDES = :excludes

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Customers::CreditListByExternalIDResponse#status
        module Status
          extend Orb::Internal::Type::Enum

          ACTIVE = :active
          PENDING_PAYMENT = :pending_payment

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Customers::CreditListByExternalIDResponse#credit_allocation
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
          #   @return [Array<Orb::Models::Customers::CreditListByExternalIDResponse::CreditAllocation::Filter>, nil]
          optional :filters,
                   -> { Orb::Internal::Type::ArrayOf[Orb::Models::Customers::CreditListByExternalIDResponse::CreditAllocation::Filter] }

          # @!attribute license_type_id
          #
          #   @return [String, nil]
          optional :license_type_id, String, nil?: true

          # @!method initialize(allows_rollover:, currency:, custom_expiration:, item_id:, filters: nil, license_type_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Customers::CreditListByExternalIDResponse::CreditAllocation} for
          #   more details.
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
          #   @param filters [Array<Orb::Models::Customers::CreditListByExternalIDResponse::CreditAllocation::Filter>]
          #
          #   @param license_type_id [String, nil]

          class Filter < Orb::Internal::Type::BaseModel
            # @!attribute field
            #   The property of the price to filter on.
            #
            #   @return [Symbol, Orb::Models::Customers::CreditListByExternalIDResponse::CreditAllocation::Filter::Field]
            required :field,
                     enum: -> { Orb::Models::Customers::CreditListByExternalIDResponse::CreditAllocation::Filter::Field }

            # @!attribute operator
            #   Should prices that match the filter be included or excluded.
            #
            #   @return [Symbol, Orb::Models::Customers::CreditListByExternalIDResponse::CreditAllocation::Filter::Operator]
            required :operator,
                     enum: -> { Orb::Models::Customers::CreditListByExternalIDResponse::CreditAllocation::Filter::Operator }

            # @!attribute values
            #   The IDs or values that match this filter.
            #
            #   @return [Array<String>]
            required :values, Orb::Internal::Type::ArrayOf[String]

            # @!method initialize(field:, operator:, values:)
            #   @param field [Symbol, Orb::Models::Customers::CreditListByExternalIDResponse::CreditAllocation::Filter::Field] The property of the price to filter on.
            #
            #   @param operator [Symbol, Orb::Models::Customers::CreditListByExternalIDResponse::CreditAllocation::Filter::Operator] Should prices that match the filter be included or excluded.
            #
            #   @param values [Array<String>] The IDs or values that match this filter.

            # The property of the price to filter on.
            #
            # @see Orb::Models::Customers::CreditListByExternalIDResponse::CreditAllocation::Filter#field
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
            # @see Orb::Models::Customers::CreditListByExternalIDResponse::CreditAllocation::Filter#operator
            module Operator
              extend Orb::Internal::Type::Enum

              INCLUDES = :includes
              EXCLUDES = :excludes

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        # @see Orb::Models::Customers::CreditListByExternalIDResponse#credit_commitment
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
    end
  end
end
