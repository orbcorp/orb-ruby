# frozen_string_literal: true

module Orb
  module Models
    module Webhooks
      class PlanDefaultVersionSetStandardWebhookEvent < Orb::Internal::Type::BaseModel
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

        # @!attribute payload_style
        #   The serialization style this payload was rendered in, as configured on the
        #   endpoint.
        #
        #   @return [Symbol, Orb::Models::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::PayloadStyle]
        required :payload_style,
                 enum: -> { Orb::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::PayloadStyle }

        # @!attribute plan
        #
        #   @return [Orb::Models::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::Plan]
        required :plan, -> { Orb::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::Plan }

        # @!attribute properties
        #
        #   @return [Orb::Models::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::Properties]
        required :properties, -> { Orb::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::Properties }

        # @!attribute type
        #   The event this payload describes.
        #
        #   @return [Symbol, Orb::Models::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::Type]
        required :type, enum: -> { Orb::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::Type }

        # @!method initialize(id:, created_at:, payload_style:, plan:, properties:, type:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Webhooks::PlanDefaultVersionSetStandardWebhookEvent} for more
        #   details.
        #
        #   Issued when a plan's default version is set.
        #
        #   @param id [String] The ID of this webhook event.
        #
        #   @param created_at [Time] The time at which this event was created, to the second.
        #
        #   @param payload_style [Symbol, Orb::Models::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::PayloadStyle] The serialization style this payload was rendered in, as configured on the endpo
        #
        #   @param plan [Orb::Models::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::Plan]
        #
        #   @param properties [Orb::Models::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::Properties]
        #
        #   @param type [Symbol, Orb::Models::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::Type] The event this payload describes.

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        #
        # @see Orb::Models::Webhooks::PlanDefaultVersionSetStandardWebhookEvent#payload_style
        module PayloadStyle
          extend Orb::Internal::Type::Enum

          EXPANDED = :expanded
          STANDARD = :standard

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Webhooks::PlanDefaultVersionSetStandardWebhookEvent#plan
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
          #   {Orb::Models::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::Plan} for
          #   more details.
          #
          #   @param id [String, nil]
          #
          #   @param external_plan_id [String, nil] An optional user-defined ID for this plan resource, used throughout the system a
          #
          #   @param name [String, nil]
        end

        # @see Orb::Models::Webhooks::PlanDefaultVersionSetStandardWebhookEvent#properties
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
        # @see Orb::Models::Webhooks::PlanDefaultVersionSetStandardWebhookEvent#type
        module Type
          extend Orb::Internal::Type::Enum

          PLAN_DEFAULT_VERSION_SET = :"plan.default_version_set"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
