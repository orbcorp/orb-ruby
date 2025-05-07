# typed: strong

module Orb
  module Models
    module Customers
      class CreditListByExternalIDResponse < Orb::Internal::Type::BaseModel
        OrHash = T.type_alias { T.any(T.self_type, Orb::Internal::AnyHash) }

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

        sig do
          returns(
            Orb::Models::Customers::CreditListByExternalIDResponse::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig do
          params(
            id: String,
            balance: Float,
            effective_date: T.nilable(Time),
            expiry_date: T.nilable(Time),
            maximum_initial_balance: T.nilable(Float),
            per_unit_cost_basis: T.nilable(String),
            status:
              Orb::Models::Customers::CreditListByExternalIDResponse::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
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
              status:
                Orb::Models::Customers::CreditListByExternalIDResponse::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Status
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Models::Customers::CreditListByExternalIDResponse::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              Orb::Models::Customers::CreditListByExternalIDResponse::Status::TaggedSymbol
            )
          PENDING_PAYMENT =
            T.let(
              :pending_payment,
              Orb::Models::Customers::CreditListByExternalIDResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Models::Customers::CreditListByExternalIDResponse::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
