# typed: strong

module Orb
  module Models
    class SubscriptionsAPI < Orb::BaseModel
      sig { returns(T::Array[Orb::Models::Subscription]) }
      attr_accessor :data

      sig { returns(Orb::Models::PaginationMetadata) }
      attr_reader :pagination_metadata

      sig { params(pagination_metadata: T.any(Orb::Models::PaginationMetadata, Orb::Internal::Util::AnyHash)).void }
      attr_writer :pagination_metadata

      sig do
        params(
          data: T::Array[T.any(Orb::Models::Subscription, Orb::Internal::Util::AnyHash)],
          pagination_metadata: T.any(Orb::Models::PaginationMetadata, Orb::Internal::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(data:, pagination_metadata:)
      end

      sig do
        override
          .returns({data: T::Array[Orb::Models::Subscription], pagination_metadata: Orb::Models::PaginationMetadata})
      end
      def to_hash
      end
    end
  end
end
