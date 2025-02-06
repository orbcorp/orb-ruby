# typed: strong

module Orb
  module Resources
    class Prices
      class ExternalPriceID
        sig do
          params(
            external_price_id: String,
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            request_options: Orb::RequestOpts
          ).returns(Orb::Models::Price::Variants)
        end
        def update(external_price_id, metadata: nil, request_options: {}); end

        sig do
          params(
            external_price_id: String,
            request_options: Orb::RequestOpts
          ).returns(Orb::Models::Price::Variants)
        end
        def fetch(external_price_id, request_options: {}); end

        sig { params(client: Orb::Client).void }
        def initialize(client:); end
      end
    end
  end
end
