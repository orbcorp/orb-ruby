# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        class AffectedBlock < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Customers::Credits::AffectedBlock,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(T.nilable(Time)) }
          attr_accessor :expiry_date

          sig { returns(T.nilable(String)) }
          attr_accessor :per_unit_cost_basis

          sig do
            params(
              id: String,
              expiry_date: T.nilable(Time),
              per_unit_cost_basis: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(id:, expiry_date:, per_unit_cost_basis:)
          end

          sig do
            override.returns(
              {
                id: String,
                expiry_date: T.nilable(Time),
                per_unit_cost_basis: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
