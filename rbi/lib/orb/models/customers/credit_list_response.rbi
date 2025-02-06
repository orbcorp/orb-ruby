# typed: strong

module Orb
  module Models
    module Customers
      class CreditListResponse < Orb::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Float) }
        attr_accessor :balance

        sig { returns(T.nilable(Time)) }
        attr_accessor :effective_date

        sig { returns(T.nilable(Time)) }
        attr_accessor :expiry_date

        sig { returns(T.nilable(Float)) }
        attr_accessor :maximum_initial_balance

        sig { returns(T.nilable(String)) }
        attr_accessor :per_unit_cost_basis

        sig { returns(Symbol) }
        attr_accessor :status

        sig do
          params(
            id: String,
            balance: Float,
            effective_date: T.nilable(Time),
            expiry_date: T.nilable(Time),
            maximum_initial_balance: T.nilable(Float),
            per_unit_cost_basis: T.nilable(String),
            status: Symbol
          ).void
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
          override.returns(
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
