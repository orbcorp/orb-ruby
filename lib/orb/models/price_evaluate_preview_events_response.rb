# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Prices#evaluate_preview_events
    class PriceEvaluatePreviewEventsResponse < Orb::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Orb::Models::PriceEvaluatePreviewEventsResponse::Data>]
      required :data, -> { Orb::Internal::Type::ArrayOf[Orb::Models::PriceEvaluatePreviewEventsResponse::Data] }

      # @!method initialize(data:)
      #   @param data [Array<Orb::Models::PriceEvaluatePreviewEventsResponse::Data>]

      class Data < Orb::Internal::Type::BaseModel
        # @!attribute currency
        #   The currency of the price
        #
        #   @return [String]
        required :currency, String

        # @!attribute price_groups
        #   The computed price groups associated with input price.
        #
        #   @return [Array<Orb::Models::EvaluatePriceGroup>]
        required :price_groups, -> { Orb::Internal::Type::ArrayOf[Orb::EvaluatePriceGroup] }

        # @!attribute external_price_id
        #   The external ID of the price
        #
        #   @return [String, nil]
        optional :external_price_id, String, nil?: true

        # @!attribute inline_price_index
        #   The index of the inline price
        #
        #   @return [Integer, nil]
        optional :inline_price_index, Integer, nil?: true

        # @!attribute price_id
        #   The ID of the price
        #
        #   @return [String, nil]
        optional :price_id, String, nil?: true

        # @!method initialize(currency:, price_groups:, external_price_id: nil, inline_price_index: nil, price_id: nil)
        #   @param currency [String] The currency of the price
        #
        #   @param price_groups [Array<Orb::Models::EvaluatePriceGroup>] The computed price groups associated with input price.
        #
        #   @param external_price_id [String, nil] The external ID of the price
        #
        #   @param inline_price_index [Integer, nil] The index of the inline price
        #
        #   @param price_id [String, nil] The ID of the price
      end
    end
  end
end
