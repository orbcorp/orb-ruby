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
          # @overload create(customer_id, amount:, currency:, invoice_settings:, per_unit_cost_basis:, threshold:, active_from: nil, expires_after: nil, expires_after_unit: nil, request_options: {})
          #
          # @param customer_id [String]
          # @param amount [String]
          # @param currency [String]
          # @param invoice_settings [Orb::Models::Customers::Credits::TopUpCreateParams::InvoiceSettings]
          # @param per_unit_cost_basis [String]
          # @param threshold [String]
          # @param active_from [Time, nil]
          # @param expires_after [Integer, nil]
          # @param expires_after_unit [Symbol, Orb::Models::Customers::Credits::TopUpCreateParams::ExpiresAfterUnit, nil]
          # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
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
          # @overload list(customer_id, cursor: nil, limit: nil, request_options: {})
          #
          # @param customer_id [String]
          # @param cursor [String, nil]
          # @param limit [Integer]
          # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Orb::Internal::Page<Orb::Models::Customers::Credits::TopUpListResponse>]
          #
          # @see Orb::Models::Customers::Credits::TopUpListParams
          def list(customer_id, params = {})
            parsed, options = Orb::Models::Customers::Credits::TopUpListParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["customers/%1$s/credits/top_ups", customer_id],
              query: parsed,
              page: Orb::Internal::Page,
              model: Orb::Models::Customers::Credits::TopUpListResponse,
              options: options
            )
          end

          # This deactivates the top-up and voids any invoices associated with pending
          #   credit blocks purchased through the top-up.
          #
          # @overload delete(top_up_id, customer_id:, request_options: {})
          #
          # @param top_up_id [String]
          # @param customer_id [String]
          # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
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
          # @overload create_by_external_id(external_customer_id, amount:, currency:, invoice_settings:, per_unit_cost_basis:, threshold:, active_from: nil, expires_after: nil, expires_after_unit: nil, request_options: {})
          #
          # @param external_customer_id [String]
          # @param amount [String]
          # @param currency [String]
          # @param invoice_settings [Orb::Models::Customers::Credits::TopUpCreateByExternalIDParams::InvoiceSettings]
          # @param per_unit_cost_basis [String]
          # @param threshold [String]
          # @param active_from [Time, nil]
          # @param expires_after [Integer, nil]
          # @param expires_after_unit [Symbol, Orb::Models::Customers::Credits::TopUpCreateByExternalIDParams::ExpiresAfterUnit, nil]
          # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
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
          # @overload delete_by_external_id(top_up_id, external_customer_id:, request_options: {})
          #
          # @param top_up_id [String]
          # @param external_customer_id [String]
          # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
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
          # @overload list_by_external_id(external_customer_id, cursor: nil, limit: nil, request_options: {})
          #
          # @param external_customer_id [String]
          # @param cursor [String, nil]
          # @param limit [Integer]
          # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Orb::Internal::Page<Orb::Models::Customers::Credits::TopUpListByExternalIDResponse>]
          #
          # @see Orb::Models::Customers::Credits::TopUpListByExternalIDParams
          def list_by_external_id(external_customer_id, params = {})
            parsed, options = Orb::Models::Customers::Credits::TopUpListByExternalIDParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["customers/external_customer_id/%1$s/credits/top_ups", external_customer_id],
              query: parsed,
              page: Orb::Internal::Page,
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
