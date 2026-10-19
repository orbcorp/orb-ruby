# frozen_string_literal: true

module Orb
  module Models
    class PlanCreatedWebhookEvent < Orb::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of this webhook event.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   The time at which this event was created, to the second.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute plan
      #
      #   @return [Orb::Models::PlanCreatedWebhookEvent::Plan]
      required :plan, -> { Orb::PlanCreatedWebhookEvent::Plan }

      # @!attribute properties
      #
      #   @return [Object]
      required :properties, Orb::Internal::Type::Unknown

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::PlanCreatedWebhookEvent::Type]
      required :type, enum: -> { Orb::PlanCreatedWebhookEvent::Type }

      # @!method initialize(id:, created_at:, plan:, properties:, type:)
      #   Issued when a plan is created, or when a draft plan is published.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param plan [Orb::Models::PlanCreatedWebhookEvent::Plan]
      #
      #   @param properties [Object]
      #
      #   @param type [Symbol, Orb::Models::PlanCreatedWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::PlanCreatedWebhookEvent#plan
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
        #   {Orb::Models::PlanCreatedWebhookEvent::Plan} for more details.
        #
        #   @param id [String, nil]
        #
        #   @param external_plan_id [String, nil] An optional user-defined ID for this plan resource, used throughout the system a
        #
        #   @param name [String, nil]
      end

      # The event this payload describes.
      #
      # @see Orb::Models::PlanCreatedWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        PLAN_CREATED = :"plan.created"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
