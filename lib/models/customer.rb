require 'model'

module Models
    class Customer < Model

            class BillingAddress < Model

                    # @!attribute [rw] city
                    required :city, String
                    # @!attribute [rw] country
                    required :country, String
                    # @!attribute [rw] line1
                    required :line1, String
                    # @!attribute [rw] line2
                    required :line2, String
                    # @!attribute [rw] postal_code
                    required :postal_code, String
                    # @!attribute [rw] state
                    required :state, String

            end
            class ShippingAddress < Model

                    # @!attribute [rw] city
                    required :city, String
                    # @!attribute [rw] country
                    required :country, String
                    # @!attribute [rw] line1
                    required :line1, String
                    # @!attribute [rw] line2
                    required :line2, String
                    # @!attribute [rw] postal_code
                    required :postal_code, String
                    # @!attribute [rw] state
                    required :state, String

            end
            class TaxID < Model

                    # @!attribute [rw] country
                    required :country, String
                    # @!attribute [rw] type
                    required :type, String
                    # @!attribute [rw] value
                    required :value, String

            end
            class AccountingSyncConfiguration < Model

                    class AccountingProviders < Model

                            # @!attribute [rw] external_provider_id
                            required :external_provider_id, String
                            # @!attribute [rw] provider_type
                            required :provider_type, Enum.new([:"quickbooks", :"netsuite"])

                    end
                    # @!attribute [rw] accounting_providers
                    required :accounting_providers, ArrayOf.new(AccountingProviders)
                    # @!attribute [rw] excluded
                    required :excluded, BooleanModel

            end
            class ReportingConfiguration < Model

                    # @!attribute [rw] exempt
                    required :exempt, BooleanModel

            end
            # @!attribute [rw] id
            required :id, String
            # @!attribute [rw] additional_emails
            required :additional_emails, ArrayOf.new(String)
            # @!attribute [rw] auto_collection
            required :auto_collection, BooleanModel
            # @!attribute [rw] balance
            required :balance, String
            # @!attribute [rw] billing_address
            required :billing_address, BillingAddress
            # @!attribute [rw] created_at
            required :created_at, String
            # @!attribute [rw] currency
            required :currency, String
            # @!attribute [rw] email
            required :email, String
            # @!attribute [rw] email_delivery
            required :email_delivery, BooleanModel
            # @!attribute [rw] external_customer_id
            required :external_customer_id, String
            # @!attribute [rw] metadata
            required :metadata, Hash
            # @!attribute [rw] name
            required :name, String
            # @!attribute [rw] payment_provider
            required :payment_provider, Enum.new([:"quickbooks", :"bill.com", :"stripe_charge", :"stripe_invoice", :"netsuite"])
            # @!attribute [rw] payment_provider_id
            required :payment_provider_id, String
            # @!attribute [rw] portal_url
            required :portal_url, String
            # @!attribute [rw] shipping_address
            required :shipping_address, ShippingAddress
            # @!attribute [rw] tax_id
            required :tax_id, TaxID
            # @!attribute [rw] timezone
            required :timezone, String
            # @!attribute [rw] accounting_sync_configuration
            optional :accounting_sync_configuration, AccountingSyncConfiguration
            # @!attribute [rw] reporting_configuration
            optional :reporting_configuration, ReportingConfiguration

    end
end