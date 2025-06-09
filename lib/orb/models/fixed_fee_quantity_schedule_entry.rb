# frozen_string_literal: true

module Orb
  module Models
    class FixedFeeQuantityScheduleEntry < Orb::Internal::Type::BaseModel
      # @!attribute end_date
      #
      #   @return [Time, nil]
      required :end_date, Time, nil?: true

      # @!attribute price_id
      #
      #   @return [String]
      required :price_id, String

      # @!attribute quantity
      #
      #   @return [Float]
      required :quantity, Float

      # @!attribute start_date
      #
      #   @return [Time]
      required :start_date, Time

      # @!method initialize(end_date:, price_id:, quantity:, start_date:)
      #   @param end_date [Time, nil]
      #   @param price_id [String]
      #   @param quantity [Float]
      #   @param start_date [Time]
    end
  end
end
