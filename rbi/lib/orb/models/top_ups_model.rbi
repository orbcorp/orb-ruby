# typed: strong

module Orb
  module Models
    class TopUpsModel < Orb::BaseModel
      sig { returns(T::Array[Orb::Models::TopUpModel]) }
      def data
      end

      sig { params(_: T::Array[Orb::Models::TopUpModel]).returns(T::Array[Orb::Models::TopUpModel]) }
      def data=(_)
      end

      sig { returns(Orb::Models::PaginationMetadata) }
      def pagination_metadata
      end

      sig { params(_: Orb::Models::PaginationMetadata).returns(Orb::Models::PaginationMetadata) }
      def pagination_metadata=(_)
      end

      sig { params(data: T::Array[Orb::Models::TopUpModel], pagination_metadata: Orb::Models::PaginationMetadata).void }
      def initialize(data:, pagination_metadata:)
      end

      sig do
        override
          .returns({data: T::Array[Orb::Models::TopUpModel], pagination_metadata: Orb::Models::PaginationMetadata})
      end
      def to_hash
      end
    end
  end
end
