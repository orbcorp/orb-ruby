# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Subscriptions#fetch_schedule
    class SubscriptionFetchScheduleResponse < Orb::Internal::Type::BaseModel
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
      #   @return [Orb::Models::SubscriptionFetchScheduleResponse::Plan, nil]
      required :plan, -> { Orb::Models::SubscriptionFetchScheduleResponse::Plan }, nil?: true

      # @!attribute start_date
      #
      #   @return [Time]
      required :start_date, Time

      # @!method initialize(created_at:, end_date:, plan:, start_date:)
      #   @param created_at [Time]
      #   @param end_date [Time, nil]
      #   @param plan [Orb::Models::SubscriptionFetchScheduleResponse::Plan, nil]
      #   @param start_date [Time]

      # @see Orb::Models::SubscriptionFetchScheduleResponse#plan
      class Plan < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        required :id, String, nil?: true

        # @!attribute external_plan_id
        #   An optional user-defined ID for this plan resource, used throughout the system
        #   as an alias for this Plan. Use this field to identify a plan by an existing
        #   identifier in your system.
        #
        #   @return [String, nil]
        required :external_plan_id, String, nil?: true

        # @!attribute name
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!method initialize(id:, external_plan_id:, name:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::SubscriptionFetchScheduleResponse::Plan} for more details.
        #
        #   @param id [String, nil]
        #
        #   @param external_plan_id [String, nil] An optional user-defined ID for this plan resource, used throughout the system a
        #
        #   @param name [String, nil]
      end
    end
  end
end
