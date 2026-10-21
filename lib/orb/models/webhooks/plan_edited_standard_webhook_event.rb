# frozen_string_literal: true

module Orb
  module Models
    module Webhooks
      class PlanEditedStandardWebhookEvent < Orb::Internal::Type::BaseModel
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
        #   @return [Symbol, Orb::Models::Webhooks::PlanEditedStandardWebhookEvent::PayloadStyle]
        required :payload_style, enum: -> { Orb::Webhooks::PlanEditedStandardWebhookEvent::PayloadStyle }

        # @!attribute plan
        #   The [Plan](/core-concepts#plan-and-price) resource represents a plan that can be
        #   subscribed to by a customer. Plans define the billing behavior of the
        #   subscription. You can see more about how to configure prices in the
        #   [Price resource](/reference/price).
        #
        #   @return [Orb::Models::Plan]
        required :plan, -> { Orb::Plan }

        # @!attribute properties
        #
        #   @return [Orb::Models::Webhooks::PlanEditedStandardWebhookEvent::Properties]
        required :properties, -> { Orb::Webhooks::PlanEditedStandardWebhookEvent::Properties }

        # @!attribute type
        #   The event this payload describes.
        #
        #   @return [Symbol, Orb::Models::Webhooks::PlanEditedStandardWebhookEvent::Type]
        required :type, enum: -> { Orb::Webhooks::PlanEditedStandardWebhookEvent::Type }

        # @!method initialize(id:, created_at:, payload_style:, plan:, properties:, type:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Webhooks::PlanEditedStandardWebhookEvent} for more details.
        #
        #   Issued when a plan's name, description, external plan ID, metadata or status is
        #   edited.
        #
        #   @param id [String] The ID of this webhook event.
        #
        #   @param created_at [Time] The time at which this event was created, to the second.
        #
        #   @param payload_style [Symbol, Orb::Models::Webhooks::PlanEditedStandardWebhookEvent::PayloadStyle] The serialization style this payload was rendered in, as configured on the endpo
        #
        #   @param plan [Orb::Models::Plan] The [Plan](/core-concepts#plan-and-price) resource represents a plan that can be
        #
        #   @param properties [Orb::Models::Webhooks::PlanEditedStandardWebhookEvent::Properties]
        #
        #   @param type [Symbol, Orb::Models::Webhooks::PlanEditedStandardWebhookEvent::Type] The event this payload describes.

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        #
        # @see Orb::Models::Webhooks::PlanEditedStandardWebhookEvent#payload_style
        module PayloadStyle
          extend Orb::Internal::Type::Enum

          EXPANDED = :expanded
          STANDARD = :standard

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Webhooks::PlanEditedStandardWebhookEvent#properties
        class Properties < Orb::Internal::Type::BaseModel
          # @!attribute previous_attributes
          #   metadata values are non-null on the wire, as on the price event.
          #
          #   @return [Orb::Models::Webhooks::PlanEditedStandardWebhookEvent::Properties::PreviousAttributes]
          required :previous_attributes,
                   -> { Orb::Webhooks::PlanEditedStandardWebhookEvent::Properties::PreviousAttributes }

          # @!method initialize(previous_attributes:)
          #   @param previous_attributes [Orb::Models::Webhooks::PlanEditedStandardWebhookEvent::Properties::PreviousAttributes] metadata values are non-null on the wire, as on the price event.

          # @see Orb::Models::Webhooks::PlanEditedStandardWebhookEvent::Properties#previous_attributes
          class PreviousAttributes < Orb::Internal::Type::BaseModel
            # @!attribute description
            #
            #   @return [String, nil]
            optional :description, String, nil?: true

            # @!attribute external_plan_id
            #
            #   @return [String, nil]
            optional :external_plan_id, String, nil?: true

            # @!attribute metadata
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String], nil?: true

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!attribute status
            #
            #   @return [Symbol, Orb::Models::Webhooks::PlanEditedStandardWebhookEvent::Properties::PreviousAttributes::Status, nil]
            optional :status,
                     enum: -> {
                       Orb::Webhooks::PlanEditedStandardWebhookEvent::Properties::PreviousAttributes::Status
                     },
                     nil?: true

            # @!method initialize(description: nil, external_plan_id: nil, metadata: nil, name: nil, status: nil)
            #   metadata values are non-null on the wire, as on the price event.
            #
            #   @param description [String, nil]
            #   @param external_plan_id [String, nil]
            #   @param metadata [Hash{Symbol=>String}, nil]
            #   @param name [String, nil]
            #   @param status [Symbol, Orb::Models::Webhooks::PlanEditedStandardWebhookEvent::Properties::PreviousAttributes::Status, nil]

            # @see Orb::Models::Webhooks::PlanEditedStandardWebhookEvent::Properties::PreviousAttributes#status
            module Status
              extend Orb::Internal::Type::Enum

              ACTIVE = :active
              ARCHIVED = :archived
              DRAFT = :draft

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        # The event this payload describes.
        #
        # @see Orb::Models::Webhooks::PlanEditedStandardWebhookEvent#type
        module Type
          extend Orb::Internal::Type::Enum

          PLAN_EDITED = :"plan.edited"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
