require 'model'

module Models
end

class Models::Discount < Model

        # @!attribute [rw] discount_type
        required :discount_type, Enum.new([:"percentage", :"trial", :"usage", :"amount"])
        # @!attribute [rw] amount_discount
        optional :amount_discount, String
        # @!attribute [rw] applies_to_price_ids
        optional :applies_to_price_ids, ArrayOf.new(String)
        # @!attribute [rw] percentage_discount
        optional :percentage_discount, Float
        # @!attribute [rw] trial_amount_discount
        optional :trial_amount_discount, String
        # @!attribute [rw] usage_discount
        optional :usage_discount, Float

end