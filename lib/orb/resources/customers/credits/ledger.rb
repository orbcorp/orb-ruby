require 'orb/model'
require 'orb/models/ledger_list_by_external_id_response'
require 'orb/models/ledger_list_response'
require 'orb/pagination'
module Orb
    module Resources
        module Customers
            module Credits
                class LedgerListResponsePage < Page
                  required :data, Orb::ArrayOf.new(Orb::Models::LedgerListResponse)

                end

                class LedgerListByExternalIDResponsePage < Page
                  required :data, Orb::ArrayOf.new(Orb::Models::LedgerListByExternalIDResponse)

                end

                class LedgerResource

                        attr_reader
                        def initialize(client:)
                            @client = client
                        end
                        def list(customer_id, created_at_gt: Orb::NotGiven.instance, created_at_gte: Orb::NotGiven.instance, created_at_lt: Orb::NotGiven.instance, created_at_lte: Orb::NotGiven.instance, currency: Orb::NotGiven.instance, cursor: Orb::NotGiven.instance, entry_status: Orb::NotGiven.instance, entry_type: Orb::NotGiven.instance, limit: Orb::NotGiven.instance, minimum_amount: Orb::NotGiven.instance)
                            request = {method: :get, path: "/customers/#{customer_id}/credits/ledger", query: {created_at[gt]: created_at_gt, created_at[gte]: created_at_gte, created_at[lt]: created_at_lt, created_at[lte]: created_at_lte, currency: currency, cursor: cursor, entry_status: entry_status, entry_type: entry_type, limit: limit, minimum_amount: minimum_amount, }, }

                            @client.request(page: LedgerListResponsePage, **request)
                        end
                        def create_entry(customer_id, amount: Orb::NotGiven.instance, entry_type: Orb::NotGiven.instance, description: Orb::NotGiven.instance, effective_date: Orb::NotGiven.instance, expiry_date: Orb::NotGiven.instance, invoice_settings: Orb::NotGiven.instance, metadata: Orb::NotGiven.instance, per_unit_cost_basis: Orb::NotGiven.instance)
                            request = {method: :post, path: "/customers/#{customer_id}/credits/ledger_entry", body: {amount: amount, entry_type: entry_type, description: description, effective_date: effective_date, expiry_date: expiry_date, invoice_settings: invoice_settings, metadata: metadata, per_unit_cost_basis: per_unit_cost_basis, }, query: nil, }

                            @client.request(**request)
                        end
                        def create_entry(customer_id, amount: Orb::NotGiven.instance, entry_type: Orb::NotGiven.instance, description: Orb::NotGiven.instance, metadata: Orb::NotGiven.instance)
                            request = {method: :post, path: "/customers/#{customer_id}/credits/ledger_entry", body: {amount: amount, entry_type: entry_type, description: description, metadata: metadata, }, query: nil, }

                            @client.request(**request)
                        end
                        def create_entry(customer_id, entry_type: Orb::NotGiven.instance, expiry_date: Orb::NotGiven.instance, target_expiry_date: Orb::NotGiven.instance, amount: Orb::NotGiven.instance, block_id: Orb::NotGiven.instance, description: Orb::NotGiven.instance, metadata: Orb::NotGiven.instance)
                            request = {method: :post, path: "/customers/#{customer_id}/credits/ledger_entry", body: {entry_type: entry_type, expiry_date: expiry_date, target_expiry_date: target_expiry_date, amount: amount, block_id: block_id, description: description, metadata: metadata, }, query: nil, }

                            @client.request(**request)
                        end
                        def create_entry(customer_id, amount: Orb::NotGiven.instance, block_id: Orb::NotGiven.instance, entry_type: Orb::NotGiven.instance, description: Orb::NotGiven.instance, metadata: Orb::NotGiven.instance, void_reason: Orb::NotGiven.instance)
                            request = {method: :post, path: "/customers/#{customer_id}/credits/ledger_entry", body: {amount: amount, block_id: block_id, entry_type: entry_type, description: description, metadata: metadata, void_reason: void_reason, }, query: nil, }

                            @client.request(**request)
                        end
                        def create_entry(customer_id, amount: Orb::NotGiven.instance, block_id: Orb::NotGiven.instance, entry_type: Orb::NotGiven.instance, description: Orb::NotGiven.instance, metadata: Orb::NotGiven.instance)
                            request = {method: :post, path: "/customers/#{customer_id}/credits/ledger_entry", body: {amount: amount, block_id: block_id, entry_type: entry_type, description: description, metadata: metadata, }, query: nil, }

                            @client.request(**request)
                        end
                        def create_entry_by_external_id(external_customer_id, amount: Orb::NotGiven.instance, entry_type: Orb::NotGiven.instance, description: Orb::NotGiven.instance, effective_date: Orb::NotGiven.instance, expiry_date: Orb::NotGiven.instance, invoice_settings: Orb::NotGiven.instance, metadata: Orb::NotGiven.instance, per_unit_cost_basis: Orb::NotGiven.instance)
                            request = {method: :post, path: "/customers/external_customer_id/#{external_customer_id}/credits/ledger_entry", body: {amount: amount, entry_type: entry_type, description: description, effective_date: effective_date, expiry_date: expiry_date, invoice_settings: invoice_settings, metadata: metadata, per_unit_cost_basis: per_unit_cost_basis, }, query: nil, }

                            @client.request(**request)
                        end
                        def create_entry_by_external_id(external_customer_id, amount: Orb::NotGiven.instance, entry_type: Orb::NotGiven.instance, description: Orb::NotGiven.instance, metadata: Orb::NotGiven.instance)
                            request = {method: :post, path: "/customers/external_customer_id/#{external_customer_id}/credits/ledger_entry", body: {amount: amount, entry_type: entry_type, description: description, metadata: metadata, }, query: nil, }

                            @client.request(**request)
                        end
                        def create_entry_by_external_id(external_customer_id, entry_type: Orb::NotGiven.instance, expiry_date: Orb::NotGiven.instance, target_expiry_date: Orb::NotGiven.instance, amount: Orb::NotGiven.instance, block_id: Orb::NotGiven.instance, description: Orb::NotGiven.instance, metadata: Orb::NotGiven.instance)
                            request = {method: :post, path: "/customers/external_customer_id/#{external_customer_id}/credits/ledger_entry", body: {entry_type: entry_type, expiry_date: expiry_date, target_expiry_date: target_expiry_date, amount: amount, block_id: block_id, description: description, metadata: metadata, }, query: nil, }

                            @client.request(**request)
                        end
                        def create_entry_by_external_id(external_customer_id, amount: Orb::NotGiven.instance, block_id: Orb::NotGiven.instance, entry_type: Orb::NotGiven.instance, description: Orb::NotGiven.instance, metadata: Orb::NotGiven.instance, void_reason: Orb::NotGiven.instance)
                            request = {method: :post, path: "/customers/external_customer_id/#{external_customer_id}/credits/ledger_entry", body: {amount: amount, block_id: block_id, entry_type: entry_type, description: description, metadata: metadata, void_reason: void_reason, }, query: nil, }

                            @client.request(**request)
                        end
                        def create_entry_by_external_id(external_customer_id, amount: Orb::NotGiven.instance, block_id: Orb::NotGiven.instance, entry_type: Orb::NotGiven.instance, description: Orb::NotGiven.instance, metadata: Orb::NotGiven.instance)
                            request = {method: :post, path: "/customers/external_customer_id/#{external_customer_id}/credits/ledger_entry", body: {amount: amount, block_id: block_id, entry_type: entry_type, description: description, metadata: metadata, }, query: nil, }

                            @client.request(**request)
                        end
                        def list_by_external_id(external_customer_id, created_at_gt: Orb::NotGiven.instance, created_at_gte: Orb::NotGiven.instance, created_at_lt: Orb::NotGiven.instance, created_at_lte: Orb::NotGiven.instance, currency: Orb::NotGiven.instance, cursor: Orb::NotGiven.instance, entry_status: Orb::NotGiven.instance, entry_type: Orb::NotGiven.instance, limit: Orb::NotGiven.instance, minimum_amount: Orb::NotGiven.instance)
                            request = {method: :get, path: "/customers/external_customer_id/#{external_customer_id}/credits/ledger", query: {created_at[gt]: created_at_gt, created_at[gte]: created_at_gte, created_at[lt]: created_at_lt, created_at[lte]: created_at_lte, currency: currency, cursor: cursor, entry_status: entry_status, entry_type: entry_type, limit: limit, minimum_amount: minimum_amount, }, }

                            @client.request(page: LedgerListByExternalIDResponsePage, **request)
                        end

                end
            end
        end
    end
end