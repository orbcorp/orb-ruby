# frozen_string_literal: true

module Orb
  module Models
    class SubscriptionTrialInfoModel < Orb::BaseModel
      # @!attribute end_date
      #
      #   @return [Time, nil]
      required :end_date, Time, nil?: true

      # @!parse
      #   # @param end_date [Time, nil]
      #   #
      #   def initialize(end_date:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
