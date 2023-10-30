require 'orb/model'
require 'orb/models/price'
require 'orb/pagination'
require 'orb/resources/prices/external_price_id'
module Orb
    module Resources
        class PricePage < Page
          required :data, Orb::ArrayOf.new(Orb::Models::Price)

        end

        class PricesResource

                attr_reader :external_price_id
                def initialize(client:)
                    @client = client
                    @external_price_id = Orb::Resources::Prices::ExternalPriceIDResource.new(client: client)
                end
                def create(cadence: Orb::NotGiven.instance, currency: Orb::NotGiven.instance, item_id: Orb::NotGiven.instance, model_type: Orb::NotGiven.instance, name: Orb::NotGiven.instance, unit_config: Orb::NotGiven.instance, billable_metric_id: Orb::NotGiven.instance, billed_in_advance: Orb::NotGiven.instance, external_price_id: Orb::NotGiven.instance, fixed_price_quantity: Orb::NotGiven.instance, invoice_grouping_key: Orb::NotGiven.instance)
                    request = {method: :post, path: "/prices", body: {cadence: cadence, currency: currency, item_id: item_id, model_type: model_type, name: name, unit_config: unit_config, billable_metric_id: billable_metric_id, billed_in_advance: billed_in_advance, external_price_id: external_price_id, fixed_price_quantity: fixed_price_quantity, invoice_grouping_key: invoice_grouping_key, }, query: nil, }

                    @client.request(**request)
                end
                def create(cadence: Orb::NotGiven.instance, currency: Orb::NotGiven.instance, item_id: Orb::NotGiven.instance, model_type: Orb::NotGiven.instance, name: Orb::NotGiven.instance, package_config: Orb::NotGiven.instance, billable_metric_id: Orb::NotGiven.instance, billed_in_advance: Orb::NotGiven.instance, external_price_id: Orb::NotGiven.instance, fixed_price_quantity: Orb::NotGiven.instance, invoice_grouping_key: Orb::NotGiven.instance)
                    request = {method: :post, path: "/prices", body: {cadence: cadence, currency: currency, item_id: item_id, model_type: model_type, name: name, package_config: package_config, billable_metric_id: billable_metric_id, billed_in_advance: billed_in_advance, external_price_id: external_price_id, fixed_price_quantity: fixed_price_quantity, invoice_grouping_key: invoice_grouping_key, }, query: nil, }

                    @client.request(**request)
                end
                def create(cadence: Orb::NotGiven.instance, currency: Orb::NotGiven.instance, item_id: Orb::NotGiven.instance, matrix_config: Orb::NotGiven.instance, model_type: Orb::NotGiven.instance, name: Orb::NotGiven.instance, billable_metric_id: Orb::NotGiven.instance, billed_in_advance: Orb::NotGiven.instance, external_price_id: Orb::NotGiven.instance, fixed_price_quantity: Orb::NotGiven.instance, invoice_grouping_key: Orb::NotGiven.instance)
                    request = {method: :post, path: "/prices", body: {cadence: cadence, currency: currency, item_id: item_id, matrix_config: matrix_config, model_type: model_type, name: name, billable_metric_id: billable_metric_id, billed_in_advance: billed_in_advance, external_price_id: external_price_id, fixed_price_quantity: fixed_price_quantity, invoice_grouping_key: invoice_grouping_key, }, query: nil, }

                    @client.request(**request)
                end
                def create(cadence: Orb::NotGiven.instance, currency: Orb::NotGiven.instance, item_id: Orb::NotGiven.instance, model_type: Orb::NotGiven.instance, name: Orb::NotGiven.instance, tiered_config: Orb::NotGiven.instance, billable_metric_id: Orb::NotGiven.instance, billed_in_advance: Orb::NotGiven.instance, external_price_id: Orb::NotGiven.instance, fixed_price_quantity: Orb::NotGiven.instance, invoice_grouping_key: Orb::NotGiven.instance)
                    request = {method: :post, path: "/prices", body: {cadence: cadence, currency: currency, item_id: item_id, model_type: model_type, name: name, tiered_config: tiered_config, billable_metric_id: billable_metric_id, billed_in_advance: billed_in_advance, external_price_id: external_price_id, fixed_price_quantity: fixed_price_quantity, invoice_grouping_key: invoice_grouping_key, }, query: nil, }

                    @client.request(**request)
                end
                def create(cadence: Orb::NotGiven.instance, currency: Orb::NotGiven.instance, item_id: Orb::NotGiven.instance, model_type: Orb::NotGiven.instance, name: Orb::NotGiven.instance, tiered_bps_config: Orb::NotGiven.instance, billable_metric_id: Orb::NotGiven.instance, billed_in_advance: Orb::NotGiven.instance, external_price_id: Orb::NotGiven.instance, fixed_price_quantity: Orb::NotGiven.instance, invoice_grouping_key: Orb::NotGiven.instance)
                    request = {method: :post, path: "/prices", body: {cadence: cadence, currency: currency, item_id: item_id, model_type: model_type, name: name, tiered_bps_config: tiered_bps_config, billable_metric_id: billable_metric_id, billed_in_advance: billed_in_advance, external_price_id: external_price_id, fixed_price_quantity: fixed_price_quantity, invoice_grouping_key: invoice_grouping_key, }, query: nil, }

                    @client.request(**request)
                end
                def create(bps_config: Orb::NotGiven.instance, cadence: Orb::NotGiven.instance, currency: Orb::NotGiven.instance, item_id: Orb::NotGiven.instance, model_type: Orb::NotGiven.instance, name: Orb::NotGiven.instance, billable_metric_id: Orb::NotGiven.instance, billed_in_advance: Orb::NotGiven.instance, external_price_id: Orb::NotGiven.instance, fixed_price_quantity: Orb::NotGiven.instance, invoice_grouping_key: Orb::NotGiven.instance)
                    request = {method: :post, path: "/prices", body: {bps_config: bps_config, cadence: cadence, currency: currency, item_id: item_id, model_type: model_type, name: name, billable_metric_id: billable_metric_id, billed_in_advance: billed_in_advance, external_price_id: external_price_id, fixed_price_quantity: fixed_price_quantity, invoice_grouping_key: invoice_grouping_key, }, query: nil, }

                    @client.request(**request)
                end
                def create(bulk_bps_config: Orb::NotGiven.instance, cadence: Orb::NotGiven.instance, currency: Orb::NotGiven.instance, item_id: Orb::NotGiven.instance, model_type: Orb::NotGiven.instance, name: Orb::NotGiven.instance, billable_metric_id: Orb::NotGiven.instance, billed_in_advance: Orb::NotGiven.instance, external_price_id: Orb::NotGiven.instance, fixed_price_quantity: Orb::NotGiven.instance, invoice_grouping_key: Orb::NotGiven.instance)
                    request = {method: :post, path: "/prices", body: {bulk_bps_config: bulk_bps_config, cadence: cadence, currency: currency, item_id: item_id, model_type: model_type, name: name, billable_metric_id: billable_metric_id, billed_in_advance: billed_in_advance, external_price_id: external_price_id, fixed_price_quantity: fixed_price_quantity, invoice_grouping_key: invoice_grouping_key, }, query: nil, }

                    @client.request(**request)
                end
                def create(bulk_config: Orb::NotGiven.instance, cadence: Orb::NotGiven.instance, currency: Orb::NotGiven.instance, item_id: Orb::NotGiven.instance, model_type: Orb::NotGiven.instance, name: Orb::NotGiven.instance, billable_metric_id: Orb::NotGiven.instance, billed_in_advance: Orb::NotGiven.instance, external_price_id: Orb::NotGiven.instance, fixed_price_quantity: Orb::NotGiven.instance, invoice_grouping_key: Orb::NotGiven.instance)
                    request = {method: :post, path: "/prices", body: {bulk_config: bulk_config, cadence: cadence, currency: currency, item_id: item_id, model_type: model_type, name: name, billable_metric_id: billable_metric_id, billed_in_advance: billed_in_advance, external_price_id: external_price_id, fixed_price_quantity: fixed_price_quantity, invoice_grouping_key: invoice_grouping_key, }, query: nil, }

                    @client.request(**request)
                end
                def create(cadence: Orb::NotGiven.instance, currency: Orb::NotGiven.instance, item_id: Orb::NotGiven.instance, model_type: Orb::NotGiven.instance, name: Orb::NotGiven.instance, threshold_total_amount_config: Orb::NotGiven.instance, billable_metric_id: Orb::NotGiven.instance, billed_in_advance: Orb::NotGiven.instance, external_price_id: Orb::NotGiven.instance, fixed_price_quantity: Orb::NotGiven.instance, invoice_grouping_key: Orb::NotGiven.instance)
                    request = {method: :post, path: "/prices", body: {cadence: cadence, currency: currency, item_id: item_id, model_type: model_type, name: name, threshold_total_amount_config: threshold_total_amount_config, billable_metric_id: billable_metric_id, billed_in_advance: billed_in_advance, external_price_id: external_price_id, fixed_price_quantity: fixed_price_quantity, invoice_grouping_key: invoice_grouping_key, }, query: nil, }

                    @client.request(**request)
                end
                def create(cadence: Orb::NotGiven.instance, currency: Orb::NotGiven.instance, item_id: Orb::NotGiven.instance, model_type: Orb::NotGiven.instance, name: Orb::NotGiven.instance, tiered_package_config: Orb::NotGiven.instance, billable_metric_id: Orb::NotGiven.instance, billed_in_advance: Orb::NotGiven.instance, external_price_id: Orb::NotGiven.instance, fixed_price_quantity: Orb::NotGiven.instance, invoice_grouping_key: Orb::NotGiven.instance)
                    request = {method: :post, path: "/prices", body: {cadence: cadence, currency: currency, item_id: item_id, model_type: model_type, name: name, tiered_package_config: tiered_package_config, billable_metric_id: billable_metric_id, billed_in_advance: billed_in_advance, external_price_id: external_price_id, fixed_price_quantity: fixed_price_quantity, invoice_grouping_key: invoice_grouping_key, }, query: nil, }

                    @client.request(**request)
                end
                def create(cadence: Orb::NotGiven.instance, currency: Orb::NotGiven.instance, item_id: Orb::NotGiven.instance, model_type: Orb::NotGiven.instance, name: Orb::NotGiven.instance, tiered_with_minimum_config: Orb::NotGiven.instance, billable_metric_id: Orb::NotGiven.instance, billed_in_advance: Orb::NotGiven.instance, external_price_id: Orb::NotGiven.instance, fixed_price_quantity: Orb::NotGiven.instance, invoice_grouping_key: Orb::NotGiven.instance)
                    request = {method: :post, path: "/prices", body: {cadence: cadence, currency: currency, item_id: item_id, model_type: model_type, name: name, tiered_with_minimum_config: tiered_with_minimum_config, billable_metric_id: billable_metric_id, billed_in_advance: billed_in_advance, external_price_id: external_price_id, fixed_price_quantity: fixed_price_quantity, invoice_grouping_key: invoice_grouping_key, }, query: nil, }

                    @client.request(**request)
                end
                def create(cadence: Orb::NotGiven.instance, currency: Orb::NotGiven.instance, item_id: Orb::NotGiven.instance, model_type: Orb::NotGiven.instance, name: Orb::NotGiven.instance, package_with_allocation_config: Orb::NotGiven.instance, billable_metric_id: Orb::NotGiven.instance, billed_in_advance: Orb::NotGiven.instance, external_price_id: Orb::NotGiven.instance, fixed_price_quantity: Orb::NotGiven.instance, invoice_grouping_key: Orb::NotGiven.instance)
                    request = {method: :post, path: "/prices", body: {cadence: cadence, currency: currency, item_id: item_id, model_type: model_type, name: name, package_with_allocation_config: package_with_allocation_config, billable_metric_id: billable_metric_id, billed_in_advance: billed_in_advance, external_price_id: external_price_id, fixed_price_quantity: fixed_price_quantity, invoice_grouping_key: invoice_grouping_key, }, query: nil, }

                    @client.request(**request)
                end
                def list(cursor: Orb::NotGiven.instance, limit: Orb::NotGiven.instance)
                    request = {method: :get, path: "/prices", query: {cursor: cursor, limit: limit, }, }

                    @client.request(page: PricePage, **request)
                end
                def fetch(price_id)
                    request = {method: :get, path: "/prices/#{price_id}", query: nil, }

                    @client.request(**request)
                end

        end
    end
end