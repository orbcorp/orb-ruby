# typed: strong

module Orb
  module Resources
    class Customers
      class Credits
        class TopUps
          # This endpoint allows you to create a new top-up for a specified customer's
          #   balance. While this top-up is active, the customer's balance will added in
          #   increments of the specified amount whenever the balance reaches the specified
          #   threshold.
          #
          #   If a top-up already exists for this customer in the same currency, the existing
          #   top-up will be replaced.
          sig do
            params(
              customer_id: String,
              amount: String,
              currency: String,
              invoice_settings: T.any(Orb::Models::Customers::Credits::TopUpCreateParams::InvoiceSettings, Orb::Internal::AnyHash),
              per_unit_cost_basis: String,
              threshold: String,
              active_from: T.nilable(Time),
              expires_after: T.nilable(Integer),
              expires_after_unit: T.nilable(Orb::Models::Customers::Credits::TopUpCreateParams::ExpiresAfterUnit::OrSymbol),
              request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Internal::AnyHash))
            )
              .returns(Orb::Models::Customers::Credits::TopUpCreateResponse)
          end
          def create(
            customer_id,
            # The amount to increment when the threshold is reached.
            amount:,
            # The currency or custom pricing unit to use for this top-up. If this is a
            #   real-world currency, it must match the customer's invoicing currency.
            currency:,
            # Settings for invoices generated by triggered top-ups.
            invoice_settings:,
            # How much, in the customer's currency, to charge for each unit.
            per_unit_cost_basis:,
            # The threshold at which to trigger the top-up. If the balance is at or below this
            #   threshold, the top-up will be triggered.
            threshold:,
            # The date from which the top-up is active. If unspecified, the top-up is active
            #   immediately.
            active_from: nil,
            # The number of days or months after which the top-up expires. If unspecified, it
            #   does not expire.
            expires_after: nil,
            # The unit of expires_after.
            expires_after_unit: nil,
            request_options: {}
          ); end
          # List top-ups
          sig do
            params(
              customer_id: String,
              cursor: T.nilable(String),
              limit: Integer,
              request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Internal::AnyHash))
            )
              .returns(Orb::Internal::Page[Orb::Models::Customers::Credits::TopUpListResponse])
          end
          def list(
            customer_id,
            # Cursor for pagination. This can be populated by the `next_cursor` value returned
            #   from the initial request.
            cursor: nil,
            # The number of items to fetch. Defaults to 20.
            limit: nil,
            request_options: {}
          ); end
          # This deactivates the top-up and voids any invoices associated with pending
          #   credit blocks purchased through the top-up.
          sig do
            params(
              top_up_id: String,
              customer_id: String,
              request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Internal::AnyHash))
            )
              .void
          end
          def delete(top_up_id, customer_id:, request_options: {}); end

          # This endpoint allows you to create a new top-up for a specified customer's
          #   balance. While this top-up is active, the customer's balance will added in
          #   increments of the specified amount whenever the balance reaches the specified
          #   threshold.
          #
          #   If a top-up already exists for this customer in the same currency, the existing
          #   top-up will be replaced.
          sig do
            params(
              external_customer_id: String,
              amount: String,
              currency: String,
              invoice_settings: T.any(
                Orb::Models::Customers::Credits::TopUpCreateByExternalIDParams::InvoiceSettings,
                Orb::Internal::AnyHash
              ),
              per_unit_cost_basis: String,
              threshold: String,
              active_from: T.nilable(Time),
              expires_after: T.nilable(Integer),
              expires_after_unit: T.nilable(Orb::Models::Customers::Credits::TopUpCreateByExternalIDParams::ExpiresAfterUnit::OrSymbol),
              request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Internal::AnyHash))
            )
              .returns(Orb::Models::Customers::Credits::TopUpCreateByExternalIDResponse)
          end
          def create_by_external_id(
            external_customer_id,
            # The amount to increment when the threshold is reached.
            amount:,
            # The currency or custom pricing unit to use for this top-up. If this is a
            #   real-world currency, it must match the customer's invoicing currency.
            currency:,
            # Settings for invoices generated by triggered top-ups.
            invoice_settings:,
            # How much, in the customer's currency, to charge for each unit.
            per_unit_cost_basis:,
            # The threshold at which to trigger the top-up. If the balance is at or below this
            #   threshold, the top-up will be triggered.
            threshold:,
            # The date from which the top-up is active. If unspecified, the top-up is active
            #   immediately.
            active_from: nil,
            # The number of days or months after which the top-up expires. If unspecified, it
            #   does not expire.
            expires_after: nil,
            # The unit of expires_after.
            expires_after_unit: nil,
            request_options: {}
          ); end
          # This deactivates the top-up and voids any invoices associated with pending
          #   credit blocks purchased through the top-up.
          sig do
            params(
              top_up_id: String,
              external_customer_id: String,
              request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Internal::AnyHash))
            )
              .void
          end
          def delete_by_external_id(top_up_id, external_customer_id:, request_options: {}); end

          # List top-ups by external ID
          sig do
            params(
              external_customer_id: String,
              cursor: T.nilable(String),
              limit: Integer,
              request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Internal::AnyHash))
            )
              .returns(Orb::Internal::Page[Orb::Models::Customers::Credits::TopUpListByExternalIDResponse])
          end
          def list_by_external_id(
            external_customer_id,
            # Cursor for pagination. This can be populated by the `next_cursor` value returned
            #   from the initial request.
            cursor: nil,
            # The number of items to fetch. Defaults to 20.
            limit: nil,
            request_options: {}
          ); end
          # @api private
          sig { params(client: Orb::Client).returns(T.attached_class) }
          def self.new(client:); end
        end
      end
    end
  end
end
