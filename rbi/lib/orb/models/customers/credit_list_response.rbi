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

        sig { returns(Orb::Models::Customers::CreditListResponse::Status::TaggedSymbol) }
        attr_accessor :status

        sig do
          params(
            id: String,
            balance: Float,
            effective_date: T.nilable(Time),
            expiry_date: T.nilable(Time),
            maximum_initial_balance: T.nilable(Float),
            per_unit_cost_basis: T.nilable(String),
            status: Orb::Models::Customers::CreditListResponse::Status::OrSymbol
          )
            .returns(T.attached_class)
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
          override
            .returns(
              {
                id: String,
                balance: Float,
                effective_date: T.nilable(Time),
                expiry_date: T.nilable(Time),
                maximum_initial_balance: T.nilable(Float),
                per_unit_cost_basis: T.nilable(String),
                status: Orb::Models::Customers::CreditListResponse::Status::TaggedSymbol
              }
            )
        end
        def to_hash
        end

        module Status
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Customers::CreditListResponse::Status) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Customers::CreditListResponse::Status::TaggedSymbol) }

          ACTIVE = T.let(:active, Orb::Models::Customers::CreditListResponse::Status::TaggedSymbol)
          PENDING_PAYMENT =
            T.let(:pending_payment, Orb::Models::Customers::CreditListResponse::Status::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Customers::CreditListResponse::Status::TaggedSymbol]) }
          def self.values
          end
        end
      end
    end
  end
end
