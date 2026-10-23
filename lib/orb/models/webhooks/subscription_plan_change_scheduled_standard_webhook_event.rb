# frozen_string_literal: true

module Orb
  module Models
    module Webhooks
      class SubscriptionPlanChangeScheduledStandardWebhookEvent < Orb::Internal::Type::BaseModel
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
        #   @return [Symbol, Orb::Models::Webhooks::SubscriptionPlanChangeScheduledStandardWebhookEvent::PayloadStyle]
        required :payload_style,
                 enum: -> { Orb::Webhooks::SubscriptionPlanChangeScheduledStandardWebhookEvent::PayloadStyle }

        # @!attribute properties
        #
        #   @return [Orb::Models::Webhooks::SubscriptionPlanChangeScheduledStandardWebhookEvent::Properties]
        required :properties,
                 -> { Orb::Webhooks::SubscriptionPlanChangeScheduledStandardWebhookEvent::Properties }

        # @!attribute subscription
        #   A subscription's own fields, with its plan and customer as references, as listed
        #   by List subscription summaries and carried in standard webhook payloads. Fetch
        #   the subscription for its price intervals, billing periods, plan phases and other
        #   derived fields.
        #
        #   @return [Orb::Models::Webhooks::SubscriptionPlanChangeScheduledStandardWebhookEvent::Subscription]
        required :subscription,
                 -> { Orb::Webhooks::SubscriptionPlanChangeScheduledStandardWebhookEvent::Subscription }

        # @!attribute type
        #   The event this payload describes.
        #
        #   @return [Symbol, Orb::Models::Webhooks::SubscriptionPlanChangeScheduledStandardWebhookEvent::Type]
        required :type, enum: -> { Orb::Webhooks::SubscriptionPlanChangeScheduledStandardWebhookEvent::Type }

        # @!method initialize(id:, created_at:, payload_style:, properties:, subscription:, type:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Webhooks::SubscriptionPlanChangeScheduledStandardWebhookEvent} for
        #   more details.
        #
        #   Issued when a subscription plan change is scheduled.
        #
        #   @param id [String] The ID of this webhook event.
        #
        #   @param created_at [Time] The time at which this event was created, to the second.
        #
        #   @param payload_style [Symbol, Orb::Models::Webhooks::SubscriptionPlanChangeScheduledStandardWebhookEvent::PayloadStyle] The serialization style this payload was rendered in, as configured on the endpo
        #
        #   @param properties [Orb::Models::Webhooks::SubscriptionPlanChangeScheduledStandardWebhookEvent::Properties]
        #
        #   @param subscription [Orb::Models::Webhooks::SubscriptionPlanChangeScheduledStandardWebhookEvent::Subscription] A subscription's own fields, with its plan and customer as references, as listed
        #
        #   @param type [Symbol, Orb::Models::Webhooks::SubscriptionPlanChangeScheduledStandardWebhookEvent::Type] The event this payload describes.

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        #
        # @see Orb::Models::Webhooks::SubscriptionPlanChangeScheduledStandardWebhookEvent#payload_style
        module PayloadStyle
          extend Orb::Internal::Type::Enum

          EXPANDED = :expanded
          STANDARD = :standard

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Webhooks::SubscriptionPlanChangeScheduledStandardWebhookEvent#properties
        class Properties < Orb::Internal::Type::BaseModel
          # @!attribute change_date
          #
          #   @return [String]
          required :change_date, String

          # @!attribute new_plan_id
          #
          #   @return [String]
          required :new_plan_id, String

          # @!attribute previous_plan_id
          #
          #   @return [String]
          required :previous_plan_id, String

          # @!method initialize(change_date:, new_plan_id:, previous_plan_id:)
          #   @param change_date [String]
          #   @param new_plan_id [String]
          #   @param previous_plan_id [String]
        end

        # @see Orb::Models::Webhooks::SubscriptionPlanChangeScheduledStandardWebhookEvent#subscription
        class Subscription < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute customer
          #
          #   @return [Orb::Models::CustomerMinified]
          required :customer, -> { Orb::CustomerMinified }

          # @!attribute end_date
          #   The date Orb stops billing for this subscription.
          #
          #   @return [Time, nil]
          required :end_date, Time, nil?: true

          # @!attribute metadata
          #   User specified key-value pairs for the resource. If not present, this defaults
          #   to an empty dictionary. Individual keys can be removed by setting the value to
          #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          #   `null`.
          #
          #   @return [Hash{Symbol=>String}]
          required :metadata, Orb::Internal::Type::HashOf[String]

          # @!attribute name
          #   The name of the subscription.
          #
          #   @return [String]
          required :name, String

          # @!attribute plan
          #
          #   @return [Orb::Models::Webhooks::SubscriptionPlanChangeScheduledStandardWebhookEvent::Subscription::Plan, nil]
          required :plan,
                   -> {
                     Orb::Webhooks::SubscriptionPlanChangeScheduledStandardWebhookEvent::Subscription::Plan
                   },
                   nil?: true

          # @!attribute start_date
          #   The date Orb starts billing for this subscription.
          #
          #   @return [Time]
          required :start_date, Time

          # @!attribute status
          #
          #   @return [Symbol, Orb::Models::Webhooks::SubscriptionPlanChangeScheduledStandardWebhookEvent::Subscription::Status]
          required :status,
                   enum: -> { Orb::Webhooks::SubscriptionPlanChangeScheduledStandardWebhookEvent::Subscription::Status }

          # @!method initialize(id:, created_at:, customer:, end_date:, metadata:, name:, plan:, start_date:, status:)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Webhooks::SubscriptionPlanChangeScheduledStandardWebhookEvent::Subscription}
          #   for more details.
          #
          #   A subscription's own fields, with its plan and customer as references, as listed
          #   by List subscription summaries and carried in standard webhook payloads. Fetch
          #   the subscription for its price intervals, billing periods, plan phases and other
          #   derived fields.
          #
          #   @param id [String]
          #
          #   @param created_at [Time]
          #
          #   @param customer [Orb::Models::CustomerMinified]
          #
          #   @param end_date [Time, nil] The date Orb stops billing for this subscription.
          #
          #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
          #
          #   @param name [String] The name of the subscription.
          #
          #   @param plan [Orb::Models::Webhooks::SubscriptionPlanChangeScheduledStandardWebhookEvent::Subscription::Plan, nil]
          #
          #   @param start_date [Time] The date Orb starts billing for this subscription.
          #
          #   @param status [Symbol, Orb::Models::Webhooks::SubscriptionPlanChangeScheduledStandardWebhookEvent::Subscription::Status]

          # @see Orb::Models::Webhooks::SubscriptionPlanChangeScheduledStandardWebhookEvent::Subscription#plan
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
            #   {Orb::Models::Webhooks::SubscriptionPlanChangeScheduledStandardWebhookEvent::Subscription::Plan}
            #   for more details.
            #
            #   @param id [String, nil]
            #
            #   @param external_plan_id [String, nil] An optional user-defined ID for this plan resource, used throughout the system a
            #
            #   @param name [String, nil]
          end

          # @see Orb::Models::Webhooks::SubscriptionPlanChangeScheduledStandardWebhookEvent::Subscription#status
          module Status
            extend Orb::Internal::Type::Enum

            ACTIVE = :active
            ENDED = :ended
            UPCOMING = :upcoming

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # The event this payload describes.
        #
        # @see Orb::Models::Webhooks::SubscriptionPlanChangeScheduledStandardWebhookEvent#type
        module Type
          extend Orb::Internal::Type::Enum

          SUBSCRIPTION_PLAN_CHANGE_SCHEDULED = :"subscription.plan_change_scheduled"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
