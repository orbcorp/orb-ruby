# typed: strong

module Orb
  module Resources
    class DimensionalPriceGroups
      class Prices
        # Create prices in a dimensional price group. Every price shares `item_id`,
        # `cadence`, `currency`, and `model_type`. Tiered prices also share tier
        # boundaries; each row supplies its own amounts. The request is one transaction.
        sig do
          params(
            dimensional_price_group_id: String,
            cadence:
              Orb::DimensionalPriceGroups::PriceCreateParams::Cadence::OrSymbol,
            currency: String,
            item_id: String,
            model_type:
              Orb::DimensionalPriceGroups::PriceCreateParams::ModelType::OrSymbol,
            prices:
              T::Array[
                Orb::DimensionalPriceGroups::PriceCreateParams::Price::OrHash
              ],
            tiers:
              T.nilable(
                T::Array[
                  Orb::DimensionalPriceGroups::PriceCreateParams::Tier::OrHash
                ]
              ),
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::Models::DimensionalPriceGroups::PriceCreateResponse)
        end
        def create(
          dimensional_price_group_id,
          # Billing cadence for every price
          cadence:,
          # An ISO 4217 currency string for every price.
          currency:,
          # The item for every price. Must be the group's billable metric item.
          item_id:,
          model_type:,
          prices:,
          # Shared tier boundaries. Required for tiered prices and omitted for unit prices.
          tiers: nil,
          request_options: {}
        )
        end

        # This endpoint returns the prices in a dimensional price group. Subscription
        # overrides are omitted. Archived prices are omitted unless `status` is `archived`
        # or `all`.
        sig do
          params(
            dimensional_price_group_id: String,
            cursor: T.nilable(String),
            limit: Integer,
            status:
              Orb::DimensionalPriceGroups::PriceListParams::Status::OrSymbol,
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::Internal::Page[Orb::Price::Variants])
        end
        def list(
          dimensional_price_group_id,
          # Cursor for pagination. This can be populated by the `next_cursor` value returned
          # from the initial request.
          cursor: nil,
          # The number of items to fetch. Defaults to 20.
          limit: nil,
          # active omits archived prices. archived returns only archived prices. all returns
          # both.
          status: nil,
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
