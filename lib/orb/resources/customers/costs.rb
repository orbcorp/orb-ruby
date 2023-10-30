require 'orb/model'
require 'orb/models/cost_list_by_external_id_response'
require 'orb/models/cost_list_response'
module Orb
    module Resources
        module Customers
            class CostsResource

                    attr_reader
                    def initialize(client:)
                        @client = client
                    end
                    def list(customer_id, group_by: Orb::NotGiven.instance, timeframe_end: Orb::NotGiven.instance, timeframe_start: Orb::NotGiven.instance, view_mode: Orb::NotGiven.instance)
                        request = {method: :get, path: "/customers/#{customer_id}/costs", query: {group_by: group_by, timeframe_end: timeframe_end, timeframe_start: timeframe_start, view_mode: view_mode, }, }

                        @client.request(model: Orb::Models::CostListResponse, **request)
                    end
                    def list_by_external_id(external_customer_id, group_by: Orb::NotGiven.instance, timeframe_end: Orb::NotGiven.instance, timeframe_start: Orb::NotGiven.instance, view_mode: Orb::NotGiven.instance)
                        request = {method: :get, path: "/customers/external_customer_id/#{external_customer_id}/costs", query: {group_by: group_by, timeframe_end: timeframe_end, timeframe_start: timeframe_start, view_mode: view_mode, }, }

                        @client.request(model: Orb::Models::CostListByExternalIDResponse, **request)
                    end

            end
        end
    end
end