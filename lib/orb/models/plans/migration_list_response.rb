# frozen_string_literal: true

module Orb
  module Models
    module Plans
      # @see Orb::Resources::Plans::Migrations#list
      class MigrationListResponse < Orb::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for this plan version change.
        #
        #   @return [String]
        required :id, String

        # @!attribute effective_time
        #   When the migration takes effect. Can be a specific date/time, 'end_of_term' when
        #   scheduled to be at the end of the current billing period, or 'end_of_invoice'
        #   when scheduled to be at the start of the next invoice.
        #
        #   @return [Date, Time, Symbol, Orb::Models::Plans::MigrationListResponse::EffectiveTime, nil]
        required :effective_time,
                 union: -> { Orb::Models::Plans::MigrationListResponse::EffectiveTime },
                 nil?: true

        # @!attribute ended_at
        #   When the migration completed or was canceled, or null if it is still in
        #   progress.
        #
        #   @return [Time, nil]
        required :ended_at, Time, nil?: true

        # @!attribute plan_id
        #   The ID of the plan being migrated.
        #
        #   @return [String]
        required :plan_id, String

        # @!attribute started_at
        #   When Orb began migrating the plan's subscriptions. Null if the migration has not
        #   begun, or was canceled before it began.
        #
        #   @return [Time, nil]
        required :started_at, Time, nil?: true

        # @!attribute status
        #   Current status of the migration: 'not_started', 'in_progress', 'completed',
        #   'action_needed', or 'canceled'.
        #
        #   @return [Symbol, Orb::Models::Plans::MigrationListResponse::Status]
        required :status, enum: -> { Orb::Models::Plans::MigrationListResponse::Status }

        # @!method initialize(id:, effective_time:, ended_at:, plan_id:, started_at:, status:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Plans::MigrationListResponse} for more details.
        #
        #   @param id [String] Unique identifier for this plan version change.
        #
        #   @param effective_time [Date, Time, Symbol, Orb::Models::Plans::MigrationListResponse::EffectiveTime, nil] When the migration takes effect. Can be a specific date/time, 'end_of_term' when
        #
        #   @param ended_at [Time, nil] When the migration completed or was canceled, or null if it is still in progress
        #
        #   @param plan_id [String] The ID of the plan being migrated.
        #
        #   @param started_at [Time, nil] When Orb began migrating the plan's subscriptions. Null if the migration has not
        #
        #   @param status [Symbol, Orb::Models::Plans::MigrationListResponse::Status] Current status of the migration: 'not_started', 'in_progress', 'completed', 'act

        # When the migration takes effect. Can be a specific date/time, 'end_of_term' when
        # scheduled to be at the end of the current billing period, or 'end_of_invoice'
        # when scheduled to be at the start of the next invoice.
        #
        # @see Orb::Models::Plans::MigrationListResponse#effective_time
        module EffectiveTime
          extend Orb::Internal::Type::Union

          variant Date

          variant Time

          variant const: -> { Orb::Models::Plans::MigrationListResponse::EffectiveTime::END_OF_TERM }

          variant const: -> { Orb::Models::Plans::MigrationListResponse::EffectiveTime::END_OF_INVOICE }

          # @!method self.variants
          #   @return [Array(Date, Time, Symbol)]

          define_sorbet_constant!(:Variants) do
            T.type_alias { T.any(Date, Time, Orb::Models::Plans::MigrationListResponse::EffectiveTime::TaggedSymbol) }
          end

          # @!group

          END_OF_TERM = :end_of_term
          END_OF_INVOICE = :end_of_invoice

          # @!endgroup
        end

        # Current status of the migration: 'not_started', 'in_progress', 'completed',
        # 'action_needed', or 'canceled'.
        #
        # @see Orb::Models::Plans::MigrationListResponse#status
        module Status
          extend Orb::Internal::Type::Enum

          NOT_STARTED = :not_started
          IN_PROGRESS = :in_progress
          COMPLETED = :completed
          ACTION_NEEDED = :action_needed
          CANCELED = :canceled

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
