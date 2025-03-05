# typed: strong

module Orb
  module Resources
    class Coupons
      class Subscriptions
        sig do
          params(
            coupon_id: String,
            cursor: T.nilable(String),
            limit: Integer,
            request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Orb::Page[Orb::Models::SubscriptionModel])
        end
        def list(coupon_id, cursor: nil, limit: nil, request_options: {})
        end

        sig { params(client: Orb::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
