require 'model'

module Models
    class Invoice < Model

            class AutoCollection < Model

                    # @!attribute [rw] enabled
                    required :enabled, BooleanModel
                    # @!attribute [rw] next_attempt_at
                    required :next_attempt_at, String
                    # @!attribute [rw] previously_attempted_at
                    required :previously_attempted_at, String

            end
            class BillingAddress < Model

                    # @!attribute [rw] city
                    required :city, String
                    # @!attribute [rw] country
                    required :country, String
                    # @!attribute [rw] line1
                    required :line1, String
                    # @!attribute [rw] line2
                    required :line2, String
                    # @!attribute [rw] postal_code
                    required :postal_code, String
                    # @!attribute [rw] state
                    required :state, String

            end
            class CreditNotes < Model

                    # @!attribute [rw] id
                    required :id, String
                    # @!attribute [rw] credit_note_number
                    required :credit_note_number, String
                    # @!attribute [rw] reason
                    required :reason, String
                    # @!attribute [rw] total
                    required :total, String
                    # @!attribute [rw] type
                    required :type, String
                    # @!attribute [rw] voided_at
                    required :voided_at, String

            end
            class Customer < Model

                    # @!attribute [rw] id
                    required :id, String
                    # @!attribute [rw] external_customer_id
                    required :external_customer_id, String

            end
            class CustomerBalanceTransactions < Model

                    class CreditNote < Model

                            # @!attribute [rw] id
                            required :id, String

                    end
                    class Invoice < Model

                            # @!attribute [rw] id
                            required :id, String

                    end
                    # @!attribute [rw] id
                    required :id, String
                    # @!attribute [rw] action
                    required :action, Enum.new([:"applied_to_invoice", :"prorated_refund", :"manual_adjustment"])
                    # @!attribute [rw] amount
                    required :amount, String
                    # @!attribute [rw] created_at
                    required :created_at, String
                    # @!attribute [rw] credit_note
                    required :credit_note, CreditNote
                    # @!attribute [rw] description
                    required :description, String
                    # @!attribute [rw] ending_balance
                    required :ending_balance, String
                    # @!attribute [rw] invoice
                    required :invoice, Invoice
                    # @!attribute [rw] starting_balance
                    required :starting_balance, String
                    # @!attribute [rw] type
                    required :type, Enum.new([:"increment", :"decrement"])

            end
            class CustomerTaxID < Model

                    # @!attribute [rw] country
                    required :country, String
                    # @!attribute [rw] type
                    required :type, String
                    # @!attribute [rw] value
                    required :value, String

            end
            class LineItems < Model

                    class Maximum < Model

                            # @!attribute [rw] applies_to_price_ids
                            required :applies_to_price_ids, ArrayOf.new(String)
                            # @!attribute [rw] maximum_amount
                            required :maximum_amount, String

                    end
                    class Minimum < Model

                            # @!attribute [rw] applies_to_price_ids
                            required :applies_to_price_ids, ArrayOf.new(String)
                            # @!attribute [rw] minimum_amount
                            required :minimum_amount, String

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
                    # @!attribute [rw] discount
                    required :discount, Unknown
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
                    # @!attribute [rw] name
                    required :name, String
                    # @!attribute [rw] price
                    required :price, Unknown
                    # @!attribute [rw] quantity
                    required :quantity, Float
                    # @!attribute [rw] start_date
                    required :start_date, String
                    # @!attribute [rw] sub_line_items
                    required :sub_line_items, ArrayOf.new(Unknown)
                    # @!attribute [rw] subtotal
                    required :subtotal, String
                    # @!attribute [rw] tax_amounts
                    required :tax_amounts, ArrayOf.new(TaxAmounts)

            end
            class Maximum < Model

                    # @!attribute [rw] applies_to_price_ids
                    required :applies_to_price_ids, ArrayOf.new(String)
                    # @!attribute [rw] maximum_amount
                    required :maximum_amount, String

            end
            class Minimum < Model

                    # @!attribute [rw] applies_to_price_ids
                    required :applies_to_price_ids, ArrayOf.new(String)
                    # @!attribute [rw] minimum_amount
                    required :minimum_amount, String

            end
            class ShippingAddress < Model

                    # @!attribute [rw] city
                    required :city, String
                    # @!attribute [rw] country
                    required :country, String
                    # @!attribute [rw] line1
                    required :line1, String
                    # @!attribute [rw] line2
                    required :line2, String
                    # @!attribute [rw] postal_code
                    required :postal_code, String
                    # @!attribute [rw] state
                    required :state, String

            end
            class Subscription < Model

                    # @!attribute [rw] id
                    required :id, String

            end
            # @!attribute [rw] id
            required :id, String
            # @!attribute [rw] amount_due
            required :amount_due, String
            # @!attribute [rw] auto_collection
            required :auto_collection, AutoCollection
            # @!attribute [rw] billing_address
            required :billing_address, BillingAddress
            # @!attribute [rw] created_at
            required :created_at, String
            # @!attribute [rw] credit_notes
            required :credit_notes, ArrayOf.new(CreditNotes)
            # @!attribute [rw] currency
            required :currency, String
            # @!attribute [rw] customer
            required :customer, Customer
            # @!attribute [rw] customer_balance_transactions
            required :customer_balance_transactions, ArrayOf.new(CustomerBalanceTransactions)
            # @!attribute [rw] customer_tax_id
            required :customer_tax_id, CustomerTaxID
            # @!attribute [rw] discount
            required :discount, Unknown
            # @!attribute [rw] discounts
            required :discounts, ArrayOf.new(Unknown)
            # @!attribute [rw] due_date
            required :due_date, String
            # @!attribute [rw] eligible_to_issue_at
            required :eligible_to_issue_at, String
            # @!attribute [rw] hosted_invoice_url
            required :hosted_invoice_url, String
            # @!attribute [rw] invoice_date
            required :invoice_date, String
            # @!attribute [rw] invoice_number
            required :invoice_number, String
            # @!attribute [rw] invoice_pdf
            required :invoice_pdf, String
            # @!attribute [rw] issue_failed_at
            required :issue_failed_at, String
            # @!attribute [rw] issued_at
            required :issued_at, String
            # @!attribute [rw] line_items
            required :line_items, ArrayOf.new(LineItems)
            # @!attribute [rw] maximum
            required :maximum, Maximum
            # @!attribute [rw] maximum_amount
            required :maximum_amount, String
            # @!attribute [rw] memo
            required :memo, String
            # @!attribute [rw] metadata
            required :metadata, Unknown
            # @!attribute [rw] minimum
            required :minimum, Minimum
            # @!attribute [rw] minimum_amount
            required :minimum_amount, String
            # @!attribute [rw] paid_at
            required :paid_at, String
            # @!attribute [rw] payment_failed_at
            required :payment_failed_at, String
            # @!attribute [rw] payment_started_at
            required :payment_started_at, String
            # @!attribute [rw] scheduled_issue_at
            required :scheduled_issue_at, String
            # @!attribute [rw] shipping_address
            required :shipping_address, ShippingAddress
            # @!attribute [rw] status
            required :status, Enum.new([:"issued", :"paid", :"synced", :"void", :"draft"])
            # @!attribute [rw] subscription
            required :subscription, Subscription
            # @!attribute [rw] subtotal
            required :subtotal, String
            # @!attribute [rw] sync_failed_at
            required :sync_failed_at, String
            # @!attribute [rw] total
            required :total, String
            # @!attribute [rw] voided_at
            required :voided_at, String
            # @!attribute [rw] will_auto_issue
            required :will_auto_issue, BooleanModel

    end
end