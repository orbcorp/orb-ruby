# typed: strong

module Orb
  module Models
    class CustomerMinified < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::CustomerMinified, Orb::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(String)) }
      attr_accessor :external_customer_id

      sig do
        params(id: String, external_customer_id: T.nilable(String)).returns(
          T.attached_class
        )
      end
      def self.new(id:, external_customer_id:)
      end

      sig do
        override.returns(
          { id: String, external_customer_id: T.nilable(String) }
        )
      end
      def to_hash
      end
    end
  end
end
