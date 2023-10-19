require 'model'

require 'models/credit_list_response'

require 'models/credit_list_by_external_id_response'

module Resources
    module Customers
        class CreditsResource

                def initialize(client:)
                    @client = client
                end
                def list(customer_id, cursor: nil, limit: nil)
                    response = @client.request(method: :get, path: "/customers/#{customer_id}/credits", body: {}, query: {cursor: cursor, limit: limit})

                    Models::CreditListResponse.convert(**response)
                end
                def list_by_external_id(external_customer_id, cursor: nil, limit: nil)
                    response = @client.request(method: :get, path: "/customers/external_customer_id/#{external_customer_id}/credits", body: {}, query: {cursor: cursor, limit: limit})

                    Models::CreditListByExternalIDResponse.convert(**response)
                end

        end
    end
end