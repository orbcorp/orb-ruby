# typed: strong

module Orb
  module Models
    class MetricCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Orb::MetricCreateParams, Orb::Internal::AnyHash) }

      # A description of the metric.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The id of the item
      sig { returns(String) }
      attr_accessor :item_id

      # The name of the metric.
      sig { returns(String) }
      attr_accessor :name

      # A sql string defining the metric.
      sig { returns(String) }
      attr_accessor :sql

      # User-specified key/value pairs for the resource. Individual keys can be removed
      # by setting the value to `null`, and the entire metadata mapping can be cleared
      # by setting `metadata` to `null`.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      # The status of the metric to create (either active or draft). If not specified,
      # this defaults to active. A draft metric's `sql` and `item_id` can be changed
      # until it's published.
      sig { returns(T.nilable(Orb::MetricCreateParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: Orb::MetricCreateParams::Status::OrSymbol).void }
      attr_writer :status

      sig do
        params(
          description: T.nilable(String),
          item_id: String,
          name: String,
          sql: String,
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          status: Orb::MetricCreateParams::Status::OrSymbol,
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A description of the metric.
        description:,
        # The id of the item
        item_id:,
        # The name of the metric.
        name:,
        # A sql string defining the metric.
        sql:,
        # User-specified key/value pairs for the resource. Individual keys can be removed
        # by setting the value to `null`, and the entire metadata mapping can be cleared
        # by setting `metadata` to `null`.
        metadata: nil,
        # The status of the metric to create (either active or draft). If not specified,
        # this defaults to active. A draft metric's `sql` and `item_id` can be changed
        # until it's published.
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            description: T.nilable(String),
            item_id: String,
            name: String,
            sql: String,
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            status: Orb::MetricCreateParams::Status::OrSymbol,
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The status of the metric to create (either active or draft). If not specified,
      # this defaults to active. A draft metric's `sql` and `item_id` can be changed
      # until it's published.
      module Status
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::MetricCreateParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE = T.let(:active, Orb::MetricCreateParams::Status::TaggedSymbol)
        DRAFT = T.let(:draft, Orb::MetricCreateParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Orb::MetricCreateParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
