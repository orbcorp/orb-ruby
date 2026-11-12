# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Migrations#create
    class MigrationCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute effective_time
      #   When the migration takes effect: 'immediately', 'requested_date' on
      #   `effective_date`, 'start_of_term' or 'end_of_term' for the start or end of each
      #   subscription's current billing period, or 'start_of_invoice' or 'end_of_invoice'
      #   for the start of its current or next invoice.
      #
      #   @return [Symbol, Orb::Models::MigrationCreateParams::EffectiveTime]
      required :effective_time, enum: -> { Orb::MigrationCreateParams::EffectiveTime }

      # @!attribute target_plan_version_number
      #   The plan version to migrate subscriptions to. It can't be a draft version.
      #
      #   @return [Integer]
      required :target_plan_version_number, Integer

      # @!attribute allow_invoice_credit_or_void
      #   When false, a subscription whose migration would void an issued invoice or
      #   create a credit note fails instead.
      #
      #   @return [Boolean, nil]
      optional :allow_invoice_credit_or_void, Orb::Internal::Type::Boolean

      # @!attribute can_defer_billing
      #   When true, an in-arrears price the migration ends mid-cycle bills its final line
      #   item on the next scheduled invoice instead of on its end date.
      #
      #   @return [Boolean, nil]
      optional :can_defer_billing, Orb::Internal::Type::Boolean

      # @!attribute effective_date
      #   The date the migration takes effect, at midnight in each customer's timezone.
      #   Required when `effective_time` is `requested_date`, and not allowed otherwise.
      #
      #   @return [Date, nil]
      optional :effective_date, Date, nil?: true

      # @!attribute excluded_subscription_ids
      #   Leave these subscriptions out. Can't be combined with
      #   `included_subscription_ids`.
      #
      #   @return [Array<String>, nil]
      optional :excluded_subscription_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute external_plan_id
      #   The external ID of the plan whose subscriptions to migrate.
      #
      #   @return [String, nil]
      optional :external_plan_id, String, nil?: true

      # @!attribute in_trial
      #   `true` migrates only subscriptions in a trial, `false` only subscriptions not in
      #   a trial.
      #
      #   @return [Boolean, nil]
      optional :in_trial, Orb::Internal::Type::Boolean, nil?: true

      # @!attribute included_subscription_ids
      #   Migrate only these subscriptions. When set, the filters below are ignored.
      #
      #   @return [Array<String>, nil]
      optional :included_subscription_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute plan_id
      #   The plan whose subscriptions to migrate. Exactly one of `plan_id` and
      #   `external_plan_id` is required.
      #
      #   @return [String, nil]
      optional :plan_id, String, nil?: true

      # @!attribute plan_version_numbers
      #   Migrate only subscriptions currently on these plan versions.
      #
      #   @return [Array<Integer>, nil]
      optional :plan_version_numbers, Orb::Internal::Type::ArrayOf[Integer], nil?: true

      # @!attribute reason
      #   Why the migration was created.
      #
      #   @return [String, nil]
      optional :reason, String, nil?: true

      # @!attribute statuses
      #   Migrate subscriptions with these statuses. Defaults to active subscriptions.
      #
      #   @return [Array<Symbol, Orb::Models::MigrationCreateParams::Status>, nil]
      optional :statuses, -> { Orb::Internal::Type::ArrayOf[enum: Orb::MigrationCreateParams::Status] }

      # @!method initialize(effective_time:, target_plan_version_number:, allow_invoice_credit_or_void: nil, can_defer_billing: nil, effective_date: nil, excluded_subscription_ids: nil, external_plan_id: nil, in_trial: nil, included_subscription_ids: nil, plan_id: nil, plan_version_numbers: nil, reason: nil, statuses: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::MigrationCreateParams} for more details.
      #
      #   @param effective_time [Symbol, Orb::Models::MigrationCreateParams::EffectiveTime] When the migration takes effect: 'immediately', 'requested_date' on `effective_d
      #
      #   @param target_plan_version_number [Integer] The plan version to migrate subscriptions to. It can't be a draft version.
      #
      #   @param allow_invoice_credit_or_void [Boolean] When false, a subscription whose migration would void an issued invoice or creat
      #
      #   @param can_defer_billing [Boolean] When true, an in-arrears price the migration ends mid-cycle bills its final line
      #
      #   @param effective_date [Date, nil] The date the migration takes effect, at midnight in each customer's timezone. Re
      #
      #   @param excluded_subscription_ids [Array<String>, nil] Leave these subscriptions out. Can't be combined with `included_subscription_ids
      #
      #   @param external_plan_id [String, nil] The external ID of the plan whose subscriptions to migrate.
      #
      #   @param in_trial [Boolean, nil] `true` migrates only subscriptions in a trial, `false` only subscriptions not in
      #
      #   @param included_subscription_ids [Array<String>, nil] Migrate only these subscriptions. When set, the filters below are ignored.
      #
      #   @param plan_id [String, nil] The plan whose subscriptions to migrate. Exactly one of `plan_id` and
      #   `external\_
      #
      #   @param plan_version_numbers [Array<Integer>, nil] Migrate only subscriptions currently on these plan versions.
      #
      #   @param reason [String, nil] Why the migration was created.
      #
      #   @param statuses [Array<Symbol, Orb::Models::MigrationCreateParams::Status>] Migrate subscriptions with these statuses. Defaults to active subscriptions.
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      # When the migration takes effect: 'immediately', 'requested_date' on
      # `effective_date`, 'start_of_term' or 'end_of_term' for the start or end of each
      # subscription's current billing period, or 'start_of_invoice' or 'end_of_invoice'
      # for the start of its current or next invoice.
      module EffectiveTime
        extend Orb::Internal::Type::Enum

        IMMEDIATELY = :immediately
        REQUESTED_DATE = :requested_date
        START_OF_TERM = :start_of_term
        END_OF_TERM = :end_of_term
        START_OF_INVOICE = :start_of_invoice
        END_OF_INVOICE = :end_of_invoice

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module Status
        extend Orb::Internal::Type::Enum

        ACTIVE = :active
        UPCOMING = :upcoming

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
