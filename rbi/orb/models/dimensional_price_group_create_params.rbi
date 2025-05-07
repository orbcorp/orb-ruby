# typed: strong

module Orb
  module Models
    class DimensionalPriceGroupCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(T.self_type, Orb::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :billable_metric_id

      # The set of keys (in order) used to disambiguate prices in the group.
      sig { returns(T::Array[String]) }
      attr_accessor :dimensions

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T.nilable(String)) }
      attr_accessor :external_dimensional_price_group_id

      # User-specified key/value pairs for the resource. Individual keys can be removed
      # by setting the value to `null`, and the entire metadata mapping can be cleared
      # by setting `metadata` to `null`.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      sig do
        params(
          billable_metric_id: String,
          dimensions: T::Array[String],
          name: String,
          external_dimensional_price_group_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        billable_metric_id:,
        # The set of keys (in order) used to disambiguate prices in the group.
        dimensions:,
        name:,
        external_dimensional_price_group_id: nil,
        # User-specified key/value pairs for the resource. Individual keys can be removed
        # by setting the value to `null`, and the entire metadata mapping can be cleared
        # by setting `metadata` to `null`.
        metadata: nil,
        request_options: {}
      )
      end

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
      def to_hash
      end
    end
  end
end
