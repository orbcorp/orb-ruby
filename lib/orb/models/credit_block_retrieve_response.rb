# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::CreditBlocks#retrieve
    class CreditBlockRetrieveResponse < Orb::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute balance
      #
      #   @return [Float]
      required :balance, Float

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
      #   @return [Array<Orb::Models::CreditBlockRetrieveResponse::Filter>]
      required :filters, -> { Orb::Internal::Type::ArrayOf[Orb::Models::CreditBlockRetrieveResponse::Filter] }

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
      #   @return [Symbol, Orb::Models::CreditBlockRetrieveResponse::Status]
      required :status, enum: -> { Orb::Models::CreditBlockRetrieveResponse::Status }

      # @!method initialize(id:, balance:, effective_date:, expiry_date:, filters:, maximum_initial_balance:, metadata:, per_unit_cost_basis:, status:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::CreditBlockRetrieveResponse} for more details.
      #
      #   The Credit Block resource models prepaid credits within Orb.
      #
      #   @param id [String]
      #
      #   @param balance [Float]
      #
      #   @param effective_date [Time, nil]
      #
      #   @param expiry_date [Time, nil]
      #
      #   @param filters [Array<Orb::Models::CreditBlockRetrieveResponse::Filter>]
      #
      #   @param maximum_initial_balance [Float, nil]
      #
      #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
      #
      #   @param per_unit_cost_basis [String, nil]
      #
      #   @param status [Symbol, Orb::Models::CreditBlockRetrieveResponse::Status]

      class Filter < Orb::Internal::Type::BaseModel
        # @!attribute field
        #   The property of the price to filter on.
        #
        #   @return [Symbol, Orb::Models::CreditBlockRetrieveResponse::Filter::Field]
        required :field, enum: -> { Orb::Models::CreditBlockRetrieveResponse::Filter::Field }

        # @!attribute operator
        #   Should prices that match the filter be included or excluded.
        #
        #   @return [Symbol, Orb::Models::CreditBlockRetrieveResponse::Filter::Operator]
        required :operator, enum: -> { Orb::Models::CreditBlockRetrieveResponse::Filter::Operator }

        # @!attribute values
        #   The IDs or values that match this filter.
        #
        #   @return [Array<String>]
        required :values, Orb::Internal::Type::ArrayOf[String]

        # @!method initialize(field:, operator:, values:)
        #   @param field [Symbol, Orb::Models::CreditBlockRetrieveResponse::Filter::Field] The property of the price to filter on.
        #
        #   @param operator [Symbol, Orb::Models::CreditBlockRetrieveResponse::Filter::Operator] Should prices that match the filter be included or excluded.
        #
        #   @param values [Array<String>] The IDs or values that match this filter.

        # The property of the price to filter on.
        #
        # @see Orb::Models::CreditBlockRetrieveResponse::Filter#field
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
        # @see Orb::Models::CreditBlockRetrieveResponse::Filter#operator
        module Operator
          extend Orb::Internal::Type::Enum

          INCLUDES = :includes
          EXCLUDES = :excludes

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Orb::Models::CreditBlockRetrieveResponse#status
      module Status
        extend Orb::Internal::Type::Enum

        ACTIVE = :active
        PENDING_PAYMENT = :pending_payment

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
