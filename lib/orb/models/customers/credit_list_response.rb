# frozen_string_literal: true

module Orb
  module Models
    module Customers
      # @see Orb::Resources::Customers::Credits#list
      class CreditListResponse < Orb::Internal::Type::BaseModel
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
        #   @return [Array<Orb::Models::Customers::CreditListResponse::Filter>]
        required :filters, -> { Orb::Internal::Type::ArrayOf[Orb::Models::Customers::CreditListResponse::Filter] }

        # @!attribute maximum_initial_balance
        #
        #   @return [Float, nil]
        required :maximum_initial_balance, Float, nil?: true

        # @!attribute per_unit_cost_basis
        #
        #   @return [String, nil]
        required :per_unit_cost_basis, String, nil?: true

        # @!attribute status
        #
        #   @return [Symbol, Orb::Models::Customers::CreditListResponse::Status]
        required :status, enum: -> { Orb::Models::Customers::CreditListResponse::Status }

        # @!method initialize(id:, balance:, effective_date:, expiry_date:, filters:, maximum_initial_balance:, per_unit_cost_basis:, status:)
        #   @param id [String]
        #   @param balance [Float]
        #   @param effective_date [Time, nil]
        #   @param expiry_date [Time, nil]
        #   @param filters [Array<Orb::Models::Customers::CreditListResponse::Filter>]
        #   @param maximum_initial_balance [Float, nil]
        #   @param per_unit_cost_basis [String, nil]
        #   @param status [Symbol, Orb::Models::Customers::CreditListResponse::Status]

        class Filter < Orb::Internal::Type::BaseModel
          # @!attribute field
          #   The property of the price the block applies to. Only item_id is supported.
          #
          #   @return [Symbol, Orb::Models::Customers::CreditListResponse::Filter::Field]
          required :field, enum: -> { Orb::Models::Customers::CreditListResponse::Filter::Field }

          # @!attribute operator
          #   Should prices that match the filter be included or excluded.
          #
          #   @return [Symbol, Orb::Models::Customers::CreditListResponse::Filter::Operator]
          required :operator, enum: -> { Orb::Models::Customers::CreditListResponse::Filter::Operator }

          # @!attribute values
          #   The IDs or values that match this filter.
          #
          #   @return [Array<String>]
          required :values, Orb::Internal::Type::ArrayOf[String]

          # @!method initialize(field:, operator:, values:)
          #   A PriceFilter that only allows item_id field for block filters.
          #
          #   @param field [Symbol, Orb::Models::Customers::CreditListResponse::Filter::Field] The property of the price the block applies to. Only item_id is supported.
          #
          #   @param operator [Symbol, Orb::Models::Customers::CreditListResponse::Filter::Operator] Should prices that match the filter be included or excluded.
          #
          #   @param values [Array<String>] The IDs or values that match this filter.

          # The property of the price the block applies to. Only item_id is supported.
          #
          # @see Orb::Models::Customers::CreditListResponse::Filter#field
          module Field
            extend Orb::Internal::Type::Enum

            ITEM_ID = :item_id

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Should prices that match the filter be included or excluded.
          #
          # @see Orb::Models::Customers::CreditListResponse::Filter#operator
          module Operator
            extend Orb::Internal::Type::Enum

            INCLUDES = :includes
            EXCLUDES = :excludes

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Customers::CreditListResponse#status
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
end
