# typed: strong

module Orb
  module Resources
    class Coupons
      class Subscriptions
        # This endpoint returns a list of all subscriptions that have redeemed a given
        #   coupon as a [paginated](/api-reference/pagination) list, ordered starting from
        #   the most recently created subscription. For a full discussion of the
        #   subscription resource, see [Subscription](/core-concepts#subscription).
        sig do
          params(
            coupon_id: String,
            cursor: T.nilable(String),
            limit: Integer,
            request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Internal::AnyHash))
          )
            .returns(Orb::Internal::Page[Orb::Models::Subscription])
        end
        def list(
          coupon_id,
          # Cursor for pagination. This can be populated by the `next_cursor` value returned
          #   from the initial request.
          cursor: nil,
          # The number of items to fetch. Defaults to 20.
          limit: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Orb::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
