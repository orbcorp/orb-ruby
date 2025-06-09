# typed: strong

module Orb
  module Models
    class CustomerHierarchyConfig < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::CustomerHierarchyConfig, Orb::Internal::AnyHash)
        end

      # A list of child customer IDs to add to the hierarchy. The desired child
      # customers must not already be part of another hierarchy.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :child_customer_ids

      sig { params(child_customer_ids: T::Array[String]).void }
      attr_writer :child_customer_ids

      # The ID of the parent customer in the hierarchy. The desired parent customer must
      # not be a child of another customer.
      sig { returns(T.nilable(String)) }
      attr_accessor :parent_customer_id

      sig do
        params(
          child_customer_ids: T::Array[String],
          parent_customer_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # A list of child customer IDs to add to the hierarchy. The desired child
        # customers must not already be part of another hierarchy.
        child_customer_ids: nil,
        # The ID of the parent customer in the hierarchy. The desired parent customer must
        # not be a child of another customer.
        parent_customer_id: nil
      )
      end

      sig do
        override.returns(
          {
            child_customer_ids: T::Array[String],
            parent_customer_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
