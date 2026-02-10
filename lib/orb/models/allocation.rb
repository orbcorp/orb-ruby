# frozen_string_literal: true

module Orb
  module Models
    class Allocation < Orb::Internal::Type::BaseModel
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

      # @!attribute filters
      #
      #   @return [Array<Orb::Models::Allocation::Filter>, nil]
      optional :filters, -> { Orb::Internal::Type::ArrayOf[Orb::Allocation::Filter] }

      # @!attribute license_type_id
      #
      #   @return [String, nil]
      optional :license_type_id, String, nil?: true

      # @!method initialize(allows_rollover:, currency:, custom_expiration:, filters: nil, license_type_id: nil)
      #   @param allows_rollover [Boolean]
      #   @param currency [String]
      #   @param custom_expiration [Orb::Models::CustomExpiration, nil]
      #   @param filters [Array<Orb::Models::Allocation::Filter>]
      #   @param license_type_id [String, nil]

      class Filter < Orb::Internal::Type::BaseModel
        # @!attribute field
        #   The property of the price to filter on.
        #
        #   @return [Symbol, Orb::Models::Allocation::Filter::Field]
        required :field, enum: -> { Orb::Allocation::Filter::Field }

        # @!attribute operator
        #   Should prices that match the filter be included or excluded.
        #
        #   @return [Symbol, Orb::Models::Allocation::Filter::Operator]
        required :operator, enum: -> { Orb::Allocation::Filter::Operator }

        # @!attribute values
        #   The IDs or values that match this filter.
        #
        #   @return [Array<String>]
        required :values, Orb::Internal::Type::ArrayOf[String]

        # @!method initialize(field:, operator:, values:)
        #   @param field [Symbol, Orb::Models::Allocation::Filter::Field] The property of the price to filter on.
        #
        #   @param operator [Symbol, Orb::Models::Allocation::Filter::Operator] Should prices that match the filter be included or excluded.
        #
        #   @param values [Array<String>] The IDs or values that match this filter.

        # The property of the price to filter on.
        #
        # @see Orb::Models::Allocation::Filter#field
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
        # @see Orb::Models::Allocation::Filter#operator
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
