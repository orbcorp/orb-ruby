# typed: strong

module Orb
  module Models
    class DimensionalPriceGroupCreateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(String) }
      attr_accessor :billable_metric_id

      sig { returns(T::Array[String]) }
      attr_accessor :dimensions

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T.nilable(String)) }
      attr_accessor :external_dimensional_price_group_id

      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      sig do
        params(
          billable_metric_id: String,
          dimensions: T::Array[String],
          name: String,
          external_dimensional_price_group_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        billable_metric_id:,
        dimensions:,
        name:,
        external_dimensional_price_group_id: nil,
        metadata: nil,
        request_options: {}
      ); end

      sig do
        override.returns(
          {
            billable_metric_id: String,
            dimensions: T::Array[String],
            name: String,
            external_dimensional_price_group_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash; end
    end
  end
end
