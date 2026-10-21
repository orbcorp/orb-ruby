# frozen_string_literal: true

module Orb
  module Models
    module Webhooks
      class SubscriptionEditedStandardWebhookEvent < Orb::Internal::Type::BaseModel
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
        #   @return [Symbol, Orb::Models::Webhooks::SubscriptionEditedStandardWebhookEvent::PayloadStyle]
        required :payload_style, enum: -> { Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::PayloadStyle }

        # @!attribute properties
        #
        #   @return [Orb::Models::Webhooks::SubscriptionEditedStandardWebhookEvent::Properties]
        required :properties, -> { Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Properties }

        # @!attribute subscription
        #   The subscription in a standard webhook payload: the fields readable without
        #   to_subscription_params(), which every interval, billing period and plan phase
        #   depends on.
        #
        #   @return [Orb::Models::Webhooks::SubscriptionEditedStandardWebhookEvent::Subscription]
        required :subscription, -> { Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Subscription }

        # @!attribute type
        #   The event this payload describes.
        #
        #   @return [Symbol, Orb::Models::Webhooks::SubscriptionEditedStandardWebhookEvent::Type]
        required :type, enum: -> { Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Type }

        # @!method initialize(id:, created_at:, payload_style:, properties:, subscription:, type:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Webhooks::SubscriptionEditedStandardWebhookEvent} for more
        #   details.
        #
        #   Issued when a subscription is updated.
        #
        #   @param id [String] The ID of this webhook event.
        #
        #   @param created_at [Time] The time at which this event was created, to the second.
        #
        #   @param payload_style [Symbol, Orb::Models::Webhooks::SubscriptionEditedStandardWebhookEvent::PayloadStyle] The serialization style this payload was rendered in, as configured on the endpo
        #
        #   @param properties [Orb::Models::Webhooks::SubscriptionEditedStandardWebhookEvent::Properties]
        #
        #   @param subscription [Orb::Models::Webhooks::SubscriptionEditedStandardWebhookEvent::Subscription] The subscription in a standard webhook payload: the fields readable without
        #
        #   @param type [Symbol, Orb::Models::Webhooks::SubscriptionEditedStandardWebhookEvent::Type] The event this payload describes.

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        #
        # @see Orb::Models::Webhooks::SubscriptionEditedStandardWebhookEvent#payload_style
        module PayloadStyle
          extend Orb::Internal::Type::Enum

          EXPANDED = :expanded
          STANDARD = :standard

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Webhooks::SubscriptionEditedStandardWebhookEvent#properties
        class Properties < Orb::Internal::Type::BaseModel
          # @!attribute previous_attributes
          #
          #   @return [Orb::Models::Webhooks::SubscriptionEditedStandardWebhookEvent::Properties::PreviousAttributes]
          required :previous_attributes,
                   -> { Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Properties::PreviousAttributes }

          # @!method initialize(previous_attributes:)
          #   @param previous_attributes [Orb::Models::Webhooks::SubscriptionEditedStandardWebhookEvent::Properties::PreviousAttributes]

          # @see Orb::Models::Webhooks::SubscriptionEditedStandardWebhookEvent::Properties#previous_attributes
          class PreviousAttributes < Orb::Internal::Type::BaseModel
            # @!attribute auto_collection
            #
            #   @return [Boolean, nil]
            optional :auto_collection, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute auto_issuance
            #
            #   @return [Boolean, nil]
            optional :auto_issuance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute default_invoice_memo
            #
            #   @return [String, nil]
            optional :default_invoice_memo, String, nil?: true

            # @!attribute invoicing_threshold
            #
            #   @return [String, nil]
            optional :invoicing_threshold, String, nil?: true

            # @!attribute metadata
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String], nil?: true

            # @!attribute net_terms
            #
            #   @return [Integer, nil]
            optional :net_terms, Integer, nil?: true

            # @!method initialize(auto_collection: nil, auto_issuance: nil, default_invoice_memo: nil, invoicing_threshold: nil, metadata: nil, net_terms: nil)
            #   @param auto_collection [Boolean, nil]
            #   @param auto_issuance [Boolean, nil]
            #   @param default_invoice_memo [String, nil]
            #   @param invoicing_threshold [String, nil]
            #   @param metadata [Hash{Symbol=>String}, nil]
            #   @param net_terms [Integer, nil]
          end
        end

        # @see Orb::Models::Webhooks::SubscriptionEditedStandardWebhookEvent#subscription
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
          #   @return [Orb::Models::Webhooks::SubscriptionEditedStandardWebhookEvent::Subscription::Plan, nil]
          required :plan,
                   -> { Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Subscription::Plan },
                   nil?: true

          # @!attribute start_date
          #   The date Orb starts billing for this subscription.
          #
          #   @return [Time]
          required :start_date, Time

          # @!attribute status
          #
          #   @return [Symbol, Orb::Models::Webhooks::SubscriptionEditedStandardWebhookEvent::Subscription::Status]
          required :status, enum: -> { Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Subscription::Status }

          # @!method initialize(id:, created_at:, customer:, end_date:, metadata:, name:, plan:, start_date:, status:)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Webhooks::SubscriptionEditedStandardWebhookEvent::Subscription}
          #   for more details.
          #
          #   The subscription in a standard webhook payload: the fields readable without
          #   to_subscription_params(), which every interval, billing period and plan phase
          #   depends on.
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
          #   @param plan [Orb::Models::Webhooks::SubscriptionEditedStandardWebhookEvent::Subscription::Plan, nil]
          #
          #   @param start_date [Time] The date Orb starts billing for this subscription.
          #
          #   @param status [Symbol, Orb::Models::Webhooks::SubscriptionEditedStandardWebhookEvent::Subscription::Status]

          # @see Orb::Models::Webhooks::SubscriptionEditedStandardWebhookEvent::Subscription#plan
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
            #   {Orb::Models::Webhooks::SubscriptionEditedStandardWebhookEvent::Subscription::Plan}
            #   for more details.
            #
            #   @param id [String, nil]
            #
            #   @param external_plan_id [String, nil] An optional user-defined ID for this plan resource, used throughout the system a
            #
            #   @param name [String, nil]
          end

          # @see Orb::Models::Webhooks::SubscriptionEditedStandardWebhookEvent::Subscription#status
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
        # @see Orb::Models::Webhooks::SubscriptionEditedStandardWebhookEvent#type
        module Type
          extend Orb::Internal::Type::Enum

          SUBSCRIPTION_EDITED = :"subscription.edited"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
