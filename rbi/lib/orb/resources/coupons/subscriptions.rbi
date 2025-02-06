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
            request_options: Orb::RequestOpts
          ).returns(Orb::Page[Orb::Models::Subscription])
        end
        def list(coupon_id, cursor: nil, limit: nil, request_options: {}); end

        sig { params(client: Orb::Client).void }
        def initialize(client:); end
      end
    end
  end
end
