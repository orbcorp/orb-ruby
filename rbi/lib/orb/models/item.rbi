# typed: strong

module Orb
  module Models
    class Item < Orb::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T::Array[Orb::Models::ItemExternalConnectionModel]) }
      def external_connections
      end

      sig do
        params(_: T::Array[Orb::Models::ItemExternalConnectionModel])
          .returns(T::Array[Orb::Models::ItemExternalConnectionModel])
      end
      def external_connections=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig do
        params(
          id: String,
          created_at: Time,
          external_connections: T::Array[Orb::Models::ItemExternalConnectionModel],
          name: String
        )
          .void
      end
      def initialize(id:, created_at:, external_connections:, name:)
      end

      sig do
        override
          .returns(
            {
              id: String,
              created_at: Time,
              external_connections: T::Array[Orb::Models::ItemExternalConnectionModel],
              name: String
            }
          )
      end
      def to_hash
      end
    end
  end
end
