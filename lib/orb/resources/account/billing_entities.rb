# frozen_string_literal: true

module Orb
  module Resources
    class Account
      # A billing entity is a legal entity an account invoices from, with its own legal
      # name, address and tax registrations.
      class BillingEntities
        # Some parameter documentations has been truncated, see
        # {Orb::Models::Account::BillingEntityCreateParams} for more details.
        #
        # This endpoint creates a billing entity: a legal entity the account invoices
        # from, with its own legal name, address, tax registrations, and invoice settings.
        # `external_billing_entity_id` cannot be changed after creation. This endpoint
        # requires an admin API key.
        #
        # @overload create(address:, legal_name:, name:, external_billing_entity_id: nil, invoice_settings: nil, tax_registrations: nil, request_options: {})
        #
        # @param address [Orb::Models::AddressInput] The address printed on invoices.
        #
        # @param legal_name [String] The legal name printed on invoices.
        #
        # @param name [String] An internal name for the billing entity.
        #
        # @param external_billing_entity_id [String, nil] An optional user-defined ID for this billing entity, unique within the account.
        #
        # @param invoice_settings [Orb::Models::Account::BillingEntityCreateParams::InvoiceSettings, nil] Settings that override the account's for this billing entity.
        #
        # @param tax_registrations [Array<Orb::Models::Account::BillingEntityCreateParams::TaxRegistration>]
        #
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Account::BillingEntity]
        #
        # @see Orb::Models::Account::BillingEntityCreateParams
        def create(params)
          parsed, options = Orb::Account::BillingEntityCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "account/billing_entities",
            body: parsed,
            model: Orb::Account::BillingEntity,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Orb::Models::Account::BillingEntityUpdateParams} for more details.
        #
        # This endpoint updates a billing entity, including the default one. Omitted
        # fields keep their value. A change to the name, legal name, address, or tax
        # registrations writes a new version of the billing entity; invoices already
        # issued keep the version they were issued with. In `invoice_settings`, null
        # clears a field so it inherits the account's setting; the default billing entity
        # accepts only `memo` and `net_terms`. An archived billing entity cannot be
        # updated until it is unarchived. This endpoint requires an admin API key.
        #
        # `payment_gateway_connections` is the full set of connections the billing entity
        # collects payments through; a connection left out is disconnected from the
        # billing entity. If a payment through a connection left out is still in progress,
        # the whole update is rejected and can be retried once the payment finishes.
        #
        # @overload update(billing_entity_id, address: nil, default_payment_gateway_connection_id: nil, invoice_settings: nil, legal_name: nil, name: nil, payment_gateway_connections: nil, tax_registrations: nil, request_options: {})
        #
        # @param billing_entity_id [String]
        #
        # @param address [Orb::Models::AddressInput, nil] Replaces the whole address. Omit it to keep the current one.
        #
        # @param default_payment_gateway_connection_id [String, nil] The ID of the connection Orb charges when the customer is not mapped to any of t
        #
        # @param invoice_settings [Orb::Models::Account::BillingEntityUpdateParams::InvoiceSettings, nil] The invoice settings to change. Omitted fields keep their value; null clears a f
        #
        # @param legal_name [String, nil] The legal name printed on invoices.
        #
        # @param name [String, nil] An internal name for the billing entity.
        #
        # @param payment_gateway_connections [Array<Orb::Models::Account::BillingEntityUpdateParams::PaymentGatewayConnection>, nil] The full set of payment gateway connections the billing entity collects payments
        #
        # @param tax_registrations [Array<Orb::Models::Account::BillingEntityUpdateParams::TaxRegistration>, nil] The full list of registrations. Omit it to keep the current ones.
        #
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Account::BillingEntity]
        #
        # @see Orb::Models::Account::BillingEntityUpdateParams
        def update(billing_entity_id, params = {})
          parsed, options = Orb::Account::BillingEntityUpdateParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["account/billing_entities/%1$s", billing_entity_id],
            body: parsed,
            model: Orb::Account::BillingEntity,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Orb::Models::Account::BillingEntityListParams} for more details.
        #
        # This endpoint returns the account's billing entities, including the default
        # billing entity (`is_default: true`), ordered in descending order by creation
        # time.
        #
        # @overload list(cursor: nil, limit: nil, status: nil, request_options: {})
        #
        # @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
        #
        # @param limit [Integer] The number of items to fetch. Defaults to 20.
        #
        # @param status [Symbol, Orb::Models::Account::BillingEntityListParams::Status, nil] Only return billing entities with this status. Omit to return both.
        #
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Internal::Page<Orb::Models::Account::BillingEntity>]
        #
        # @see Orb::Models::Account::BillingEntityListParams
        def list(params = {})
          parsed, options = Orb::Account::BillingEntityListParams.dump_request(params)
          query = Orb::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "account/billing_entities",
            query: query,
            page: Orb::Internal::Page,
            model: Orb::Account::BillingEntity,
            options: options
          )
        end

        # This endpoint archives a billing entity. An archived billing entity cannot be
        # updated; invoices already issued keep it. The default billing entity cannot be
        # archived. Archiving a billing entity that is already archived returns it
        # unchanged. This endpoint requires an admin API key.
        #
        # @overload archive(billing_entity_id, request_options: {})
        #
        # @param billing_entity_id [String]
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Account::BillingEntity]
        #
        # @see Orb::Models::Account::BillingEntityArchiveParams
        def archive(billing_entity_id, params = {})
          @client.request(
            method: :post,
            path: ["account/billing_entities/%1$s/archive", billing_entity_id],
            model: Orb::Account::BillingEntity,
            options: params[:request_options]
          )
        end

        # This endpoint archives a billing entity. An archived billing entity cannot be
        # updated; invoices already issued keep it. The default billing entity cannot be
        # archived. Archiving a billing entity that is already archived returns it
        # unchanged. This endpoint requires an admin API key.
        #
        # @overload archive_by_external_id(external_billing_entity_id, request_options: {})
        #
        # @param external_billing_entity_id [String]
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Account::BillingEntity]
        #
        # @see Orb::Models::Account::BillingEntityArchiveByExternalIDParams
        def archive_by_external_id(external_billing_entity_id, params = {})
          @client.request(
            method: :post,
            path: [
              "account/billing_entities/external_billing_entity_id/%1$s/archive",
              external_billing_entity_id
            ],
            model: Orb::Account::BillingEntity,
            options: params[:request_options]
          )
        end

        # This endpoint returns a billing entity identified by its ID, or by the
        # `external_billing_entity_id` set when it was created.
        #
        # @overload fetch(billing_entity_id, request_options: {})
        #
        # @param billing_entity_id [String]
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Account::BillingEntity]
        #
        # @see Orb::Models::Account::BillingEntityFetchParams
        def fetch(billing_entity_id, params = {})
          @client.request(
            method: :get,
            path: ["account/billing_entities/%1$s", billing_entity_id],
            model: Orb::Account::BillingEntity,
            options: params[:request_options]
          )
        end

        # This endpoint returns a billing entity identified by its ID, or by the
        # `external_billing_entity_id` set when it was created.
        #
        # @overload fetch_by_external_id(external_billing_entity_id, request_options: {})
        #
        # @param external_billing_entity_id [String]
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Account::BillingEntity]
        #
        # @see Orb::Models::Account::BillingEntityFetchByExternalIDParams
        def fetch_by_external_id(external_billing_entity_id, params = {})
          @client.request(
            method: :get,
            path: ["account/billing_entities/external_billing_entity_id/%1$s", external_billing_entity_id],
            model: Orb::Account::BillingEntity,
            options: params[:request_options]
          )
        end

        # This endpoint restores an archived billing entity to active. Unarchiving an
        # active billing entity returns it unchanged. This endpoint requires an admin API
        # key.
        #
        # @overload unarchive(billing_entity_id, request_options: {})
        #
        # @param billing_entity_id [String]
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Account::BillingEntity]
        #
        # @see Orb::Models::Account::BillingEntityUnarchiveParams
        def unarchive(billing_entity_id, params = {})
          @client.request(
            method: :post,
            path: ["account/billing_entities/%1$s/unarchive", billing_entity_id],
            model: Orb::Account::BillingEntity,
            options: params[:request_options]
          )
        end

        # This endpoint restores an archived billing entity to active. Unarchiving an
        # active billing entity returns it unchanged. This endpoint requires an admin API
        # key.
        #
        # @overload unarchive_by_external_id(external_billing_entity_id, request_options: {})
        #
        # @param external_billing_entity_id [String]
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Account::BillingEntity]
        #
        # @see Orb::Models::Account::BillingEntityUnarchiveByExternalIDParams
        def unarchive_by_external_id(external_billing_entity_id, params = {})
          @client.request(
            method: :post,
            path: [
              "account/billing_entities/external_billing_entity_id/%1$s/unarchive",
              external_billing_entity_id
            ],
            model: Orb::Account::BillingEntity,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Orb::Models::Account::BillingEntityUpdateByExternalIDParams} for more details.
        #
        # This endpoint updates a billing entity, including the default one. Omitted
        # fields keep their value. A change to the name, legal name, address, or tax
        # registrations writes a new version of the billing entity; invoices already
        # issued keep the version they were issued with. In `invoice_settings`, null
        # clears a field so it inherits the account's setting; the default billing entity
        # accepts only `memo` and `net_terms`. An archived billing entity cannot be
        # updated until it is unarchived. This endpoint requires an admin API key.
        #
        # `payment_gateway_connections` is the full set of connections the billing entity
        # collects payments through; a connection left out is disconnected from the
        # billing entity. If a payment through a connection left out is still in progress,
        # the whole update is rejected and can be retried once the payment finishes.
        #
        # @overload update_by_external_id(external_billing_entity_id, address: nil, default_payment_gateway_connection_id: nil, invoice_settings: nil, legal_name: nil, name: nil, payment_gateway_connections: nil, tax_registrations: nil, request_options: {})
        #
        # @param external_billing_entity_id [String]
        #
        # @param address [Orb::Models::AddressInput, nil] Replaces the whole address. Omit it to keep the current one.
        #
        # @param default_payment_gateway_connection_id [String, nil] The ID of the connection Orb charges when the customer is not mapped to any of t
        #
        # @param invoice_settings [Orb::Models::Account::BillingEntityUpdateByExternalIDParams::InvoiceSettings, nil] The invoice settings to change. Omitted fields keep their value; null clears a f
        #
        # @param legal_name [String, nil] The legal name printed on invoices.
        #
        # @param name [String, nil] An internal name for the billing entity.
        #
        # @param payment_gateway_connections [Array<Orb::Models::Account::BillingEntityUpdateByExternalIDParams::PaymentGatewayConnection>, nil] The full set of payment gateway connections the billing entity collects payments
        #
        # @param tax_registrations [Array<Orb::Models::Account::BillingEntityUpdateByExternalIDParams::TaxRegistration>, nil] The full list of registrations. Omit it to keep the current ones.
        #
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Account::BillingEntity]
        #
        # @see Orb::Models::Account::BillingEntityUpdateByExternalIDParams
        def update_by_external_id(external_billing_entity_id, params = {})
          parsed, options = Orb::Account::BillingEntityUpdateByExternalIDParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["account/billing_entities/external_billing_entity_id/%1$s", external_billing_entity_id],
            body: parsed,
            model: Orb::Account::BillingEntity,
            options: options
          )
        end

        # @api private
        #
        # @param client [Orb::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
