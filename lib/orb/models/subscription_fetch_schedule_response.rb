# frozen_string_literal: true

module Orb
  module Models
    class SubscriptionFetchScheduleResponse < Orb::BaseModel
      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute end_date
      #
      #   @return [Time, nil]
      required :end_date, Time, nil?: true

      # @!attribute plan
      #
      #   @return [Orb::Models::PlanMinifiedModel]
      required :plan, -> { Orb::Models::PlanMinifiedModel }

      # @!attribute start_date
      #
      #   @return [Time]
      required :start_date, Time

      # @!parse
      #   # @param created_at [Time]
      #   # @param end_date [Time, nil]
      #   # @param plan [Orb::Models::PlanMinifiedModel]
      #   # @param start_date [Time]
      #   #
      #   def initialize(created_at:, end_date:, plan:, start_date:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
