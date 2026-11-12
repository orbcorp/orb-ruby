# typed: strong

module Orb
  module Models
    class MigrationCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::MigrationCreateParams, Orb::Internal::AnyHash)
        end

      # When the migration takes effect: 'immediately', 'requested_date' on
      # `effective_date`, 'start_of_term' or 'end_of_term' for the start or end of each
      # subscription's current billing period, or 'start_of_invoice' or 'end_of_invoice'
      # for the start of its current or next invoice.
      sig { returns(Orb::MigrationCreateParams::EffectiveTime::OrSymbol) }
      attr_accessor :effective_time

      # The plan version to migrate subscriptions to. It can't be a draft version.
      sig { returns(Integer) }
      attr_accessor :target_plan_version_number

      # When false, a subscription whose migration would void an issued invoice or
      # create a credit note fails instead.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :allow_invoice_credit_or_void

      sig { params(allow_invoice_credit_or_void: T::Boolean).void }
      attr_writer :allow_invoice_credit_or_void

      # When true, an in-arrears price the migration ends mid-cycle bills its final line
      # item on the next scheduled invoice instead of on its end date.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :can_defer_billing

      sig { params(can_defer_billing: T::Boolean).void }
      attr_writer :can_defer_billing

      # The date the migration takes effect, at midnight in each customer's timezone.
      # Required when `effective_time` is `requested_date`, and not allowed otherwise.
      sig { returns(T.nilable(Date)) }
      attr_accessor :effective_date

      # Leave these subscriptions out. Can't be combined with
      # `included_subscription_ids`.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :excluded_subscription_ids

      # The external ID of the plan whose subscriptions to migrate.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_plan_id

      # `true` migrates only subscriptions in a trial, `false` only subscriptions not in
      # a trial.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :in_trial

      # Migrate only these subscriptions. When set, the filters below are ignored.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :included_subscription_ids

      # The plan whose subscriptions to migrate. Exactly one of `plan_id` and
      # `external_plan_id` is required.
      sig { returns(T.nilable(String)) }
      attr_accessor :plan_id

      # Migrate only subscriptions currently on these plan versions.
      sig { returns(T.nilable(T::Array[Integer])) }
      attr_accessor :plan_version_numbers

      # Why the migration was created.
      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      # Migrate subscriptions with these statuses. Defaults to active subscriptions.
      sig do
        returns(
          T.nilable(T::Array[Orb::MigrationCreateParams::Status::OrSymbol])
        )
      end
      attr_reader :statuses

      sig do
        params(
          statuses: T::Array[Orb::MigrationCreateParams::Status::OrSymbol]
        ).void
      end
      attr_writer :statuses

      sig do
        params(
          effective_time: Orb::MigrationCreateParams::EffectiveTime::OrSymbol,
          target_plan_version_number: Integer,
          allow_invoice_credit_or_void: T::Boolean,
          can_defer_billing: T::Boolean,
          effective_date: T.nilable(Date),
          excluded_subscription_ids: T.nilable(T::Array[String]),
          external_plan_id: T.nilable(String),
          in_trial: T.nilable(T::Boolean),
          included_subscription_ids: T.nilable(T::Array[String]),
          plan_id: T.nilable(String),
          plan_version_numbers: T.nilable(T::Array[Integer]),
          reason: T.nilable(String),
          statuses: T::Array[Orb::MigrationCreateParams::Status::OrSymbol],
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # When the migration takes effect: 'immediately', 'requested_date' on
        # `effective_date`, 'start_of_term' or 'end_of_term' for the start or end of each
        # subscription's current billing period, or 'start_of_invoice' or 'end_of_invoice'
        # for the start of its current or next invoice.
        effective_time:,
        # The plan version to migrate subscriptions to. It can't be a draft version.
        target_plan_version_number:,
        # When false, a subscription whose migration would void an issued invoice or
        # create a credit note fails instead.
        allow_invoice_credit_or_void: nil,
        # When true, an in-arrears price the migration ends mid-cycle bills its final line
        # item on the next scheduled invoice instead of on its end date.
        can_defer_billing: nil,
        # The date the migration takes effect, at midnight in each customer's timezone.
        # Required when `effective_time` is `requested_date`, and not allowed otherwise.
        effective_date: nil,
        # Leave these subscriptions out. Can't be combined with
        # `included_subscription_ids`.
        excluded_subscription_ids: nil,
        # The external ID of the plan whose subscriptions to migrate.
        external_plan_id: nil,
        # `true` migrates only subscriptions in a trial, `false` only subscriptions not in
        # a trial.
        in_trial: nil,
        # Migrate only these subscriptions. When set, the filters below are ignored.
        included_subscription_ids: nil,
        # The plan whose subscriptions to migrate. Exactly one of `plan_id` and
        # `external_plan_id` is required.
        plan_id: nil,
        # Migrate only subscriptions currently on these plan versions.
        plan_version_numbers: nil,
        # Why the migration was created.
        reason: nil,
        # Migrate subscriptions with these statuses. Defaults to active subscriptions.
        statuses: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            effective_time: Orb::MigrationCreateParams::EffectiveTime::OrSymbol,
            target_plan_version_number: Integer,
            allow_invoice_credit_or_void: T::Boolean,
            can_defer_billing: T::Boolean,
            effective_date: T.nilable(Date),
            excluded_subscription_ids: T.nilable(T::Array[String]),
            external_plan_id: T.nilable(String),
            in_trial: T.nilable(T::Boolean),
            included_subscription_ids: T.nilable(T::Array[String]),
            plan_id: T.nilable(String),
            plan_version_numbers: T.nilable(T::Array[Integer]),
            reason: T.nilable(String),
            statuses: T::Array[Orb::MigrationCreateParams::Status::OrSymbol],
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      # When the migration takes effect: 'immediately', 'requested_date' on
      # `effective_date`, 'start_of_term' or 'end_of_term' for the start or end of each
      # subscription's current billing period, or 'start_of_invoice' or 'end_of_invoice'
      # for the start of its current or next invoice.
      module EffectiveTime
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::MigrationCreateParams::EffectiveTime)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        IMMEDIATELY =
          T.let(
            :immediately,
            Orb::MigrationCreateParams::EffectiveTime::TaggedSymbol
          )
        REQUESTED_DATE =
          T.let(
            :requested_date,
            Orb::MigrationCreateParams::EffectiveTime::TaggedSymbol
          )
        START_OF_TERM =
          T.let(
            :start_of_term,
            Orb::MigrationCreateParams::EffectiveTime::TaggedSymbol
          )
        END_OF_TERM =
          T.let(
            :end_of_term,
            Orb::MigrationCreateParams::EffectiveTime::TaggedSymbol
          )
        START_OF_INVOICE =
          T.let(
            :start_of_invoice,
            Orb::MigrationCreateParams::EffectiveTime::TaggedSymbol
          )
        END_OF_INVOICE =
          T.let(
            :end_of_invoice,
            Orb::MigrationCreateParams::EffectiveTime::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::MigrationCreateParams::EffectiveTime::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Status
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::MigrationCreateParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(:active, Orb::MigrationCreateParams::Status::TaggedSymbol)
        UPCOMING =
          T.let(:upcoming, Orb::MigrationCreateParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Orb::MigrationCreateParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
