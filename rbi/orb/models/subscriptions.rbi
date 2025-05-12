# typed: strong

module Orb
  module Models
    class SubscriptionsAPI < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::SubscriptionsAPI, Orb::Internal::AnyHash) }

      sig { returns(T::Array[Orb::Subscription]) }
      attr_accessor :data

      sig { returns(Orb::PaginationMetadata) }
      attr_reader :pagination_metadata

      sig { params(pagination_metadata: Orb::PaginationMetadata::OrHash).void }
      attr_writer :pagination_metadata

      sig do
        params(
          data: T::Array[Orb::Subscription::OrHash],
          pagination_metadata: Orb::PaginationMetadata::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:, pagination_metadata:)
      end

      sig do
        override.returns(
          {
            data: T::Array[Orb::Subscription],
            pagination_metadata: Orb::PaginationMetadata
          }
        )
      end
      def to_hash
      end
    end
  end
end
