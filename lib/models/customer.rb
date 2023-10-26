require 'model'

module Models
end

class Models::Customer < Model

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
                required :country, Enum.new([:"AE", :"AT", :"AU", :"BE", :"BG", :"BR", :"CA", :"CH", :"CL", :"CY", :"CZ", :"DE", :"DK", :"EE", :"EG", :"ES", :"EU", :"FI", :"FR", :"GB", :"GE", :"GR", :"HK", :"HR", :"HU", :"ID", :"IE", :"IL", :"IN", :"IS", :"IT", :"JP", :"KE", :"KR", :"LI", :"LT", :"LU", :"LV", :"MT", :"MX", :"MY", :"NL", :"NO", :"NZ", :"PH", :"PL", :"PT", :"RO", :"RU", :"SA", :"SE", :"SG", :"SI", :"SK", :"TH", :"TR", :"TW", :"UA", :"US", :"ZA"])
                # @!attribute [rw] type
                required :type, Enum.new([:"ae_trn", :"eu_vat", :"au_abn", :"au_arn", :"bg_uic", :"br_cnpj", :"br_cpf", :"ca_bn", :"ca_gst_hst", :"ca_pst_bc", :"ca_pst_mb", :"ca_pst_sk", :"ca_qst", :"ch_vat", :"cl_tin", :"eg_tin", :"es_cif", :"eu_oss_vat", :"gb_vat", :"ge_vat", :"hk_br", :"hu_tin", :"id_npwp", :"il_vat", :"in_gst", :"is_vat", :"jp_cn", :"jp_rn", :"jp_trn", :"ke_pin", :"kr_brn", :"li_uid", :"mx_rfc", :"my_frp", :"my_itn", :"my_sst", :"no_vat", :"nz_gst", :"ph_tin", :"ru_inn", :"ru_kpp", :"sa_vat", :"sg_gst", :"sg_uen", :"si_tin", :"th_vat", :"tr_tin", :"tw_vat", :"ua_vat", :"us_ein", :"za_vat"])
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