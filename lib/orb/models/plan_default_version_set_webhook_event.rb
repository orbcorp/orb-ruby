# frozen_string_literal: true

module Orb
  module Models
    class PlanDefaultVersionSetWebhookEvent < Orb::Internal::Type::BaseModel
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
      #   @return [Orb::Models::PlanDefaultVersionSetWebhookEvent::Plan]
      required :plan, -> { Orb::PlanDefaultVersionSetWebhookEvent::Plan }

      # @!attribute properties
      #
      #   @return [Orb::Models::PlanDefaultVersionSetWebhookEvent::Properties]
      required :properties, -> { Orb::PlanDefaultVersionSetWebhookEvent::Properties }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::PlanDefaultVersionSetWebhookEvent::Type]
      required :type, enum: -> { Orb::PlanDefaultVersionSetWebhookEvent::Type }

      # @!method initialize(id:, created_at:, plan:, properties:, type:)
      #   Issued when a plan's default version is set.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param plan [Orb::Models::PlanDefaultVersionSetWebhookEvent::Plan]
      #
      #   @param properties [Orb::Models::PlanDefaultVersionSetWebhookEvent::Properties]
      #
      #   @param type [Symbol, Orb::Models::PlanDefaultVersionSetWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::PlanDefaultVersionSetWebhookEvent#plan
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
        #   {Orb::Models::PlanDefaultVersionSetWebhookEvent::Plan} for more details.
        #
        #   @param id [String, nil]
        #
        #   @param external_plan_id [String, nil] An optional user-defined ID for this plan resource, used throughout the system a
        #
        #   @param name [String, nil]
      end

      # @see Orb::Models::PlanDefaultVersionSetWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute new_default_version_number
        #
        #   @return [Integer]
        required :new_default_version_number, Integer

        # @!attribute previous_default_version_number
        #
        #   @return [Integer]
        required :previous_default_version_number, Integer

        # @!method initialize(new_default_version_number:, previous_default_version_number:)
        #   @param new_default_version_number [Integer]
        #   @param previous_default_version_number [Integer]
      end

      # The event this payload describes.
      #
      # @see Orb::Models::PlanDefaultVersionSetWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        PLAN_DEFAULT_VERSION_SET = :"plan.default_version_set"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
