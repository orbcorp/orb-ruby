# typed: strong

module Orb
  module Resources
    class DimensionalPriceGroups
      class ExternalDimensionalPriceGroupID
        sig do
          params(
            external_dimensional_price_group_id: String,
            request_options: Orb::RequestOpts
          ).returns(Orb::Models::DimensionalPriceGroup)
        end
        def retrieve(external_dimensional_price_group_id, request_options: {}); end

        sig { params(client: Orb::Client).void }
        def initialize(client:); end
      end
    end
  end
end
