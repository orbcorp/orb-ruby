# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::SubscriptionChanges#retrieve
    class SubscriptionChangeRetrieveResponse < Orb::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute expiration_time
      #   Subscription change will be cancelled at this time and can no longer be applied.
      #
      #   @return [Time]
      required :expiration_time, Time

      # @!attribute status
      #
      #   @return [Symbol, Orb::Models::SubscriptionChangeRetrieveResponse::Status]
      required :status, enum: -> { Orb::Models::SubscriptionChangeRetrieveResponse::Status }

      # @!attribute subscription
      #
      #   @return [Orb::Models::MutatedSubscription, nil]
      required :subscription, -> { Orb::MutatedSubscription }, nil?: true

      # @!attribute applied_at
      #   When this change was applied.
      #
      #   @return [Time, nil]
      optional :applied_at, Time, nil?: true

      # @!attribute cancelled_at
      #   When this change was cancelled.
      #
      #   @return [Time, nil]
      optional :cancelled_at, Time, nil?: true

      # @!method initialize(id:, expiration_time:, status:, subscription:, applied_at: nil, cancelled_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::SubscriptionChangeRetrieveResponse} for more details.
      #
      #   A subscription change represents a desired new subscription / pending change to
      #   an existing subscription. It is a way to first preview the effects on the
      #   subscription as well as any changes/creation of invoices (see
      #   `subscription.changed_resources`).
      #
      #   @param id [String]
      #
      #   @param expiration_time [Time] Subscription change will be cancelled at this time and can no longer be applied.
      #
      #   @param status [Symbol, Orb::Models::SubscriptionChangeRetrieveResponse::Status]
      #
      #   @param subscription [Orb::Models::MutatedSubscription, nil]
      #
      #   @param applied_at [Time, nil] When this change was applied.
      #
      #   @param cancelled_at [Time, nil] When this change was cancelled.

      # @see Orb::Models::SubscriptionChangeRetrieveResponse#status
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
