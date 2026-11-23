# typed: strong

module Orb
  module Resources
    class Account
      # A billing entity is a legal entity an account invoices from, with its own legal
      # name, address and tax registrations.
      class BillingEntities
        # This endpoint creates a billing entity: a legal entity the account invoices
        # from, with its own legal name, address, tax registrations, and invoice settings.
        # `external_billing_entity_id` cannot be changed after creation. This endpoint
        # requires an admin API key.
        sig do
          params(
            address: Orb::AddressInput::OrHash,
            legal_name: String,
            name: String,
            external_billing_entity_id: T.nilable(String),
            invoice_settings:
              T.nilable(
                Orb::Account::BillingEntityCreateParams::InvoiceSettings::OrHash
              ),
            tax_registrations:
              T::Array[
                Orb::Account::BillingEntityCreateParams::TaxRegistration::OrHash
              ],
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::Account::BillingEntity)
        end
        def create(
          # The address printed on invoices.
          address:,
          # The legal name printed on invoices.
          legal_name:,
          # An internal name for the billing entity.
          name:,
          # An optional user-defined ID for this billing entity, unique within the account.
          # This cannot be changed after creation.
          external_billing_entity_id: nil,
          # Settings that override the account's for this billing entity.
          invoice_settings: nil,
          tax_registrations: nil,
          request_options: {}
        )
        end

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
        sig do
          params(
            billing_entity_id: String,
            address: T.nilable(Orb::AddressInput::OrHash),
            default_payment_gateway_connection_id: T.nilable(String),
            invoice_settings:
              T.nilable(
                Orb::Account::BillingEntityUpdateParams::InvoiceSettings::OrHash
              ),
            legal_name: T.nilable(String),
            name: T.nilable(String),
            payment_gateway_connections:
              T.nilable(
                T::Array[
                  Orb::Account::BillingEntityUpdateParams::PaymentGatewayConnection::OrHash
                ]
              ),
            tax_registrations:
              T.nilable(
                T::Array[
                  Orb::Account::BillingEntityUpdateParams::TaxRegistration::OrHash
                ]
              ),
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::Account::BillingEntity)
        end
        def update(
          billing_entity_id,
          # Replaces the whole address. Omit it to keep the current one.
          address: nil,
          # The ID of the connection Orb charges when the customer is not mapped to any of
          # the billing entity's connections. Required when `payment_gateway_connections`
          # has more than one entry.
          default_payment_gateway_connection_id: nil,
          # The invoice settings to change. Omitted fields keep their value; null clears a
          # field so it inherits the account's setting.
          invoice_settings: nil,
          # The legal name printed on invoices.
          legal_name: nil,
          # An internal name for the billing entity.
          name: nil,
          # The full set of payment gateway connections the billing entity collects payments
          # through. Omit it to keep the current ones. Naming another billing entity's
          # connection gives this billing entity a connection of its own through the same
          # Stripe account or Adyen merchant account.
          payment_gateway_connections: nil,
          # The full list of registrations. Omit it to keep the current ones.
          tax_registrations: nil,
          request_options: {}
        )
        end

        # This endpoint returns the account's billing entities, including the default
        # billing entity (`is_default: true`), ordered in descending order by creation
        # time.
        sig do
          params(
            cursor: T.nilable(String),
            limit: Integer,
            status:
              T.nilable(
                Orb::Account::BillingEntityListParams::Status::OrSymbol
              ),
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::Internal::Page[Orb::Account::BillingEntity])
        end
        def list(
          # Cursor for pagination. This can be populated by the `next_cursor` value returned
          # from the initial request.
          cursor: nil,
          # The number of items to fetch. Defaults to 20.
          limit: nil,
          # Only return billing entities with this status. Omit to return both.
          status: nil,
          request_options: {}
        )
        end

        # This endpoint archives a billing entity. An archived billing entity cannot be
        # updated; invoices already issued keep it. The default billing entity cannot be
        # archived. Archiving a billing entity that is already archived returns it
        # unchanged. This endpoint requires an admin API key.
        sig do
          params(
            billing_entity_id: String,
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::Account::BillingEntity)
        end
        def archive(billing_entity_id, request_options: {})
        end

        # This endpoint archives a billing entity. An archived billing entity cannot be
        # updated; invoices already issued keep it. The default billing entity cannot be
        # archived. Archiving a billing entity that is already archived returns it
        # unchanged. This endpoint requires an admin API key.
        sig do
          params(
            external_billing_entity_id: String,
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::Account::BillingEntity)
        end
        def archive_by_external_id(
          external_billing_entity_id,
          request_options: {}
        )
        end

        # This endpoint returns a billing entity identified by its ID, or by the
        # `external_billing_entity_id` set when it was created.
        sig do
          params(
            billing_entity_id: String,
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::Account::BillingEntity)
        end
        def fetch(billing_entity_id, request_options: {})
        end

        # This endpoint returns a billing entity identified by its ID, or by the
        # `external_billing_entity_id` set when it was created.
        sig do
          params(
            external_billing_entity_id: String,
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::Account::BillingEntity)
        end
        def fetch_by_external_id(
          external_billing_entity_id,
          request_options: {}
        )
        end

        # This endpoint restores an archived billing entity to active. Unarchiving an
        # active billing entity returns it unchanged. This endpoint requires an admin API
        # key.
        sig do
          params(
            billing_entity_id: String,
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::Account::BillingEntity)
        end
        def unarchive(billing_entity_id, request_options: {})
        end

        # This endpoint restores an archived billing entity to active. Unarchiving an
        # active billing entity returns it unchanged. This endpoint requires an admin API
        # key.
        sig do
          params(
            external_billing_entity_id: String,
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::Account::BillingEntity)
        end
        def unarchive_by_external_id(
          external_billing_entity_id,
          request_options: {}
        )
        end

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
        sig do
          params(
            external_billing_entity_id: String,
            address: T.nilable(Orb::AddressInput::OrHash),
            default_payment_gateway_connection_id: T.nilable(String),
            invoice_settings:
              T.nilable(
                Orb::Account::BillingEntityUpdateByExternalIDParams::InvoiceSettings::OrHash
              ),
            legal_name: T.nilable(String),
            name: T.nilable(String),
            payment_gateway_connections:
              T.nilable(
                T::Array[
                  Orb::Account::BillingEntityUpdateByExternalIDParams::PaymentGatewayConnection::OrHash
                ]
              ),
            tax_registrations:
              T.nilable(
                T::Array[
                  Orb::Account::BillingEntityUpdateByExternalIDParams::TaxRegistration::OrHash
                ]
              ),
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::Account::BillingEntity)
        end
        def update_by_external_id(
          external_billing_entity_id,
          # Replaces the whole address. Omit it to keep the current one.
          address: nil,
          # The ID of the connection Orb charges when the customer is not mapped to any of
          # the billing entity's connections. Required when `payment_gateway_connections`
          # has more than one entry.
          default_payment_gateway_connection_id: nil,
          # The invoice settings to change. Omitted fields keep their value; null clears a
          # field so it inherits the account's setting.
          invoice_settings: nil,
          # The legal name printed on invoices.
          legal_name: nil,
          # An internal name for the billing entity.
          name: nil,
          # The full set of payment gateway connections the billing entity collects payments
          # through. Omit it to keep the current ones. Naming another billing entity's
          # connection gives this billing entity a connection of its own through the same
          # Stripe account or Adyen merchant account.
          payment_gateway_connections: nil,
          # The full list of registrations. Omit it to keep the current ones.
          tax_registrations: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Orb::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
