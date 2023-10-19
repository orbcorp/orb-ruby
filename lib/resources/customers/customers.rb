require 'models/customer'
require 'model'

module Resources
    class CustomersResource

            def initialize(client:)
                @client = client
            end
            def create(email: nil, name: nil, accounting_sync_configuration: nil, additional_emails: nil, auto_collection: nil, billing_address: nil, currency: nil, email_delivery: nil, external_customer_id: nil, metadata: nil, payment_provider: nil, payment_provider_id: nil, reporting_configuration: nil, shipping_address: nil, tax_id: nil, timezone: nil)
                response = @client.request(method: :post, path: "/customers", body: {email: email, name: name, accounting_sync_configuration: accounting_sync_configuration, additional_emails: additional_emails, auto_collection: auto_collection, billing_address: billing_address, currency: currency, email_delivery: email_delivery, external_customer_id: external_customer_id, metadata: metadata, payment_provider: payment_provider, payment_provider_id: payment_provider_id, reporting_configuration: reporting_configuration, shipping_address: shipping_address, tax_id: tax_id, timezone: timezone})

                Models::Customer.convert(**response)
            end
            def update(customer_id, accounting_sync_configuration: nil, additional_emails: nil, auto_collection: nil, billing_address: nil, currency: nil, email: nil, email_delivery: nil, external_customer_id: nil, metadata: nil, name: nil, payment_provider: nil, payment_provider_id: nil, reporting_configuration: nil, shipping_address: nil, tax_id: nil)
                response = @client.request(method: :put, path: "/customers/#{customer_id}", body: {accounting_sync_configuration: accounting_sync_configuration, additional_emails: additional_emails, auto_collection: auto_collection, billing_address: billing_address, currency: currency, email: email, email_delivery: email_delivery, external_customer_id: external_customer_id, metadata: metadata, name: name, payment_provider: payment_provider, payment_provider_id: payment_provider_id, reporting_configuration: reporting_configuration, shipping_address: shipping_address, tax_id: tax_id})

                Models::Customer.convert(**response)
            end
            def list(created_at_gt: nil, created_at_gte: nil, created_at_lt: nil, created_at_lte: nil, cursor: nil, limit: nil)
                response = @client.request(method: :get, path: "/customers", body: {}, query: {created_at[gt]: created_at_gt, created_at[gte]: created_at_gte, created_at[lt]: created_at_lt, created_at[lte]: created_at_lte, cursor: cursor, limit: limit})

                Models::Customer.convert(**response)
            end
            def delete(customer_id)
                @client.request(method: :delete, path: "/customers/#{customer_id}", body: {})
            end
            def fetch(customer_id)
                response = @client.request(method: :get, path: "/customers/#{customer_id}", body: {})

                Models::Customer.convert(**response)
            end
            def fetch_by_external_id(external_customer_id)
                response = @client.request(method: :get, path: "/customers/external_customer_id/#{external_customer_id}", body: {})

                Models::Customer.convert(**response)
            end
            def update_by_external_id(id, accounting_sync_configuration: nil, additional_emails: nil, auto_collection: nil, billing_address: nil, currency: nil, email: nil, email_delivery: nil, external_customer_id: nil, metadata: nil, name: nil, payment_provider: nil, payment_provider_id: nil, reporting_configuration: nil, shipping_address: nil, tax_id: nil)
                response = @client.request(method: :put, path: "/customers/external_customer_id/#{id}", body: {accounting_sync_configuration: accounting_sync_configuration, additional_emails: additional_emails, auto_collection: auto_collection, billing_address: billing_address, currency: currency, email: email, email_delivery: email_delivery, external_customer_id: external_customer_id, metadata: metadata, name: name, payment_provider: payment_provider, payment_provider_id: payment_provider_id, reporting_configuration: reporting_configuration, shipping_address: shipping_address, tax_id: tax_id})

                Models::Customer.convert(**response)
            end

    end
end