# typed: strong

module Orb
  module Resources
    class DimensionalPriceGroups
      sig { returns(Orb::Resources::DimensionalPriceGroups::ExternalDimensionalPriceGroupID) }
      attr_reader :external_dimensional_price_group_id

      sig do
        params(
          billable_metric_id: String,
          dimensions: T::Array[String],
          name: String,
          external_dimensional_price_group_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Orb::Models::DimensionalPriceGroup)
      end
      def create(
        billable_metric_id:,
        dimensions:,
        name:,
        external_dimensional_price_group_id: nil,
        metadata: nil,
        request_options: {}
      ); end

      sig do
        params(
          dimensional_price_group_id: String,
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Orb::Models::DimensionalPriceGroup)
      end
      def retrieve(dimensional_price_group_id, request_options: {}); end

      sig do
        params(
          cursor: T.nilable(String),
          limit: Integer,
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Orb::Page[Orb::Models::DimensionalPriceGroup])
      end
      def list(cursor: nil, limit: nil, request_options: {}); end

      sig { params(client: Orb::Client).void }
      def initialize(client:); end
    end
  end
end
