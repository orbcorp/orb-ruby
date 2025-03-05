# frozen_string_literal: true

module Orb
  module Models
    class RemoveSubscriptionPriceParams < Orb::BaseModel
      # @!attribute external_price_id
      #   The external price id of the price to remove on the subscription.
      #
      #   @return [String, nil]
      optional :external_price_id, String, nil?: true

      # @!attribute price_id
      #   The id of the price to remove on the subscription.
      #
      #   @return [String, nil]
      optional :price_id, String, nil?: true

      # @!parse
      #   # @param external_price_id [String, nil]
      #   # @param price_id [String, nil]
      #   #
      #   def initialize(external_price_id: nil, price_id: nil, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
