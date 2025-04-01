# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Subscriptions#fetch_schedule
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
      #   @return [Orb::Models::SubscriptionFetchScheduleResponse::Plan]
      required :plan, -> { Orb::Models::SubscriptionFetchScheduleResponse::Plan }

      # @!attribute start_date
      #
      #   @return [Time]
      required :start_date, Time

      # @!parse
      #   # @param created_at [Time]
      #   # @param end_date [Time, nil]
      #   # @param plan [Orb::Models::SubscriptionFetchScheduleResponse::Plan]
      #   # @param start_date [Time]
      #   #
      #   def initialize(created_at:, end_date:, plan:, start_date:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void

      # @see Orb::Models::SubscriptionFetchScheduleResponse#plan
      class Plan < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        required :id, String, nil?: true

        # @!attribute external_plan_id
        #   An optional user-defined ID for this plan resource, used throughout the system
        #     as an alias for this Plan. Use this field to identify a plan by an existing
        #     identifier in your system.
        #
        #   @return [String, nil]
        required :external_plan_id, String, nil?: true

        # @!attribute name
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!parse
        #   # @param id [String, nil]
        #   # @param external_plan_id [String, nil]
        #   # @param name [String, nil]
        #   #
        #   def initialize(id:, external_plan_id:, name:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end
    end
  end
end
