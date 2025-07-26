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

        # This endpoint can be used to update the `external_dimensional_price_group_id`
        # and `metadata` of an existing dimensional price group. Other fields on a
        # dimensional price group are currently immutable.
        sig do
          params(
            path_external_dimensional_price_group_id: String,
            body_external_dimensional_price_group_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::DimensionalPriceGroup)
        end
        def update(
          path_external_dimensional_price_group_id,
          # An optional user-defined ID for this dimensional price group resource, used
          # throughout the system as an alias for this dimensional price group. Use this
          # field to identify a dimensional price group by an existing identifier in your
          # system.
          body_external_dimensional_price_group_id: nil,
          # User-specified key/value pairs for the resource. Individual keys can be removed
          # by setting the value to `null`, and the entire metadata mapping can be cleared
          # by setting `metadata` to `null`.
          metadata: nil,
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
