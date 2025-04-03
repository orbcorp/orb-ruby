# typed: strong

module Orb
  module Resources
    class DimensionalPriceGroups
      sig { returns(Orb::Resources::DimensionalPriceGroups::ExternalDimensionalPriceGroupID) }
      attr_reader :external_dimensional_price_group_id

      # A dimensional price group is used to partition the result of a billable metric
      #   by a set of dimensions. Prices in a price group must specify the parition used
      #   to derive their usage.
      #
      #   For example, suppose we have a billable metric that measures the number of
      #   widgets used and we want to charge differently depending on the color of the
      #   widget. We can create a price group with a dimension "color" and two prices: one
      #   that charges $10 per red widget and one that charges $20 per blue widget.
      sig do
        params(
          billable_metric_id: String,
          dimensions: T::Array[String],
          name: String,
          external_dimensional_price_group_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Internal::AnyHash))
        )
          .returns(Orb::Models::DimensionalPriceGroup)
      end
      def create(
        billable_metric_id:,
        # The set of keys (in order) used to disambiguate prices in the group.
        dimensions:,
        name:,
        external_dimensional_price_group_id: nil,
        # User-specified key/value pairs for the resource. Individual keys can be removed
        #   by setting the value to `null`, and the entire metadata mapping can be cleared
        #   by setting `metadata` to `null`.
        metadata: nil,
        request_options: {}
      )
      end

      # Fetch dimensional price group
      sig do
        params(
          dimensional_price_group_id: String,
          request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Internal::AnyHash))
        )
          .returns(Orb::Models::DimensionalPriceGroup)
      end
      def retrieve(dimensional_price_group_id, request_options: {})
      end

      # List dimensional price groups
      sig do
        params(
          cursor: T.nilable(String),
          limit: Integer,
          request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Internal::AnyHash))
        )
          .returns(Orb::Internal::Page[Orb::Models::DimensionalPriceGroup])
      end
      def list(
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
