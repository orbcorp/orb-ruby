# typed: strong

module Orb
  module Models
    class DimensionalPriceGroupCreateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            billable_metric_id: String,
            dimensions: T::Array[String],
            name: String,
            external_dimensional_price_group_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
          },
          Orb::RequestParameters::Shape
        )
      end

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
          request_options: Orb::RequestOpts
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

      sig { returns(Orb::Models::DimensionalPriceGroupCreateParams::Shape) }
      def to_h; end
    end
  end
end
