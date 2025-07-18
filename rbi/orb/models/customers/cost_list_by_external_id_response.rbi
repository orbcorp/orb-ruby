# typed: strong

module Orb
  module Models
    module Customers
      class CostListByExternalIDResponse < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Models::Customers::CostListByExternalIDResponse,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(T::Array[Orb::AggregatedCost]) }
        attr_accessor :data

        sig do
          params(data: T::Array[Orb::AggregatedCost::OrHash]).returns(
            T.attached_class
          )
        end
        def self.new(data:)
        end

        sig { override.returns({ data: T::Array[Orb::AggregatedCost] }) }
        def to_hash
        end
      end
    end
  end
end
