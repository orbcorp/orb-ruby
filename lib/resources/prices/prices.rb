require 'model'

module Resources
    class PricesResource

            def initialize(client:)
                @client = client
            end
            def create(cadence: nil, currency: nil, item_id: nil, model_type: nil, name: nil, unit_config: nil, billable_metric_id: nil, billed_in_advance: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil)
                @client.request(method: :post, path: "/prices", body: {cadence: cadence, currency: currency, item_id: item_id, model_type: model_type, name: name, unit_config: unit_config, billable_metric_id: billable_metric_id, billed_in_advance: billed_in_advance, external_price_id: external_price_id, fixed_price_quantity: fixed_price_quantity, invoice_grouping_key: invoice_grouping_key})
            end
            def create(cadence: nil, currency: nil, item_id: nil, model_type: nil, name: nil, package_config: nil, billable_metric_id: nil, billed_in_advance: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil)
                @client.request(method: :post, path: "/prices", body: {cadence: cadence, currency: currency, item_id: item_id, model_type: model_type, name: name, package_config: package_config, billable_metric_id: billable_metric_id, billed_in_advance: billed_in_advance, external_price_id: external_price_id, fixed_price_quantity: fixed_price_quantity, invoice_grouping_key: invoice_grouping_key})
            end
            def create(cadence: nil, currency: nil, item_id: nil, matrix_config: nil, model_type: nil, name: nil, billable_metric_id: nil, billed_in_advance: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil)
                @client.request(method: :post, path: "/prices", body: {cadence: cadence, currency: currency, item_id: item_id, matrix_config: matrix_config, model_type: model_type, name: name, billable_metric_id: billable_metric_id, billed_in_advance: billed_in_advance, external_price_id: external_price_id, fixed_price_quantity: fixed_price_quantity, invoice_grouping_key: invoice_grouping_key})
            end
            def create(cadence: nil, currency: nil, item_id: nil, model_type: nil, name: nil, tiered_config: nil, billable_metric_id: nil, billed_in_advance: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil)
                @client.request(method: :post, path: "/prices", body: {cadence: cadence, currency: currency, item_id: item_id, model_type: model_type, name: name, tiered_config: tiered_config, billable_metric_id: billable_metric_id, billed_in_advance: billed_in_advance, external_price_id: external_price_id, fixed_price_quantity: fixed_price_quantity, invoice_grouping_key: invoice_grouping_key})
            end
            def create(cadence: nil, currency: nil, item_id: nil, model_type: nil, name: nil, tiered_bps_config: nil, billable_metric_id: nil, billed_in_advance: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil)
                @client.request(method: :post, path: "/prices", body: {cadence: cadence, currency: currency, item_id: item_id, model_type: model_type, name: name, tiered_bps_config: tiered_bps_config, billable_metric_id: billable_metric_id, billed_in_advance: billed_in_advance, external_price_id: external_price_id, fixed_price_quantity: fixed_price_quantity, invoice_grouping_key: invoice_grouping_key})
            end
            def create(bps_config: nil, cadence: nil, currency: nil, item_id: nil, model_type: nil, name: nil, billable_metric_id: nil, billed_in_advance: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil)
                @client.request(method: :post, path: "/prices", body: {bps_config: bps_config, cadence: cadence, currency: currency, item_id: item_id, model_type: model_type, name: name, billable_metric_id: billable_metric_id, billed_in_advance: billed_in_advance, external_price_id: external_price_id, fixed_price_quantity: fixed_price_quantity, invoice_grouping_key: invoice_grouping_key})
            end
            def create(bulk_bps_config: nil, cadence: nil, currency: nil, item_id: nil, model_type: nil, name: nil, billable_metric_id: nil, billed_in_advance: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil)
                @client.request(method: :post, path: "/prices", body: {bulk_bps_config: bulk_bps_config, cadence: cadence, currency: currency, item_id: item_id, model_type: model_type, name: name, billable_metric_id: billable_metric_id, billed_in_advance: billed_in_advance, external_price_id: external_price_id, fixed_price_quantity: fixed_price_quantity, invoice_grouping_key: invoice_grouping_key})
            end
            def create(bulk_config: nil, cadence: nil, currency: nil, item_id: nil, model_type: nil, name: nil, billable_metric_id: nil, billed_in_advance: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil)
                @client.request(method: :post, path: "/prices", body: {bulk_config: bulk_config, cadence: cadence, currency: currency, item_id: item_id, model_type: model_type, name: name, billable_metric_id: billable_metric_id, billed_in_advance: billed_in_advance, external_price_id: external_price_id, fixed_price_quantity: fixed_price_quantity, invoice_grouping_key: invoice_grouping_key})
            end
            def create(cadence: nil, currency: nil, item_id: nil, model_type: nil, name: nil, threshold_total_amount_config: nil, billable_metric_id: nil, billed_in_advance: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil)
                @client.request(method: :post, path: "/prices", body: {cadence: cadence, currency: currency, item_id: item_id, model_type: model_type, name: name, threshold_total_amount_config: threshold_total_amount_config, billable_metric_id: billable_metric_id, billed_in_advance: billed_in_advance, external_price_id: external_price_id, fixed_price_quantity: fixed_price_quantity, invoice_grouping_key: invoice_grouping_key})
            end
            def create(cadence: nil, currency: nil, item_id: nil, model_type: nil, name: nil, tiered_package_config: nil, billable_metric_id: nil, billed_in_advance: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil)
                @client.request(method: :post, path: "/prices", body: {cadence: cadence, currency: currency, item_id: item_id, model_type: model_type, name: name, tiered_package_config: tiered_package_config, billable_metric_id: billable_metric_id, billed_in_advance: billed_in_advance, external_price_id: external_price_id, fixed_price_quantity: fixed_price_quantity, invoice_grouping_key: invoice_grouping_key})
            end
            def create(cadence: nil, currency: nil, item_id: nil, model_type: nil, name: nil, tiered_with_minimum_config: nil, billable_metric_id: nil, billed_in_advance: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil)
                @client.request(method: :post, path: "/prices", body: {cadence: cadence, currency: currency, item_id: item_id, model_type: model_type, name: name, tiered_with_minimum_config: tiered_with_minimum_config, billable_metric_id: billable_metric_id, billed_in_advance: billed_in_advance, external_price_id: external_price_id, fixed_price_quantity: fixed_price_quantity, invoice_grouping_key: invoice_grouping_key})
            end
            def create(cadence: nil, currency: nil, item_id: nil, model_type: nil, name: nil, package_with_allocation_config: nil, billable_metric_id: nil, billed_in_advance: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil)
                @client.request(method: :post, path: "/prices", body: {cadence: cadence, currency: currency, item_id: item_id, model_type: model_type, name: name, package_with_allocation_config: package_with_allocation_config, billable_metric_id: billable_metric_id, billed_in_advance: billed_in_advance, external_price_id: external_price_id, fixed_price_quantity: fixed_price_quantity, invoice_grouping_key: invoice_grouping_key})
            end
            def list(cursor: nil, limit: nil)
                @client.request(method: :get, path: "/prices", body: {}, query: {cursor: cursor, limit: limit})
            end
            def fetch(price_id)
                @client.request(method: :get, path: "/prices/#{price_id}", body: {})
            end

    end
end