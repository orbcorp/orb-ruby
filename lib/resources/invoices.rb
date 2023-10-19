require 'models/invoice'
require 'models/invoice_fetch_upcoming_response'
require 'model'

module Resources
    class InvoicesResource

            def initialize(client:)
                @client = client
            end
            def create(currency: nil, invoice_date: nil, line_items: nil, net_terms: nil, customer_id: nil, external_customer_id: nil, memo: nil, will_auto_issue: nil)
                response = @client.request(method: :post, path: "/invoices", body: {currency: currency, invoice_date: invoice_date, line_items: line_items, net_terms: net_terms, customer_id: customer_id, external_customer_id: external_customer_id, memo: memo, will_auto_issue: will_auto_issue})

                Models::Invoice.convert(**response)
            end
            def list(amount: nil, amount_gt: nil, amount_lt: nil, cursor: nil, customer_id: nil, date_type: nil, due_date: nil, due_date_window: nil, due_date_gt: nil, due_date_lt: nil, external_customer_id: nil, invoice_date_gt: nil, invoice_date_gte: nil, invoice_date_lt: nil, invoice_date_lte: nil, is_recurring: nil, limit: nil, status: nil, subscription_id: nil)
                response = @client.request(method: :get, path: "/invoices", body: {}, query: {amount: amount, amount[gt]: amount_gt, amount[lt]: amount_lt, cursor: cursor, customer_id: customer_id, date_type: date_type, due_date: due_date, due_date_window: due_date_window, due_date[gt]: due_date_gt, due_date[lt]: due_date_lt, external_customer_id: external_customer_id, invoice_date[gt]: invoice_date_gt, invoice_date[gte]: invoice_date_gte, invoice_date[lt]: invoice_date_lt, invoice_date[lte]: invoice_date_lte, is_recurring: is_recurring, limit: limit, status: status, subscription_id: subscription_id})

                Models::Invoice.convert(**response)
            end
            def fetch(invoice_id)
                response = @client.request(method: :get, path: "/invoices/#{invoice_id}", body: {})

                Models::Invoice.convert(**response)
            end
            def fetch_upcoming(subscription_id: nil)
                response = @client.request(method: :get, path: "/invoices/upcoming", body: {}, query: {subscription_id: subscription_id})

                Models::InvoiceFetchUpcomingResponse.convert(**response)
            end
            def issue(invoice_id)
                response = @client.request(method: :post, path: "/invoices/#{invoice_id}/issue", body: {})

                Models::Invoice.convert(**response)
            end
            def mark_paid(invoice_id, external_id: nil, notes: nil, payment_received_date: nil)
                response = @client.request(method: :post, path: "/invoices/#{invoice_id}/mark_paid", body: {external_id: external_id, notes: notes, payment_received_date: payment_received_date})

                Models::Invoice.convert(**response)
            end
            def void(invoice_id)
                response = @client.request(method: :post, path: "/invoices/#{invoice_id}/void", body: {})

                Models::Invoice.convert(**response)
            end

    end
end