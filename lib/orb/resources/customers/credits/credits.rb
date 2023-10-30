require 'orb/model'
require 'orb/models/credit_list_by_external_id_response'
require 'orb/models/credit_list_response'
require 'orb/pagination'
require 'orb/resources/customers/credits/ledger'
module Orb
    module Resources
        module Customers
            class CreditListResponsePage < Page
              required :data, Orb::ArrayOf.new(Orb::Models::CreditListResponse)

            end

            class CreditListByExternalIDResponsePage < Page
              required :data, Orb::ArrayOf.new(Orb::Models::CreditListByExternalIDResponse)

            end

            class CreditsResource

                    attr_reader :ledger
                    def initialize(client:)
                        @client = client
                        @ledger = Orb::Resources::Customers::Credits::LedgerResource.new(client: client)
                    end
                    def list(customer_id, cursor: Orb::NotGiven.instance, limit: Orb::NotGiven.instance)
                        request = {method: :get, path: "/customers/#{customer_id}/credits", query: {cursor: cursor, limit: limit, }, }

                        @client.request(page: CreditListResponsePage, **request)
                    end
                    def list_by_external_id(external_customer_id, cursor: Orb::NotGiven.instance, limit: Orb::NotGiven.instance)
                        request = {method: :get, path: "/customers/external_customer_id/#{external_customer_id}/credits", query: {cursor: cursor, limit: limit, }, }

                        @client.request(page: CreditListByExternalIDResponsePage, **request)
                    end

            end
        end
    end
end