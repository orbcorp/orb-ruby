# typed: strong

module Orb
  module Resources
    class DimensionalPriceGroups
      class ExternalDimensionalPriceGroupID
        # Fetch dimensional price group by external ID
        sig do
          params(
            external_dimensional_price_group_id: String,
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::DimensionalPriceGroup)
        end
        def retrieve(external_dimensional_price_group_id, request_options: {})
        end

        # @api private
        sig { params(client: Orb::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
