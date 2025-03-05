# typed: strong

module Orb
  module Models
    class CustomerMinifiedModel < Orb::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(T.nilable(String)) }
      def external_customer_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_customer_id=(_)
      end

      sig { params(id: String, external_customer_id: T.nilable(String)).void }
      def initialize(id:, external_customer_id:)
      end

      sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
      def to_hash
      end
    end
  end
end
