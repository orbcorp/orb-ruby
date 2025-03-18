# typed: strong

module Orb
  module Models
    module Customers
      class CreditListResponse < Orb::BaseModel
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
            .returns(T.attached_class)
        end
        def self.new(id:, balance:, effective_date:, expiry_date:, maximum_initial_balance:, per_unit_cost_basis:, status:)
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

          Value = type_template(:out) { {fixed: Symbol} }

          ACTIVE = :active
          PENDING_PAYMENT = :pending_payment
        end
      end
    end
  end
end
