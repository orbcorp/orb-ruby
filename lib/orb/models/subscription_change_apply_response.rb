# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::SubscriptionChanges#apply
    class SubscriptionChangeApplyResponse < Orb::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute change_type
      #   The type of change (e.g., 'schedule_plan_change', 'create_subscription').
      #
      #   @return [String]
      required :change_type, String

      # @!attribute expiration_time
      #   Subscription change will be cancelled at this time and can no longer be applied.
      #
      #   @return [Time]
      required :expiration_time, Time

      # @!attribute status
      #
      #   @return [Symbol, Orb::Models::SubscriptionChangeApplyResponse::Status]
      required :status, enum: -> { Orb::Models::SubscriptionChangeApplyResponse::Status }

      # @!attribute subscription
      #
      #   @return [Orb::Models::MutatedSubscription, nil]
      required :subscription, -> { Orb::MutatedSubscription }, nil?: true

      # @!attribute applied_at
      #   When this change was applied.
      #
      #   @return [Time, nil]
      optional :applied_at, Time, nil?: true

      # @!attribute billing_cycle_alignment
      #   Billing cycle alignment for plan changes.
      #
      #   @return [String, nil]
      optional :billing_cycle_alignment, String, nil?: true

      # @!attribute cancelled_at
      #   When this change was cancelled.
      #
      #   @return [Time, nil]
      optional :cancelled_at, Time, nil?: true

      # @!attribute change_option
      #   How the change is scheduled (e.g., 'immediate', 'end_of_subscription_term',
      #   'requested_date').
      #
      #   @return [String, nil]
      optional :change_option, String, nil?: true

      # @!attribute effective_date
      #   When this change will take effect.
      #
      #   @return [Time, nil]
      optional :effective_date, Time, nil?: true

      # @!attribute plan_id
      #   The target plan ID for plan changes.
      #
      #   @return [String, nil]
      optional :plan_id, String, nil?: true

      # @!method initialize(id:, change_type:, expiration_time:, status:, subscription:, applied_at: nil, billing_cycle_alignment: nil, cancelled_at: nil, change_option: nil, effective_date: nil, plan_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::SubscriptionChangeApplyResponse} for more details.
      #
      #   A subscription change represents a desired new subscription / pending change to
      #   an existing subscription. It is a way to first preview the effects on the
      #   subscription as well as any changes/creation of invoices (see
      #   `subscription.changed_resources`).
      #
      #   @param id [String]
      #
      #   @param change_type [String] The type of change (e.g., 'schedule_plan_change', 'create_subscription').
      #
      #   @param expiration_time [Time] Subscription change will be cancelled at this time and can no longer be applied.
      #
      #   @param status [Symbol, Orb::Models::SubscriptionChangeApplyResponse::Status]
      #
      #   @param subscription [Orb::Models::MutatedSubscription, nil]
      #
      #   @param applied_at [Time, nil] When this change was applied.
      #
      #   @param billing_cycle_alignment [String, nil] Billing cycle alignment for plan changes.
      #
      #   @param cancelled_at [Time, nil] When this change was cancelled.
      #
      #   @param change_option [String, nil] How the change is scheduled (e.g., 'immediate', 'end_of_subscription_term', 'req
      #
      #   @param effective_date [Time, nil] When this change will take effect.
      #
      #   @param plan_id [String, nil] The target plan ID for plan changes.

      # @see Orb::Models::SubscriptionChangeApplyResponse#status
      module Status
        extend Orb::Internal::Type::Enum

        PENDING = :pending
        APPLIED = :applied
        CANCELLED = :cancelled

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
