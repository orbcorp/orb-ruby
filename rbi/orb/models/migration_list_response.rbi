# typed: strong

module Orb
  module Models
    class MigrationListResponse < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::Models::MigrationListResponse, Orb::Internal::AnyHash)
        end

      # Unique identifier for this plan version change.
      sig { returns(String) }
      attr_accessor :id

      # When the migration takes effect. Can be a specific date/time, 'start_of_term' or
      # 'end_of_term' when scheduled to be at the start or end of the current billing
      # period, or 'start_of_invoice' or 'end_of_invoice' when scheduled to be at the
      # start of the current or next invoice.
      sig do
        returns(
          T.nilable(Orb::Models::MigrationListResponse::EffectiveTime::Variants)
        )
      end
      attr_accessor :effective_time

      # When the migration completed or was canceled, or null if it is still in
      # progress.
      sig { returns(T.nilable(Time)) }
      attr_accessor :ended_at

      # The ID of the plan being migrated.
      sig { returns(String) }
      attr_accessor :plan_id

      # When Orb began migrating the plan's subscriptions. Null if the migration has not
      # begun, or was canceled before it began.
      sig { returns(T.nilable(Time)) }
      attr_accessor :started_at

      # Current status of the migration: 'not_started', 'in_progress', 'completed',
      # 'action_needed', or 'canceled'.
      sig { returns(Orb::Models::MigrationListResponse::Status::TaggedSymbol) }
      attr_accessor :status

      # The plan version subscriptions are migrated to.
      sig { returns(Integer) }
      attr_accessor :target_plan_version_number

      sig do
        params(
          id: String,
          effective_time:
            T.nilable(
              T.any(
                Date,
                Time,
                Orb::Models::MigrationListResponse::EffectiveTime::OrSymbol
              )
            ),
          ended_at: T.nilable(Time),
          plan_id: String,
          started_at: T.nilable(Time),
          status: Orb::Models::MigrationListResponse::Status::OrSymbol,
          target_plan_version_number: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for this plan version change.
        id:,
        # When the migration takes effect. Can be a specific date/time, 'start_of_term' or
        # 'end_of_term' when scheduled to be at the start or end of the current billing
        # period, or 'start_of_invoice' or 'end_of_invoice' when scheduled to be at the
        # start of the current or next invoice.
        effective_time:,
        # When the migration completed or was canceled, or null if it is still in
        # progress.
        ended_at:,
        # The ID of the plan being migrated.
        plan_id:,
        # When Orb began migrating the plan's subscriptions. Null if the migration has not
        # begun, or was canceled before it began.
        started_at:,
        # Current status of the migration: 'not_started', 'in_progress', 'completed',
        # 'action_needed', or 'canceled'.
        status:,
        # The plan version subscriptions are migrated to.
        target_plan_version_number:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            effective_time:
              T.nilable(
                Orb::Models::MigrationListResponse::EffectiveTime::Variants
              ),
            ended_at: T.nilable(Time),
            plan_id: String,
            started_at: T.nilable(Time),
            status: Orb::Models::MigrationListResponse::Status::TaggedSymbol,
            target_plan_version_number: Integer
          }
        )
      end
      def to_hash
      end

      # When the migration takes effect. Can be a specific date/time, 'start_of_term' or
      # 'end_of_term' when scheduled to be at the start or end of the current billing
      # period, or 'start_of_invoice' or 'end_of_invoice' when scheduled to be at the
      # start of the current or next invoice.
      module EffectiveTime
        extend Orb::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Date,
              Time,
              Orb::Models::MigrationListResponse::EffectiveTime::TaggedSymbol
            )
          end

        sig do
          override.returns(
            T::Array[
              Orb::Models::MigrationListResponse::EffectiveTime::Variants
            ]
          )
        end
        def self.variants
        end

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::Models::MigrationListResponse::EffectiveTime)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        START_OF_TERM =
          T.let(
            :start_of_term,
            Orb::Models::MigrationListResponse::EffectiveTime::TaggedSymbol
          )
        END_OF_TERM =
          T.let(
            :end_of_term,
            Orb::Models::MigrationListResponse::EffectiveTime::TaggedSymbol
          )
        START_OF_INVOICE =
          T.let(
            :start_of_invoice,
            Orb::Models::MigrationListResponse::EffectiveTime::TaggedSymbol
          )
        END_OF_INVOICE =
          T.let(
            :end_of_invoice,
            Orb::Models::MigrationListResponse::EffectiveTime::TaggedSymbol
          )
      end

      # Current status of the migration: 'not_started', 'in_progress', 'completed',
      # 'action_needed', or 'canceled'.
      module Status
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::Models::MigrationListResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NOT_STARTED =
          T.let(
            :not_started,
            Orb::Models::MigrationListResponse::Status::TaggedSymbol
          )
        IN_PROGRESS =
          T.let(
            :in_progress,
            Orb::Models::MigrationListResponse::Status::TaggedSymbol
          )
        COMPLETED =
          T.let(
            :completed,
            Orb::Models::MigrationListResponse::Status::TaggedSymbol
          )
        ACTION_NEEDED =
          T.let(
            :action_needed,
            Orb::Models::MigrationListResponse::Status::TaggedSymbol
          )
        CANCELED =
          T.let(
            :canceled,
            Orb::Models::MigrationListResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::Models::MigrationListResponse::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
