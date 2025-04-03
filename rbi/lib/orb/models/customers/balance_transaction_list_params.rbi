# typed: strong

module Orb
  module Models
    module Customers
      class BalanceTransactionListParams < Orb::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        #   from the initial request.
        sig { returns(T.nilable(String)) }
        attr_accessor :cursor

        # The number of items to fetch. Defaults to 20.
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
            request_options: T.any(Orb::RequestOptions, Orb::Internal::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          cursor: nil,
          limit: nil,
          operation_time_gt: nil,
          operation_time_gte: nil,
          operation_time_lt: nil,
          operation_time_lte: nil,
          request_options: {}
        )
        end

        sig do
          override
            .returns(
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
        def to_hash
        end
      end
    end
  end
end
