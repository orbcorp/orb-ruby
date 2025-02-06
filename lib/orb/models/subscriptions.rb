# frozen_string_literal: true

module Orb
  module Models
    # @example
    # ```ruby
    # subscriptions_api => {
    #   data: -> { Orb::ArrayOf[Orb::Models::Subscription] === _1 },
    #   pagination_metadata: Orb::Models::PaginationMetadata
    # }
    # ```
    class SubscriptionsAPI < Orb::BaseModel
      # @!attribute data
      #
      #   @return [Array<Orb::Models::Subscription>]
      required :data, -> { Orb::ArrayOf[Orb::Models::Subscription] }

      # @!attribute pagination_metadata
      #
      #   @return [Orb::Models::PaginationMetadata]
      required :pagination_metadata, -> { Orb::Models::PaginationMetadata }

      # @!parse
      #   # @param data [Array<Orb::Models::Subscription>]
      #   # @param pagination_metadata [Orb::Models::PaginationMetadata]
      #   #
      #   def initialize(data:, pagination_metadata:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
