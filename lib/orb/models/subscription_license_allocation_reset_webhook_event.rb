# frozen_string_literal: true

module Orb
  module Models
    class SubscriptionLicenseAllocationResetWebhookEvent < Orb::Internal::Type::BaseModel
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
      #   Fires at the start of a billing period when license allocations are replenished.
      #   Allocations sharing a billing period are batched into one message.
      #
      #   @return [Orb::Models::SubscriptionLicenseAllocationResetWebhookEvent::Properties]
      required :properties, -> { Orb::SubscriptionLicenseAllocationResetWebhookEvent::Properties }

      # @!attribute subscription
      #   A lightweight subscription representation for webhook payloads.
      #
      #   This avoids the expensive to_subscription_params() call required for full
      #   serialization.
      #
      #   @return [Orb::Models::SubscriptionLicenseAllocationResetWebhookEvent::Subscription]
      required :subscription, -> { Orb::SubscriptionLicenseAllocationResetWebhookEvent::Subscription }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::SubscriptionLicenseAllocationResetWebhookEvent::Type]
      required :type, enum: -> { Orb::SubscriptionLicenseAllocationResetWebhookEvent::Type }

      # @!method initialize(id:, created_at:, properties:, subscription:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::SubscriptionLicenseAllocationResetWebhookEvent} for more details.
      #
      #   Issued when a license allocation is reset.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param properties [Orb::Models::SubscriptionLicenseAllocationResetWebhookEvent::Properties] Fires at the start of a billing period when license allocations are replenished.
      #
      #   @param subscription [Orb::Models::SubscriptionLicenseAllocationResetWebhookEvent::Subscription] A lightweight subscription representation for webhook payloads.
      #
      #   @param type [Symbol, Orb::Models::SubscriptionLicenseAllocationResetWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::SubscriptionLicenseAllocationResetWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute reset_allocations
        #
        #   @return [Array<Orb::Models::SubscriptionLicenseAllocationResetWebhookEvent::Properties::ResetAllocation>]
        required :reset_allocations,
                 -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionLicenseAllocationResetWebhookEvent::Properties::ResetAllocation] }

        # @!attribute timeframe_end
        #
        #   @return [Time]
        required :timeframe_end, Time

        # @!attribute timeframe_start
        #
        #   @return [Time]
        required :timeframe_start, Time

        # @!method initialize(reset_allocations:, timeframe_end:, timeframe_start:)
        #   Fires at the start of a billing period when license allocations are replenished.
        #   Allocations sharing a billing period are batched into one message.
        #
        #   @param reset_allocations [Array<Orb::Models::SubscriptionLicenseAllocationResetWebhookEvent::Properties::ResetAllocation>]
        #   @param timeframe_end [Time]
        #   @param timeframe_start [Time]

        class ResetAllocation < Orb::Internal::Type::BaseModel
          # @!attribute allocation_amount
          #
          #   @return [String]
          required :allocation_amount, String

          # @!attribute license_type_id
          #
          #   @return [String]
          required :license_type_id, String

          # @!attribute pricing_unit_id
          #
          #   @return [String]
          required :pricing_unit_id, String

          # @!method initialize(allocation_amount:, license_type_id:, pricing_unit_id:)
          #   A license allocation replenished at the start of a billing period.
          #
          #   @param allocation_amount [String]
          #   @param license_type_id [String]
          #   @param pricing_unit_id [String]
        end
      end

      # @see Orb::Models::SubscriptionLicenseAllocationResetWebhookEvent#subscription
      class Subscription < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute customer
        #
        #   @return [Orb::Models::CustomerMinified]
        required :customer, -> { Orb::CustomerMinified }

        # @!attribute end_date
        #
        #   @return [Time, nil]
        required :end_date, Time, nil?: true

        # @!attribute plan
        #
        #   @return [Orb::Models::SubscriptionLicenseAllocationResetWebhookEvent::Subscription::Plan, nil]
        required :plan,
                 -> {
                   Orb::SubscriptionLicenseAllocationResetWebhookEvent::Subscription::Plan
                 },
                 nil?: true

        # @!attribute start_date
        #
        #   @return [Time]
        required :start_date, Time

        # @!attribute status
        #
        #   @return [Symbol, Orb::Models::SubscriptionLicenseAllocationResetWebhookEvent::Subscription::Status]
        required :status, enum: -> { Orb::SubscriptionLicenseAllocationResetWebhookEvent::Subscription::Status }

        # @!method initialize(id:, customer:, end_date:, plan:, start_date:, status:)
        #   A lightweight subscription representation for webhook payloads.
        #
        #   This avoids the expensive to_subscription_params() call required for full
        #   serialization.
        #
        #   @param id [String]
        #   @param customer [Orb::Models::CustomerMinified]
        #   @param end_date [Time, nil]
        #   @param plan [Orb::Models::SubscriptionLicenseAllocationResetWebhookEvent::Subscription::Plan, nil]
        #   @param start_date [Time]
        #   @param status [Symbol, Orb::Models::SubscriptionLicenseAllocationResetWebhookEvent::Subscription::Status]

        # @see Orb::Models::SubscriptionLicenseAllocationResetWebhookEvent::Subscription#plan
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
          #   {Orb::Models::SubscriptionLicenseAllocationResetWebhookEvent::Subscription::Plan}
          #   for more details.
          #
          #   @param id [String, nil]
          #
          #   @param external_plan_id [String, nil] An optional user-defined ID for this plan resource, used throughout the system a
          #
          #   @param name [String, nil]
        end

        # @see Orb::Models::SubscriptionLicenseAllocationResetWebhookEvent::Subscription#status
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
      # @see Orb::Models::SubscriptionLicenseAllocationResetWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        SUBSCRIPTION_LICENSE_ALLOCATION_RESET = :"subscription.license_allocation_reset"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
