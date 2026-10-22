# frozen_string_literal: true

module Orb
  module Models
    module Webhooks
      class SubscriptionStartedStandardWebhookEvent < Orb::Internal::Type::BaseModel
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
        #   @return [Symbol, Orb::Models::Webhooks::SubscriptionStartedStandardWebhookEvent::PayloadStyle]
        required :payload_style, enum: -> { Orb::Webhooks::SubscriptionStartedStandardWebhookEvent::PayloadStyle }

        # @!attribute properties
        #
        #   @return [Object]
        required :properties, Orb::Internal::Type::Unknown

        # @!attribute subscription
        #   The subscription in a standard webhook payload: its own fields, with its plan
        #   and customer as references. Fetch the subscription for its price intervals,
        #   billing periods, plan phases and other derived fields.
        #
        #   @return [Orb::Models::Webhooks::SubscriptionStartedStandardWebhookEvent::Subscription]
        required :subscription, -> { Orb::Webhooks::SubscriptionStartedStandardWebhookEvent::Subscription }

        # @!attribute type
        #   The event this payload describes.
        #
        #   @return [Symbol, Orb::Models::Webhooks::SubscriptionStartedStandardWebhookEvent::Type]
        required :type, enum: -> { Orb::Webhooks::SubscriptionStartedStandardWebhookEvent::Type }

        # @!method initialize(id:, created_at:, payload_style:, properties:, subscription:, type:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Webhooks::SubscriptionStartedStandardWebhookEvent} for more
        #   details.
        #
        #   Issued when a subscription begins.
        #
        #   @param id [String] The ID of this webhook event.
        #
        #   @param created_at [Time] The time at which this event was created, to the second.
        #
        #   @param payload_style [Symbol, Orb::Models::Webhooks::SubscriptionStartedStandardWebhookEvent::PayloadStyle] The serialization style this payload was rendered in, as configured on the endpo
        #
        #   @param properties [Object]
        #
        #   @param subscription [Orb::Models::Webhooks::SubscriptionStartedStandardWebhookEvent::Subscription] The subscription in a standard webhook payload: its own fields, with its plan an
        #
        #   @param type [Symbol, Orb::Models::Webhooks::SubscriptionStartedStandardWebhookEvent::Type] The event this payload describes.

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        #
        # @see Orb::Models::Webhooks::SubscriptionStartedStandardWebhookEvent#payload_style
        module PayloadStyle
          extend Orb::Internal::Type::Enum

          EXPANDED = :expanded
          STANDARD = :standard

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Webhooks::SubscriptionStartedStandardWebhookEvent#subscription
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
          #   @return [Orb::Models::Webhooks::SubscriptionStartedStandardWebhookEvent::Subscription::Plan, nil]
          required :plan,
                   -> { Orb::Webhooks::SubscriptionStartedStandardWebhookEvent::Subscription::Plan },
                   nil?: true

          # @!attribute start_date
          #   The date Orb starts billing for this subscription.
          #
          #   @return [Time]
          required :start_date, Time

          # @!attribute status
          #
          #   @return [Symbol, Orb::Models::Webhooks::SubscriptionStartedStandardWebhookEvent::Subscription::Status]
          required :status,
                   enum: -> { Orb::Webhooks::SubscriptionStartedStandardWebhookEvent::Subscription::Status }

          # @!method initialize(id:, created_at:, customer:, end_date:, metadata:, name:, plan:, start_date:, status:)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Webhooks::SubscriptionStartedStandardWebhookEvent::Subscription}
          #   for more details.
          #
          #   The subscription in a standard webhook payload: its own fields, with its plan
          #   and customer as references. Fetch the subscription for its price intervals,
          #   billing periods, plan phases and other derived fields.
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
          #   @param plan [Orb::Models::Webhooks::SubscriptionStartedStandardWebhookEvent::Subscription::Plan, nil]
          #
          #   @param start_date [Time] The date Orb starts billing for this subscription.
          #
          #   @param status [Symbol, Orb::Models::Webhooks::SubscriptionStartedStandardWebhookEvent::Subscription::Status]

          # @see Orb::Models::Webhooks::SubscriptionStartedStandardWebhookEvent::Subscription#plan
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
            #   {Orb::Models::Webhooks::SubscriptionStartedStandardWebhookEvent::Subscription::Plan}
            #   for more details.
            #
            #   @param id [String, nil]
            #
            #   @param external_plan_id [String, nil] An optional user-defined ID for this plan resource, used throughout the system a
            #
            #   @param name [String, nil]
          end

          # @see Orb::Models::Webhooks::SubscriptionStartedStandardWebhookEvent::Subscription#status
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
        # @see Orb::Models::Webhooks::SubscriptionStartedStandardWebhookEvent#type
        module Type
          extend Orb::Internal::Type::Enum

          SUBSCRIPTION_STARTED = :"subscription.started"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
