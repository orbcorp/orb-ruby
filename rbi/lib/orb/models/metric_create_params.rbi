# typed: strong

module Orb
  module Models
    class MetricCreateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            description: T.nilable(String),
            item_id: String,
            name: String,
            sql: String,
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
          },
          Orb::RequestParameters::Shape
        )
      end

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
          request_options: Orb::RequestOpts
        ).void
      end
      def initialize(description:, item_id:, name:, sql:, metadata: nil, request_options: {}); end

      sig { returns(Orb::Models::MetricCreateParams::Shape) }
      def to_h; end
    end
  end
end
