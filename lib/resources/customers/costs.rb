require 'models/cost_list_by_external_id_response'
require 'models/cost_list_response'
require 'model'

module Resources
    module Customers
        class CostsResource

                def initialize(client:)
                    @client = client
                end
                def list(customer_id, group_by: nil, timeframe_end: nil, timeframe_start: nil, view_mode: nil)
                    request = {method: :get, path: "/customers/#{customer_id}/costs", body: {}, query: {group_by: group_by, timeframe_end: timeframe_end, timeframe_start: timeframe_start, view_mode: view_mode, }, }

                    @client.request(model: Models::CostListResponse, **request)
                end
                def list_by_external_id(external_customer_id, group_by: nil, timeframe_end: nil, timeframe_start: nil, view_mode: nil)
                    request = {method: :get, path: "/customers/external_customer_id/#{external_customer_id}/costs", body: {}, query: {group_by: group_by, timeframe_end: timeframe_end, timeframe_start: timeframe_start, view_mode: view_mode, }, }

                    @client.request(model: Models::CostListByExternalIDResponse, **request)
                end

        end
    end
end