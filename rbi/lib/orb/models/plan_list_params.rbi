# typed: strong

module Orb
  module Models
    class PlanListParams < Orb::BaseModel
      extend Orb::Type::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at_gt

      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at_gte

      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at_lt

      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at_lte

      # Cursor for pagination. This can be populated by the `next_cursor` value returned
      #   from the initial request.
      sig { returns(T.nilable(String)) }
      attr_accessor :cursor

      # The number of items to fetch. Defaults to 20.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # The plan status to filter to ('active', 'archived', or 'draft').
      sig { returns(T.nilable(Orb::Models::PlanListParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: Orb::Models::PlanListParams::Status::OrSymbol).void }
      attr_writer :status

      sig do
        params(
          created_at_gt: T.nilable(Time),
          created_at_gte: T.nilable(Time),
          created_at_lt: T.nilable(Time),
          created_at_lte: T.nilable(Time),
          cursor: T.nilable(String),
          limit: Integer,
          status: Orb::Models::PlanListParams::Status::OrSymbol,
          request_options: T.any(Orb::RequestOptions, Orb::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        created_at_gt: nil,
        created_at_gte: nil,
        created_at_lt: nil,
        created_at_lte: nil,
        cursor: nil,
        limit: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              created_at_gt: T.nilable(Time),
              created_at_gte: T.nilable(Time),
              created_at_lt: T.nilable(Time),
              created_at_lte: T.nilable(Time),
              cursor: T.nilable(String),
              limit: Integer,
              status: Orb::Models::PlanListParams::Status::OrSymbol,
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash
      end

      # The plan status to filter to ('active', 'archived', or 'draft').
      module Status
        extend Orb::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::PlanListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Orb::Models::PlanListParams::Status::TaggedSymbol) }

        ACTIVE = T.let(:active, Orb::Models::PlanListParams::Status::TaggedSymbol)
        ARCHIVED = T.let(:archived, Orb::Models::PlanListParams::Status::TaggedSymbol)
        DRAFT = T.let(:draft, Orb::Models::PlanListParams::Status::TaggedSymbol)

        sig { override.returns(T::Array[Orb::Models::PlanListParams::Status::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
