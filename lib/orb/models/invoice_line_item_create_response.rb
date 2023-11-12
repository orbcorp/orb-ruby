require "orb/model"
module Orb
  module Models
    class InvoiceLineItemCreateResponse < Orb::Model
      class Maximum < Orb::Model
        # @!attribute [rw] applies_to_price_ids
        required :applies_to_price_ids, Orb::ArrayOf.new(String)
        # @!attribute [rw] maximum_amount
        required :maximum_amount, String
      end
      class Minimum < Orb::Model
        # @!attribute [rw] applies_to_price_ids
        required :applies_to_price_ids, Orb::ArrayOf.new(String)
        # @!attribute [rw] minimum_amount
        required :minimum_amount, String
      end
      class TaxAmounts < Orb::Model
        # @!attribute [rw] amount
        required :amount, String
        # @!attribute [rw] tax_rate_description
        required :tax_rate_description, String
        # @!attribute [rw] tax_rate_percentage
        required :tax_rate_percentage, String
      end
      # @!attribute [rw] id
      required :id, String
      # @!attribute [rw] amount
      required :amount, String
      # @!attribute [rw] discount
      required :discount, Orb::Unknown
      # @!attribute [rw] end_date
      required :end_date, String
      # @!attribute [rw] grouping
      required :grouping, String
      # @!attribute [rw] maximum
      required :maximum, Maximum
      # @!attribute [rw] maximum_amount
      required :maximum_amount, String
      # @!attribute [rw] minimum
      required :minimum, Minimum
      # @!attribute [rw] minimum_amount
      required :minimum_amount, String
      # @!attribute [rw] name_
      required :name_, String
      # @!attribute [rw] price
      required :price, Orb::Unknown
      # @!attribute [rw] quantity
      required :quantity, Float
      # @!attribute [rw] start_date
      required :start_date, String
      # @!attribute [rw] sub_line_items
      required :sub_line_items, Orb::ArrayOf.new(Orb::Unknown)
      # @!attribute [rw] subtotal
      required :subtotal, String
      # @!attribute [rw] tax_amounts
      required :tax_amounts, Orb::ArrayOf.new(TaxAmounts)
    end
  end
end
