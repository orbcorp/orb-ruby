# typed: strong

module Orb
  module Resources
    class Customers
      class Costs
        sig do
          params(
            customer_id: String,
            currency: T.nilable(String),
            timeframe_end: T.nilable(Time),
            timeframe_start: T.nilable(Time),
            view_mode: T.nilable(Symbol),
            request_options: Orb::RequestOpts
          ).returns(Orb::Models::Customers::CostListResponse)
        end
        def list(customer_id, currency:, timeframe_end:, timeframe_start:, view_mode:, request_options: {})
        end

        sig do
          params(
            external_customer_id: String,
            currency: T.nilable(String),
            timeframe_end: T.nilable(Time),
            timeframe_start: T.nilable(Time),
            view_mode: T.nilable(Symbol),
            request_options: Orb::RequestOpts
          ).returns(Orb::Models::Customers::CostListByExternalIDResponse)
        end
        def list_by_external_id(
          external_customer_id,
          currency:,
          timeframe_end:,
          timeframe_start:,
          view_mode:,
          request_options: {}
        )
        end

        sig { params(client: Orb::Client).void }
        def initialize(client:); end
      end
    end
  end
end
