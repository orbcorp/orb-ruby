require "orb/model"
module Orb
  module Models
    class SubscriptionFetchScheduleResponse < Orb::Model
      class Plan < Orb::Model
        # @!attribute [rw] id
        required :id, String
        # @!attribute [rw] external_plan_id
        required :external_plan_id, String
        # @!attribute [rw] name_
        required :name_, String
      end
      # @!attribute [rw] end_date
      required :end_date, String
      # @!attribute [rw] plan
      required :plan, Plan
      # @!attribute [rw] start_date
      required :start_date, String
    end
  end
end
