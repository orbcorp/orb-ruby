# typed: strong

module Orb
  module Models
    class CustomerListParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at_gt

      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at_gte

      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at_lt

      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at_lte

      sig { returns(T.nilable(String)) }
      attr_accessor :cursor

      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig do
        params(
          created_at_gt: T.nilable(Time),
          created_at_gte: T.nilable(Time),
          created_at_lt: T.nilable(Time),
          created_at_lte: T.nilable(Time),
          cursor: T.nilable(String),
          limit: Integer,
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        created_at_gt: nil,
        created_at_gte: nil,
        created_at_lt: nil,
        created_at_lte: nil,
        cursor: nil,
        limit: nil,
        request_options: {}
      ); end

      sig do
        override.returns(
          {
            created_at_gt: T.nilable(Time),
            created_at_gte: T.nilable(Time),
            created_at_lt: T.nilable(Time),
            created_at_lte: T.nilable(Time),
            cursor: T.nilable(String),
            limit: Integer,
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash; end
    end
  end
end
