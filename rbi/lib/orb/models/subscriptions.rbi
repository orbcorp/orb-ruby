# typed: strong

module Orb
  module Models
    class SubscriptionsAPI < Orb::BaseModel
      sig { returns(T::Array[Orb::Models::Subscription]) }
      def data
      end

      sig { params(_: T::Array[Orb::Models::Subscription]).returns(T::Array[Orb::Models::Subscription]) }
      def data=(_)
      end

      sig { returns(Orb::Models::PaginationMetadata) }
      def pagination_metadata
      end

      sig { params(_: Orb::Models::PaginationMetadata).returns(Orb::Models::PaginationMetadata) }
      def pagination_metadata=(_)
      end

      sig do
        params(
          data: T::Array[Orb::Models::Subscription],
          pagination_metadata: Orb::Models::PaginationMetadata
        ).void
      end
      def initialize(data:, pagination_metadata:)
      end

      sig do
        override.returns(
          {
            data: T::Array[Orb::Models::Subscription],
            pagination_metadata: Orb::Models::PaginationMetadata
          }
        )
      end
      def to_hash
      end
    end
  end
end
