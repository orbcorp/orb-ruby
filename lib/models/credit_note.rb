require 'model'

module Models
end

class Models::CreditNote < Model

        class Customer < Model

                # @!attribute [rw] id
                required :id, String
                # @!attribute [rw] external_customer_id
                required :external_customer_id, String

        end
        class Discounts < Model

                class AppliesToPrices < Model

                        # @!attribute [rw] id
                        required :id, String
                        # @!attribute [rw] name
                        required :name, String

                end
                # @!attribute [rw] amount_applied
                required :amount_applied, String
                # @!attribute [rw] discount_type
                required :discount_type, Enum.new([:"percentage"])
                # @!attribute [rw] percentage_discount
                required :percentage_discount, Float
                # @!attribute [rw] applies_to_prices
                optional :applies_to_prices, ArrayOf.new(AppliesToPrices)
                # @!attribute [rw] reason
                optional :reason, String

        end
        class LineItems < Model

                class Discounts < Model

                        # @!attribute [rw] id
                        required :id, String
                        # @!attribute [rw] amount_applied
                        required :amount_applied, String
                        # @!attribute [rw] applies_to_price_ids
                        required :applies_to_price_ids, ArrayOf.new(String)
                        # @!attribute [rw] discount_type
                        required :discount_type, Enum.new([:"percentage", :"amount"])
                        # @!attribute [rw] percentage_discount
                        required :percentage_discount, Float
                        # @!attribute [rw] amount_discount
                        optional :amount_discount, String
                        # @!attribute [rw] reason
                        optional :reason, String

                end
                class SubLineItems < Model

                        # @!attribute [rw] amount
                        required :amount, String
                        # @!attribute [rw] name
                        required :name, String
                        # @!attribute [rw] quantity
                        required :quantity, Float

                end
                class TaxAmounts < Model

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
                # @!attribute [rw] discounts
                required :discounts, ArrayOf.new(Discounts)
                # @!attribute [rw] name
                required :name, String
                # @!attribute [rw] quantity
                required :quantity, Float
                # @!attribute [rw] sub_line_items
                required :sub_line_items, ArrayOf.new(SubLineItems)
                # @!attribute [rw] subtotal
                required :subtotal, String
                # @!attribute [rw] tax_amounts
                required :tax_amounts, ArrayOf.new(TaxAmounts)

        end
        class MaximumAmountAdjustment < Model

                class AppliesToPrices < Model

                        # @!attribute [rw] id
                        required :id, String
                        # @!attribute [rw] name
                        required :name, String

                end
                # @!attribute [rw] amount_applied
                required :amount_applied, String
                # @!attribute [rw] discount_type
                required :discount_type, Enum.new([:"percentage"])
                # @!attribute [rw] percentage_discount
                required :percentage_discount, Float
                # @!attribute [rw] applies_to_prices
                optional :applies_to_prices, ArrayOf.new(AppliesToPrices)
                # @!attribute [rw] reason
                optional :reason, String

        end
        # @!attribute [rw] id
        required :id, String
        # @!attribute [rw] created_at
        required :created_at, String
        # @!attribute [rw] credit_note_number
        required :credit_note_number, String
        # @!attribute [rw] credit_note_pdf
        required :credit_note_pdf, String
        # @!attribute [rw] customer
        required :customer, Customer
        # @!attribute [rw] discounts
        required :discounts, ArrayOf.new(Discounts)
        # @!attribute [rw] invoice_id
        required :invoice_id, String
        # @!attribute [rw] line_items
        required :line_items, ArrayOf.new(LineItems)
        # @!attribute [rw] maximum_amount_adjustment
        required :maximum_amount_adjustment, MaximumAmountAdjustment
        # @!attribute [rw] memo
        required :memo, String
        # @!attribute [rw] minimum_amount_refunded
        required :minimum_amount_refunded, String
        # @!attribute [rw] reason
        required :reason, Enum.new([:"Duplicate", :"Fraudulent", :"Order change", :"Product unsatisfactory"])
        # @!attribute [rw] subtotal
        required :subtotal, String
        # @!attribute [rw] total
        required :total, String
        # @!attribute [rw] type
        required :type, Enum.new([:"refund", :"adjustment"])
        # @!attribute [rw] voided_at
        required :voided_at, String

end