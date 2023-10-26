require 'models/ledger_list_by_external_id_response'
require 'models/ledger_list_response'
require 'pagination'
require 'model'

module Resources
    module Customers
        module Credits
            class LedgerListResponsePage < Page
              required :data, ArrayOf.new(Models::LedgerListResponse)

            end

            class LedgerListByExternalIDResponsePage < Page
              required :data, ArrayOf.new(Models::LedgerListByExternalIDResponse)

            end

            class LedgerResource

                    def initialize(client:)
                        @client = client
                    end
                    def list(customer_id, created_at_gt: nil, created_at_gte: nil, created_at_lt: nil, created_at_lte: nil, currency: nil, cursor: nil, entry_status: nil, entry_type: nil, limit: nil, minimum_amount: nil)
                        request = {method: :get, path: "/customers/#{customer_id}/credits/ledger", body: {}, query: {created_at[gt]: created_at_gt, created_at[gte]: created_at_gte, created_at[lt]: created_at_lt, created_at[lte]: created_at_lte, currency: currency, cursor: cursor, entry_status: entry_status, entry_type: entry_type, limit: limit, minimum_amount: minimum_amount, }, }

                        @client.request(page: LedgerListResponsePage, **request)
                    end
                    def create_entry(customer_id, amount: nil, entry_type: nil, description: nil, effective_date: nil, expiry_date: nil, invoice_settings: nil, metadata: nil, per_unit_cost_basis: nil)
                        request = {method: :post, path: "/customers/#{customer_id}/credits/ledger_entry", body: {amount: amount, entry_type: entry_type, description: description, effective_date: effective_date, expiry_date: expiry_date, invoice_settings: invoice_settings, metadata: metadata, per_unit_cost_basis: per_unit_cost_basis, }, query: nil, }

                        @client.request(**request)
                    end
                    def create_entry(customer_id, amount: nil, entry_type: nil, description: nil, metadata: nil)
                        request = {method: :post, path: "/customers/#{customer_id}/credits/ledger_entry", body: {amount: amount, entry_type: entry_type, description: description, metadata: metadata, }, query: nil, }

                        @client.request(**request)
                    end
                    def create_entry(customer_id, entry_type: nil, expiry_date: nil, target_expiry_date: nil, amount: nil, block_id: nil, description: nil, metadata: nil)
                        request = {method: :post, path: "/customers/#{customer_id}/credits/ledger_entry", body: {entry_type: entry_type, expiry_date: expiry_date, target_expiry_date: target_expiry_date, amount: amount, block_id: block_id, description: description, metadata: metadata, }, query: nil, }

                        @client.request(**request)
                    end
                    def create_entry(customer_id, amount: nil, block_id: nil, entry_type: nil, description: nil, metadata: nil, void_reason: nil)
                        request = {method: :post, path: "/customers/#{customer_id}/credits/ledger_entry", body: {amount: amount, block_id: block_id, entry_type: entry_type, description: description, metadata: metadata, void_reason: void_reason, }, query: nil, }

                        @client.request(**request)
                    end
                    def create_entry(customer_id, amount: nil, block_id: nil, entry_type: nil, description: nil, metadata: nil)
                        request = {method: :post, path: "/customers/#{customer_id}/credits/ledger_entry", body: {amount: amount, block_id: block_id, entry_type: entry_type, description: description, metadata: metadata, }, query: nil, }

                        @client.request(**request)
                    end
                    def create_entry_by_external_id(external_customer_id, amount: nil, entry_type: nil, description: nil, effective_date: nil, expiry_date: nil, invoice_settings: nil, metadata: nil, per_unit_cost_basis: nil)
                        request = {method: :post, path: "/customers/external_customer_id/#{external_customer_id}/credits/ledger_entry", body: {amount: amount, entry_type: entry_type, description: description, effective_date: effective_date, expiry_date: expiry_date, invoice_settings: invoice_settings, metadata: metadata, per_unit_cost_basis: per_unit_cost_basis, }, query: nil, }

                        @client.request(**request)
                    end
                    def create_entry_by_external_id(external_customer_id, amount: nil, entry_type: nil, description: nil, metadata: nil)
                        request = {method: :post, path: "/customers/external_customer_id/#{external_customer_id}/credits/ledger_entry", body: {amount: amount, entry_type: entry_type, description: description, metadata: metadata, }, query: nil, }

                        @client.request(**request)
                    end
                    def create_entry_by_external_id(external_customer_id, entry_type: nil, expiry_date: nil, target_expiry_date: nil, amount: nil, block_id: nil, description: nil, metadata: nil)
                        request = {method: :post, path: "/customers/external_customer_id/#{external_customer_id}/credits/ledger_entry", body: {entry_type: entry_type, expiry_date: expiry_date, target_expiry_date: target_expiry_date, amount: amount, block_id: block_id, description: description, metadata: metadata, }, query: nil, }

                        @client.request(**request)
                    end
                    def create_entry_by_external_id(external_customer_id, amount: nil, block_id: nil, entry_type: nil, description: nil, metadata: nil, void_reason: nil)
                        request = {method: :post, path: "/customers/external_customer_id/#{external_customer_id}/credits/ledger_entry", body: {amount: amount, block_id: block_id, entry_type: entry_type, description: description, metadata: metadata, void_reason: void_reason, }, query: nil, }

                        @client.request(**request)
                    end
                    def create_entry_by_external_id(external_customer_id, amount: nil, block_id: nil, entry_type: nil, description: nil, metadata: nil)
                        request = {method: :post, path: "/customers/external_customer_id/#{external_customer_id}/credits/ledger_entry", body: {amount: amount, block_id: block_id, entry_type: entry_type, description: description, metadata: metadata, }, query: nil, }

                        @client.request(**request)
                    end
                    def list_by_external_id(external_customer_id, created_at_gt: nil, created_at_gte: nil, created_at_lt: nil, created_at_lte: nil, currency: nil, cursor: nil, entry_status: nil, entry_type: nil, limit: nil, minimum_amount: nil)
                        request = {method: :get, path: "/customers/external_customer_id/#{external_customer_id}/credits/ledger", body: {}, query: {created_at[gt]: created_at_gt, created_at[gte]: created_at_gte, created_at[lt]: created_at_lt, created_at[lte]: created_at_lte, currency: currency, cursor: cursor, entry_status: entry_status, entry_type: entry_type, limit: limit, minimum_amount: minimum_amount, }, }

                        @client.request(page: LedgerListByExternalIDResponsePage, **request)
                    end

            end
        end
    end
end