# typed: strong

module Orb
  module Models
    class MetricCreateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(String) }
      attr_accessor :item_id

      sig { returns(String) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :sql

      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      sig do
        params(
          description: T.nilable(String),
          item_id: String,
          name: String,
          sql: String,
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(description:, item_id:, name:, sql:, metadata: nil, request_options: {}); end

      sig do
        override.returns(
          {
            description: T.nilable(String),
            item_id: String,
            name: String,
            sql: String,
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash; end
    end
  end
end
