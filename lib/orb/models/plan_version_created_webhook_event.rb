# frozen_string_literal: true

module Orb
  module Models
    class PlanVersionCreatedWebhookEvent < Orb::Internal::Type::BaseModel
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
      #   @return [Orb::Models::PlanVersionCreatedWebhookEvent::Plan]
      required :plan, -> { Orb::PlanVersionCreatedWebhookEvent::Plan }

      # @!attribute properties
      #
      #   @return [Orb::Models::PlanVersionCreatedWebhookEvent::Properties]
      required :properties, -> { Orb::PlanVersionCreatedWebhookEvent::Properties }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::PlanVersionCreatedWebhookEvent::Type]
      required :type, enum: -> { Orb::PlanVersionCreatedWebhookEvent::Type }

      # @!method initialize(id:, created_at:, plan:, properties:, type:)
      #   Issued when a new plan version is created.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param plan [Orb::Models::PlanVersionCreatedWebhookEvent::Plan]
      #
      #   @param properties [Orb::Models::PlanVersionCreatedWebhookEvent::Properties]
      #
      #   @param type [Symbol, Orb::Models::PlanVersionCreatedWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::PlanVersionCreatedWebhookEvent#plan
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
        #   {Orb::Models::PlanVersionCreatedWebhookEvent::Plan} for more details.
        #
        #   @param id [String, nil]
        #
        #   @param external_plan_id [String, nil] An optional user-defined ID for this plan resource, used throughout the system a
        #
        #   @param name [String, nil]
      end

      # @see Orb::Models::PlanVersionCreatedWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute plan_version_description
        #
        #   @return [String, nil]
        required :plan_version_description, String, nil?: true

        # @!attribute plan_version_number
        #
        #   @return [Integer]
        required :plan_version_number, Integer

        # @!method initialize(plan_version_description:, plan_version_number:)
        #   @param plan_version_description [String, nil]
        #   @param plan_version_number [Integer]
      end

      # The event this payload describes.
      #
      # @see Orb::Models::PlanVersionCreatedWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        PLAN_VERSION_CREATED = :"plan.version_created"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
