# typed: strong

module Orb
  module Models
    module Customers
      class BalanceTransactionListParams < Orb::BaseModel
        extend Orb::RequestParameters::Converter
        include Orb::RequestParameters

        sig { returns(T.nilable(String)) }
        attr_accessor :cursor

        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        sig { returns(T.nilable(Time)) }
        attr_accessor :operation_time_gt

        sig { returns(T.nilable(Time)) }
        attr_accessor :operation_time_gte

        sig { returns(T.nilable(Time)) }
        attr_accessor :operation_time_lt

        sig { returns(T.nilable(Time)) }
        attr_accessor :operation_time_lte

        sig do
          params(
            cursor: T.nilable(String),
            limit: Integer,
            operation_time_gt: T.nilable(Time),
            operation_time_gte: T.nilable(Time),
            operation_time_lt: T.nilable(Time),
            operation_time_lte: T.nilable(Time),
            request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(
          cursor: nil,
          limit: nil,
          operation_time_gt: nil,
          operation_time_gte: nil,
          operation_time_lt: nil,
          operation_time_lte: nil,
          request_options: {}
        ); end

        sig do
          override.returns(
            {
              cursor: T.nilable(String),
              limit: Integer,
              operation_time_gt: T.nilable(Time),
              operation_time_gte: T.nilable(Time),
              operation_time_lt: T.nilable(Time),
              operation_time_lte: T.nilable(Time),
              request_options: Orb::RequestOptions
            }
          )
        end
        def to_hash; end
      end
    end
  end
end
