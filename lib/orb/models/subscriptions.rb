# frozen_string_literal: true

module Orb
  module Models
    class SubscriptionsAPI < Orb::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Orb::Subscription>]
      required :data, -> { Orb::Internal::Type::ArrayOf[Orb::Subscription] }

      # @!attribute pagination_metadata
      #
      #   @return [Orb::PaginationMetadata]
      required :pagination_metadata, -> { Orb::PaginationMetadata }

      # @!method initialize(data:, pagination_metadata:)
      #   @param data [Array<Orb::Subscription>]
      #   @param pagination_metadata [Orb::PaginationMetadata]
    end
  end
end
