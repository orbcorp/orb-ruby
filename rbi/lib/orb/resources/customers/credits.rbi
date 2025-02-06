# typed: strong

module Orb
  module Resources
    class Customers
      class Credits
        sig { returns(Orb::Resources::Customers::Credits::Ledger) }
        attr_reader :ledger

        sig { returns(Orb::Resources::Customers::Credits::TopUps) }
        attr_reader :top_ups

        sig do
          params(
            customer_id: String,
            currency: T.nilable(String),
            cursor: T.nilable(String),
            include_all_blocks: T::Boolean,
            limit: Integer,
            request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
          ).returns(Orb::Page[Orb::Models::Customers::CreditListResponse])
        end
        def list(
          customer_id,
          currency: nil,
          cursor: nil,
          include_all_blocks: nil,
          limit: nil,
          request_options: {}
        )
        end

        sig do
          params(
            external_customer_id: String,
            currency: T.nilable(String),
            cursor: T.nilable(String),
            include_all_blocks: T::Boolean,
            limit: Integer,
            request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
          ).returns(Orb::Page[Orb::Models::Customers::CreditListByExternalIDResponse])
        end
        def list_by_external_id(
          external_customer_id,
          currency: nil,
          cursor: nil,
          include_all_blocks: nil,
          limit: nil,
          request_options: {}
        )
        end

        sig { params(client: Orb::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
