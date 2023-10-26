require 'models/credit_list_by_external_id_response'
require 'models/credit_list_response'
require 'pagination'
require 'model'

module Resources
    module Customers
        class CreditListResponsePage < Page
          required :data, ArrayOf.new(Models::CreditListResponse)

        end

        class CreditListByExternalIDResponsePage < Page
          required :data, ArrayOf.new(Models::CreditListByExternalIDResponse)

        end

        class CreditsResource

                def initialize(client:)
                    @client = client
                end
                def list(customer_id, cursor: nil, limit: nil)
                    request = {method: :get, path: "/customers/#{customer_id}/credits", body: {}, query: {cursor: cursor, limit: limit, }, }

                    @client.request(page: CreditListResponsePage, **request)
                end
                def list_by_external_id(external_customer_id, cursor: nil, limit: nil)
                    request = {method: :get, path: "/customers/external_customer_id/#{external_customer_id}/credits", body: {}, query: {cursor: cursor, limit: limit, }, }

                    @client.request(page: CreditListByExternalIDResponsePage, **request)
                end

        end
    end
end