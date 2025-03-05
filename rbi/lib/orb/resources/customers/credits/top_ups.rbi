# typed: strong

module Orb
  module Resources
    class Customers
      class Credits
        class TopUps
          sig do
            params(
              customer_id: String,
              amount: String,
              currency: String,
              invoice_settings: Orb::Models::Customers::Credits::TopUpCreateParams::InvoiceSettings,
              per_unit_cost_basis: String,
              threshold: String,
              active_from: T.nilable(Time),
              expires_after: T.nilable(Integer),
              expires_after_unit: T.nilable(Symbol),
              request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Orb::Models::Customers::Credits::TopUpCreateResponse)
          end
          def create(
            customer_id,
            amount:,
            currency:,
            invoice_settings:,
            per_unit_cost_basis:,
            threshold:,
            active_from: nil,
            expires_after: nil,
            expires_after_unit: nil,
            request_options: {}
          )
          end

          sig do
            params(
              customer_id: String,
              cursor: T.nilable(String),
              limit: Integer,
              request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Orb::Page[Orb::Models::Customers::Credits::TopUpListResponse])
          end
          def list(customer_id, cursor: nil, limit: nil, request_options: {})
          end

          sig do
            params(
              top_up_id: String,
              customer_id: String,
              request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .void
          end
          def delete(top_up_id, customer_id:, request_options: {})
          end

          sig do
            params(
              external_customer_id: String,
              amount: String,
              currency: String,
              invoice_settings: Orb::Models::Customers::Credits::TopUpCreateByExternalIDParams::InvoiceSettings,
              per_unit_cost_basis: String,
              threshold: String,
              active_from: T.nilable(Time),
              expires_after: T.nilable(Integer),
              expires_after_unit: T.nilable(Symbol),
              request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Orb::Models::Customers::Credits::TopUpCreateByExternalIDResponse)
          end
          def create_by_external_id(
            external_customer_id,
            amount:,
            currency:,
            invoice_settings:,
            per_unit_cost_basis:,
            threshold:,
            active_from: nil,
            expires_after: nil,
            expires_after_unit: nil,
            request_options: {}
          )
          end

          sig do
            params(
              top_up_id: String,
              external_customer_id: String,
              request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .void
          end
          def delete_by_external_id(top_up_id, external_customer_id:, request_options: {})
          end

          sig do
            params(
              external_customer_id: String,
              cursor: T.nilable(String),
              limit: Integer,
              request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Orb::Page[Orb::Models::Customers::Credits::TopUpListByExternalIDResponse])
          end
          def list_by_external_id(external_customer_id, cursor: nil, limit: nil, request_options: {})
          end

          sig { params(client: Orb::Client).void }
          def initialize(client:)
          end
        end
      end
    end
  end
end
