# typed: strong

module Orb
  module Models
    module Customers
      class BalanceTransactionListParams < Orb::BaseModel
        extend Orb::RequestParameters::Converter
        include Orb::RequestParameters

        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        #   from the initial request.
        sig { returns(T.nilable(String)) }
        def cursor
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def cursor=(_)
        end

        # The number of items to fetch. Defaults to 20.
        sig { returns(T.nilable(Integer)) }
        def limit
        end

        sig { params(_: Integer).returns(Integer) }
        def limit=(_)
        end

        sig { returns(T.nilable(Time)) }
        def operation_time_gt
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def operation_time_gt=(_)
        end

        sig { returns(T.nilable(Time)) }
        def operation_time_gte
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def operation_time_gte=(_)
        end

        sig { returns(T.nilable(Time)) }
        def operation_time_lt
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def operation_time_lt=(_)
        end

        sig { returns(T.nilable(Time)) }
        def operation_time_lte
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def operation_time_lte=(_)
        end

        sig do
          params(
            cursor: T.nilable(String),
            limit: Integer,
            operation_time_gt: T.nilable(Time),
            operation_time_gte: T.nilable(Time),
            operation_time_lt: T.nilable(Time),
            operation_time_lte: T.nilable(Time),
            request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
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
