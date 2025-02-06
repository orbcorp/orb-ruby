# typed: strong

module Orb
  module Resources
    class Customers
      class Credits
        class Ledger
          sig do
            params(
              customer_id: String,
              created_at_gt: T.nilable(Time),
              created_at_gte: T.nilable(Time),
              created_at_lt: T.nilable(Time),
              created_at_lte: T.nilable(Time),
              currency: T.nilable(String),
              cursor: T.nilable(String),
              entry_status: T.nilable(Symbol),
              entry_type: T.nilable(Symbol),
              limit: Integer,
              minimum_amount: T.nilable(String),
              request_options: Orb::RequestOpts
            ).returns(Orb::Page[Orb::Models::Customers::Credits::LedgerListResponse::Variants])
          end
          def list(
            customer_id,
            created_at_gt:,
            created_at_gte:,
            created_at_lt:,
            created_at_lte:,
            currency:,
            cursor:,
            entry_status:,
            entry_type:,
            limit:,
            minimum_amount:,
            request_options: {}
          ); end

          sig do
            params(
              customer_id: String,
              amount: Float,
              entry_type: Symbol,
              currency: T.nilable(String),
              description: T.nilable(String),
              effective_date: T.nilable(Time),
              expiry_date: T.nilable(Time),
              invoice_settings: T.nilable(Orb::Models::Customers::Credits::LedgerCreateEntryParams::InvoiceSettings),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              per_unit_cost_basis: T.nilable(String),
              target_expiry_date: Date,
              block_id: String,
              void_reason: T.nilable(Symbol),
              request_options: Orb::RequestOpts
            ).returns(Orb::Models::Customers::Credits::LedgerCreateEntryResponse::Variants)
          end
          def create_entry(
            customer_id,
            amount:,
            entry_type:,
            currency:,
            description:,
            effective_date:,
            expiry_date:,
            invoice_settings:,
            metadata:,
            per_unit_cost_basis:,
            target_expiry_date:,
            block_id:,
            void_reason:,
            request_options: {}
          ); end

          sig do
            params(
              external_customer_id: String,
              amount: Float,
              entry_type: Symbol,
              currency: T.nilable(String),
              description: T.nilable(String),
              effective_date: T.nilable(Time),
              expiry_date: T.nilable(Time),
              invoice_settings: T.nilable(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDParams::InvoiceSettings),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              per_unit_cost_basis: T.nilable(String),
              target_expiry_date: Date,
              block_id: String,
              void_reason: T.nilable(Symbol),
              request_options: Orb::RequestOpts
            ).returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::Variants)
          end
          def create_entry_by_external_id(
            external_customer_id,
            amount:,
            entry_type:,
            currency:,
            description:,
            effective_date:,
            expiry_date:,
            invoice_settings:,
            metadata:,
            per_unit_cost_basis:,
            target_expiry_date:,
            block_id:,
            void_reason:,
            request_options: {}
          ); end

          sig do
            params(
              external_customer_id: String,
              created_at_gt: T.nilable(Time),
              created_at_gte: T.nilable(Time),
              created_at_lt: T.nilable(Time),
              created_at_lte: T.nilable(Time),
              currency: T.nilable(String),
              cursor: T.nilable(String),
              entry_status: T.nilable(Symbol),
              entry_type: T.nilable(Symbol),
              limit: Integer,
              minimum_amount: T.nilable(String),
              request_options: Orb::RequestOpts
            ).returns(Orb::Page[Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Variants])
          end
          def list_by_external_id(
            external_customer_id,
            created_at_gt:,
            created_at_gte:,
            created_at_lt:,
            created_at_lte:,
            currency:,
            cursor:,
            entry_status:,
            entry_type:,
            limit:,
            minimum_amount:,
            request_options: {}
          ); end

          sig { params(client: Orb::Client).void }
          def initialize(client:); end
        end
      end
    end
  end
end
