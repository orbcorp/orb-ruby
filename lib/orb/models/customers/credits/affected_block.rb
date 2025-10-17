# frozen_string_literal: true

module Orb
  module Models
    module Customers
      module Credits
        class AffectedBlock < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute block_filters
          #
          #   @return [Array<Orb::Models::Customers::Credits::AffectedBlock::BlockFilter>, nil]
          required :block_filters,
                   -> { Orb::Internal::Type::ArrayOf[Orb::Customers::Credits::AffectedBlock::BlockFilter] },
                   nil?: true

          # @!attribute expiry_date
          #
          #   @return [Time, nil]
          required :expiry_date, Time, nil?: true

          # @!attribute per_unit_cost_basis
          #
          #   @return [String, nil]
          required :per_unit_cost_basis, String, nil?: true

          # @!method initialize(id:, block_filters:, expiry_date:, per_unit_cost_basis:)
          #   @param id [String]
          #   @param block_filters [Array<Orb::Models::Customers::Credits::AffectedBlock::BlockFilter>, nil]
          #   @param expiry_date [Time, nil]
          #   @param per_unit_cost_basis [String, nil]

          class BlockFilter < Orb::Internal::Type::BaseModel
            # @!attribute field
            #   The property of the price to filter on.
            #
            #   @return [Symbol, Orb::Models::Customers::Credits::AffectedBlock::BlockFilter::Field]
            required :field, enum: -> { Orb::Customers::Credits::AffectedBlock::BlockFilter::Field }

            # @!attribute operator
            #   Should prices that match the filter be included or excluded.
            #
            #   @return [Symbol, Orb::Models::Customers::Credits::AffectedBlock::BlockFilter::Operator]
            required :operator, enum: -> { Orb::Customers::Credits::AffectedBlock::BlockFilter::Operator }

            # @!attribute values
            #   The IDs or values that match this filter.
            #
            #   @return [Array<String>]
            required :values, Orb::Internal::Type::ArrayOf[String]

            # @!method initialize(field:, operator:, values:)
            #   @param field [Symbol, Orb::Models::Customers::Credits::AffectedBlock::BlockFilter::Field] The property of the price to filter on.
            #
            #   @param operator [Symbol, Orb::Models::Customers::Credits::AffectedBlock::BlockFilter::Operator] Should prices that match the filter be included or excluded.
            #
            #   @param values [Array<String>] The IDs or values that match this filter.

            # The property of the price to filter on.
            #
            # @see Orb::Models::Customers::Credits::AffectedBlock::BlockFilter#field
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
            # @see Orb::Models::Customers::Credits::AffectedBlock::BlockFilter#operator
            module Operator
              extend Orb::Internal::Type::Enum

              INCLUDES = :includes
              EXCLUDES = :excludes

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
