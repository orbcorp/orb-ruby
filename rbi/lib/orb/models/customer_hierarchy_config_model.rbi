# typed: strong

module Orb
  module Models
    class CustomerHierarchyConfigModel < Orb::BaseModel
      sig { returns(T.nilable(T::Array[String])) }
      def child_customer_ids
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def child_customer_ids=(_)
      end

      sig { returns(T.nilable(String)) }
      def parent_customer_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def parent_customer_id=(_)
      end

      sig { params(child_customer_ids: T::Array[String], parent_customer_id: T.nilable(String)).void }
      def initialize(child_customer_ids: nil, parent_customer_id: nil)
      end

      sig { override.returns({child_customer_ids: T::Array[String], parent_customer_id: T.nilable(String)}) }
      def to_hash
      end
    end
  end
end
