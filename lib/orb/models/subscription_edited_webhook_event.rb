# frozen_string_literal: true

module Orb
  module Models
    class SubscriptionEditedWebhookEvent < Orb::Internal::Type::BaseModel
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

      # @!attribute properties
      #
      #   @return [Orb::Models::SubscriptionEditedWebhookEvent::Properties]
      required :properties, -> { Orb::SubscriptionEditedWebhookEvent::Properties }

      # @!attribute subscription
      #   A [subscription](/core-concepts#subscription) represents the purchase of a plan
      #   by a customer.
      #
      #   By default, subscriptions begin on the day that they're created and renew
      #   automatically for each billing cycle at the cadence that's configured in the
      #   plan definition.
      #
      #   Subscriptions also default to **beginning of month alignment**, which means the
      #   first invoice issued for the subscription will have pro-rated charges between
      #   the `start_date` and the first of the following month. Subsequent billing
      #   periods will always start and end on a month boundary (e.g. subsequent month
      #   starts for monthly billing).
      #
      #   Depending on the plan configuration, any _flat_ recurring fees will be billed
      #   either at the beginning (in-advance) or end (in-arrears) of each billing cycle.
      #   Plans default to **in-advance billing**. Usage-based fees are billed in arrears
      #   as usage is accumulated. In the normal course of events, you can expect an
      #   invoice to contain usage-based charges for the previous period, and a recurring
      #   fee for the following period.
      #
      #   @return [Orb::Models::Subscription]
      required :subscription, -> { Orb::Subscription }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::SubscriptionEditedWebhookEvent::Type]
      required :type, enum: -> { Orb::SubscriptionEditedWebhookEvent::Type }

      # @!method initialize(id:, created_at:, properties:, subscription:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::SubscriptionEditedWebhookEvent} for more details.
      #
      #   Issued when a subscription is updated.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param properties [Orb::Models::SubscriptionEditedWebhookEvent::Properties]
      #
      #   @param subscription [Orb::Models::Subscription] A [subscription](/core-concepts#subscription) represents the purchase of a plan
      #
      #   @param type [Symbol, Orb::Models::SubscriptionEditedWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::SubscriptionEditedWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute previous_attributes
        #
        #   @return [Orb::Models::SubscriptionEditedWebhookEvent::Properties::PreviousAttributes]
        required :previous_attributes, -> { Orb::SubscriptionEditedWebhookEvent::Properties::PreviousAttributes }

        # @!method initialize(previous_attributes:)
        #   @param previous_attributes [Orb::Models::SubscriptionEditedWebhookEvent::Properties::PreviousAttributes]

        # @see Orb::Models::SubscriptionEditedWebhookEvent::Properties#previous_attributes
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

      # The event this payload describes.
      #
      # @see Orb::Models::SubscriptionEditedWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        SUBSCRIPTION_EDITED = :"subscription.edited"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
