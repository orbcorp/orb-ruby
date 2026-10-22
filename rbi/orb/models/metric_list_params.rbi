# typed: strong

module Orb
  module Models
    class MetricListParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Orb::MetricListParams, Orb::Internal::AnyHash) }

      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at_gt

      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at_gte

      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at_lt

      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at_lte

      # Cursor for pagination. This can be populated by the `next_cursor` value returned
      # from the initial request.
      sig { returns(T.nilable(String)) }
      attr_accessor :cursor

      # The number of items to fetch. Defaults to 20.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # The metric status to filter to ('active', 'archived', or 'draft').
      sig { returns(T.nilable(Orb::MetricListParams::Status::OrSymbol)) }
      attr_accessor :status

      sig do
        params(
          created_at_gt: T.nilable(Time),
          created_at_gte: T.nilable(Time),
          created_at_lt: T.nilable(Time),
          created_at_lte: T.nilable(Time),
          cursor: T.nilable(String),
          limit: Integer,
          status: T.nilable(Orb::MetricListParams::Status::OrSymbol),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        created_at_gt: nil,
        created_at_gte: nil,
        created_at_lt: nil,
        created_at_lte: nil,
        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        # from the initial request.
        cursor: nil,
        # The number of items to fetch. Defaults to 20.
        limit: nil,
        # The metric status to filter to ('active', 'archived', or 'draft').
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            created_at_gt: T.nilable(Time),
            created_at_gte: T.nilable(Time),
            created_at_lt: T.nilable(Time),
            created_at_lte: T.nilable(Time),
            cursor: T.nilable(String),
            limit: Integer,
            status: T.nilable(Orb::MetricListParams::Status::OrSymbol),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The metric status to filter to ('active', 'archived', or 'draft').
      module Status
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::MetricListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE = T.let(:active, Orb::MetricListParams::Status::TaggedSymbol)
        ARCHIVED = T.let(:archived, Orb::MetricListParams::Status::TaggedSymbol)
        DRAFT = T.let(:draft, Orb::MetricListParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Orb::MetricListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
