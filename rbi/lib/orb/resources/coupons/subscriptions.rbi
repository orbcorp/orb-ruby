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
            .returns(Orb::Page[Orb::Models::Subscription])
        end
        def list(coupon_id, cursor: nil, limit: nil, request_options: {})
        end

        sig { params(client: Orb::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
