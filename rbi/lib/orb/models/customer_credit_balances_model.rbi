# typed: strong

module Orb
  module Models
    class CustomerCreditBalancesModel < Orb::BaseModel
      sig { returns(T::Array[Orb::Models::CustomerCreditBalancesModel::Data]) }
      def data
      end

      sig do
        params(_: T::Array[Orb::Models::CustomerCreditBalancesModel::Data])
          .returns(T::Array[Orb::Models::CustomerCreditBalancesModel::Data])
      end
      def data=(_)
      end

      sig { returns(Orb::Models::PaginationMetadata) }
      def pagination_metadata
      end

      sig { params(_: Orb::Models::PaginationMetadata).returns(Orb::Models::PaginationMetadata) }
      def pagination_metadata=(_)
      end

      sig do
        params(
          data: T::Array[Orb::Models::CustomerCreditBalancesModel::Data],
          pagination_metadata: Orb::Models::PaginationMetadata
        )
          .void
      end
      def initialize(data:, pagination_metadata:)
      end

      sig do
        override
          .returns(
            {
              data: T::Array[Orb::Models::CustomerCreditBalancesModel::Data],
              pagination_metadata: Orb::Models::PaginationMetadata
            }
          )
      end
      def to_hash
      end

      class Data < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(Float) }
        def balance
        end

        sig { params(_: Float).returns(Float) }
        def balance=(_)
        end

        sig { returns(T.nilable(Time)) }
        def effective_date
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def effective_date=(_)
        end

        sig { returns(T.nilable(Time)) }
        def expiry_date
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def expiry_date=(_)
        end

        sig { returns(T.nilable(Float)) }
        def maximum_initial_balance
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def maximum_initial_balance=(_)
        end

        sig { returns(T.nilable(String)) }
        def per_unit_cost_basis
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def per_unit_cost_basis=(_)
        end

        sig { returns(Symbol) }
        def status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def status=(_)
        end

        sig do
          params(
            id: String,
            balance: Float,
            effective_date: T.nilable(Time),
            expiry_date: T.nilable(Time),
            maximum_initial_balance: T.nilable(Float),
            per_unit_cost_basis: T.nilable(String),
            status: Symbol
          )
            .void
        end
        def initialize(
          id:,
          balance:,
          effective_date:,
          expiry_date:,
          maximum_initial_balance:,
          per_unit_cost_basis:,
          status:
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                balance: Float,
                effective_date: T.nilable(Time),
                expiry_date: T.nilable(Time),
                maximum_initial_balance: T.nilable(Float),
                per_unit_cost_basis: T.nilable(String),
                status: Symbol
              }
            )
        end
        def to_hash
        end

        class Status < Orb::Enum
          abstract!

          ACTIVE = :active
          PENDING_PAYMENT = :pending_payment

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
