# frozen_string_literal: true

module Orb
  module Models
    class SubscriptionTrialInfo < Orb::Internal::Type::BaseModel
      # @!attribute end_date
      #
      #   @return [Time, nil]
      required :end_date, Time, nil?: true

      # @!method initialize(end_date:)
      #   @param end_date [Time, nil]
    end
  end
end
