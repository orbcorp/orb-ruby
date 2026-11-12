# frozen_string_literal: true

module Orb
  module Models
    class MigrationSubscription < Orb::Internal::Type::BaseModel
      # @!attribute customer
      #
      #   @return [Orb::Models::CustomerMinified]
      required :customer, -> { Orb::CustomerMinified }

      # @!attribute effective_date
      #   When the subscription is migrated to the target plan version. Null unless the
      #   status is 'scheduled' or 'completed'.
      #
      #   @return [Time, nil]
      required :effective_date, Time, nil?: true

      # @!attribute failure_reason
      #   Why the subscription could not be migrated. Null unless the status is 'failed'.
      #
      #   @return [String, nil]
      required :failure_reason, String, nil?: true

      # @!attribute status
      #   The subscription's status in the migration: 'scheduling' until the migration has
      #   processed it, 'scheduled' when it will be migrated to the target version at
      #   `effective_date`, 'completed' once it has been migrated, 'skipped' when the
      #   migration left it unchanged, or 'failed' when it could not be migrated (see
      #   `failure_reason`).
      #
      #   @return [Symbol, Orb::Models::MigrationSubscription::Status]
      required :status, enum: -> { Orb::MigrationSubscription::Status }

      # @!attribute subscription_id
      #   The ID of the subscription.
      #
      #   @return [String]
      required :subscription_id, String

      # @!method initialize(customer:, effective_date:, failure_reason:, status:, subscription_id:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::MigrationSubscription} for more details.
      #
      #   @param customer [Orb::Models::CustomerMinified]
      #
      #   @param effective_date [Time, nil] When the subscription is migrated to the target plan version. Null unless the st
      #
      #   @param failure_reason [String, nil] Why the subscription could not be migrated. Null unless the status is 'failed'.
      #
      #   @param status [Symbol, Orb::Models::MigrationSubscription::Status] The subscription's status in the migration: 'scheduling' until the migration has
      #
      #   @param subscription_id [String] The ID of the subscription.

      # The subscription's status in the migration: 'scheduling' until the migration has
      # processed it, 'scheduled' when it will be migrated to the target version at
      # `effective_date`, 'completed' once it has been migrated, 'skipped' when the
      # migration left it unchanged, or 'failed' when it could not be migrated (see
      # `failure_reason`).
      #
      # @see Orb::Models::MigrationSubscription#status
      module Status
        extend Orb::Internal::Type::Enum

        SCHEDULING = :scheduling
        SCHEDULED = :scheduled
        COMPLETED = :completed
        SKIPPED = :skipped
        FAILED = :failed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
