# frozen_string_literal: true

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
          #
          # @param customer_id [String]
          #
          # @param params [Orb::Models::Customers::Credits::TopUpCreateParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :amount The amount to increment when the threshold is reached.
          #
          #   @option params [String] :currency The currency or custom pricing unit to use for this top-up. If this is a
          #     real-world currency, it must match the customer's invoicing currency.
          #
          #   @option params [Orb::Models::Customers::Credits::TopUpCreateParams::InvoiceSettings] :invoice_settings Settings for invoices generated by triggered top-ups.
          #
          #   @option params [String] :per_unit_cost_basis How much, in the customer's currency, to charge for each unit.
          #
          #   @option params [String] :threshold The threshold at which to trigger the top-up. If the balance is at or below this
          #     threshold, the top-up will be triggered.
          #
          #   @option params [Time, nil] :active_from The date from which the top-up is active. If unspecified, the top-up is active
          #     immediately.
          #
          #   @option params [Integer, nil] :expires_after The number of days or months after which the top-up expires. If unspecified, it
          #     does not expire.
          #
          #   @option params [Symbol, Orb::Models::Customers::Credits::TopUpCreateParams::ExpiresAfterUnit, nil] :expires_after_unit The unit of expires_after.
          #
          #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Orb::Models::Customers::Credits::TopUpCreateResponse]
          #
          # @see Orb::Models::Customers::Credits::TopUpCreateParams
          def create(customer_id, params)
            parsed, options = Orb::Models::Customers::Credits::TopUpCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["customers/%1$s/credits/top_ups", customer_id],
              body: parsed,
              model: Orb::Models::Customers::Credits::TopUpCreateResponse,
              options: options
            )
          end

          # List top-ups
          #
          # @param customer_id [String]
          #
          # @param params [Orb::Models::Customers::Credits::TopUpListParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String, nil] :cursor Cursor for pagination. This can be populated by the `next_cursor` value returned
          #     from the initial request.
          #
          #   @option params [Integer] :limit The number of items to fetch. Defaults to 20.
          #
          #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Orb::Page<Orb::Models::Customers::Credits::TopUpListResponse>]
          #
          # @see Orb::Models::Customers::Credits::TopUpListParams
          def list(customer_id, params = {})
            parsed, options = Orb::Models::Customers::Credits::TopUpListParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["customers/%1$s/credits/top_ups", customer_id],
              query: parsed,
              page: Orb::Page,
              model: Orb::Models::Customers::Credits::TopUpListResponse,
              options: options
            )
          end

          # This deactivates the top-up and voids any invoices associated with pending
          #   credit blocks purchased through the top-up.
          #
          # @param top_up_id [String]
          #
          # @param params [Orb::Models::Customers::Credits::TopUpDeleteParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :customer_id
          #
          #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [nil]
          #
          # @see Orb::Models::Customers::Credits::TopUpDeleteParams
          def delete(top_up_id, params)
            parsed, options = Orb::Models::Customers::Credits::TopUpDeleteParams.dump_request(params)
            customer_id =
              parsed.delete(:customer_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["customers/%1$s/credits/top_ups/%2$s", customer_id, top_up_id],
              model: NilClass,
              options: options
            )
          end

          # This endpoint allows you to create a new top-up for a specified customer's
          #   balance. While this top-up is active, the customer's balance will added in
          #   increments of the specified amount whenever the balance reaches the specified
          #   threshold.
          #
          #   If a top-up already exists for this customer in the same currency, the existing
          #   top-up will be replaced.
          #
          # @param external_customer_id [String]
          #
          # @param params [Orb::Models::Customers::Credits::TopUpCreateByExternalIDParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :amount The amount to increment when the threshold is reached.
          #
          #   @option params [String] :currency The currency or custom pricing unit to use for this top-up. If this is a
          #     real-world currency, it must match the customer's invoicing currency.
          #
          #   @option params [Orb::Models::Customers::Credits::TopUpCreateByExternalIDParams::InvoiceSettings] :invoice_settings Settings for invoices generated by triggered top-ups.
          #
          #   @option params [String] :per_unit_cost_basis How much, in the customer's currency, to charge for each unit.
          #
          #   @option params [String] :threshold The threshold at which to trigger the top-up. If the balance is at or below this
          #     threshold, the top-up will be triggered.
          #
          #   @option params [Time, nil] :active_from The date from which the top-up is active. If unspecified, the top-up is active
          #     immediately.
          #
          #   @option params [Integer, nil] :expires_after The number of days or months after which the top-up expires. If unspecified, it
          #     does not expire.
          #
          #   @option params [Symbol, Orb::Models::Customers::Credits::TopUpCreateByExternalIDParams::ExpiresAfterUnit, nil] :expires_after_unit The unit of expires_after.
          #
          #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Orb::Models::Customers::Credits::TopUpCreateByExternalIDResponse]
          #
          # @see Orb::Models::Customers::Credits::TopUpCreateByExternalIDParams
          def create_by_external_id(external_customer_id, params)
            parsed, options = Orb::Models::Customers::Credits::TopUpCreateByExternalIDParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["customers/external_customer_id/%1$s/credits/top_ups", external_customer_id],
              body: parsed,
              model: Orb::Models::Customers::Credits::TopUpCreateByExternalIDResponse,
              options: options
            )
          end

          # This deactivates the top-up and voids any invoices associated with pending
          #   credit blocks purchased through the top-up.
          #
          # @param top_up_id [String]
          #
          # @param params [Orb::Models::Customers::Credits::TopUpDeleteByExternalIDParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :external_customer_id
          #
          #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [nil]
          #
          # @see Orb::Models::Customers::Credits::TopUpDeleteByExternalIDParams
          def delete_by_external_id(top_up_id, params)
            parsed, options = Orb::Models::Customers::Credits::TopUpDeleteByExternalIDParams.dump_request(params)
            external_customer_id =
              parsed.delete(:external_customer_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: [
                "customers/external_customer_id/%1$s/credits/top_ups/%2$s",
                external_customer_id,
                top_up_id
              ],
              model: NilClass,
              options: options
            )
          end

          # List top-ups by external ID
          #
          # @param external_customer_id [String]
          #
          # @param params [Orb::Models::Customers::Credits::TopUpListByExternalIDParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String, nil] :cursor Cursor for pagination. This can be populated by the `next_cursor` value returned
          #     from the initial request.
          #
          #   @option params [Integer] :limit The number of items to fetch. Defaults to 20.
          #
          #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Orb::Page<Orb::Models::Customers::Credits::TopUpListByExternalIDResponse>]
          #
          # @see Orb::Models::Customers::Credits::TopUpListByExternalIDParams
          def list_by_external_id(external_customer_id, params = {})
            parsed, options = Orb::Models::Customers::Credits::TopUpListByExternalIDParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["customers/external_customer_id/%1$s/credits/top_ups", external_customer_id],
              query: parsed,
              page: Orb::Page,
              model: Orb::Models::Customers::Credits::TopUpListByExternalIDResponse,
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
end
