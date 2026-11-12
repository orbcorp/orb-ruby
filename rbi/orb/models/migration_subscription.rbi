# typed: strong

module Orb
  module Models
    class MigrationSubscription < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::MigrationSubscription, Orb::Internal::AnyHash)
        end

      sig { returns(Orb::CustomerMinified) }
      attr_reader :customer

      sig { params(customer: Orb::CustomerMinified::OrHash).void }
      attr_writer :customer

      # When the subscription is migrated to the target plan version. Null unless the
      # status is 'scheduled' or 'completed'.
      sig { returns(T.nilable(Time)) }
      attr_accessor :effective_date

      # Why the subscription could not be migrated. Null unless the status is 'failed'.
      sig { returns(T.nilable(String)) }
      attr_accessor :failure_reason

      # The subscription's status in the migration: 'scheduling' until the migration has
      # processed it, 'scheduled' when it will be migrated to the target version at
      # `effective_date`, 'completed' once it has been migrated, 'skipped' when the
      # migration left it unchanged, or 'failed' when it could not be migrated (see
      # `failure_reason`).
      sig { returns(Orb::MigrationSubscription::Status::TaggedSymbol) }
      attr_accessor :status

      # The ID of the subscription.
      sig { returns(String) }
      attr_accessor :subscription_id

      sig do
        params(
          customer: Orb::CustomerMinified::OrHash,
          effective_date: T.nilable(Time),
          failure_reason: T.nilable(String),
          status: Orb::MigrationSubscription::Status::OrSymbol,
          subscription_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        customer:,
        # When the subscription is migrated to the target plan version. Null unless the
        # status is 'scheduled' or 'completed'.
        effective_date:,
        # Why the subscription could not be migrated. Null unless the status is 'failed'.
        failure_reason:,
        # The subscription's status in the migration: 'scheduling' until the migration has
        # processed it, 'scheduled' when it will be migrated to the target version at
        # `effective_date`, 'completed' once it has been migrated, 'skipped' when the
        # migration left it unchanged, or 'failed' when it could not be migrated (see
        # `failure_reason`).
        status:,
        # The ID of the subscription.
        subscription_id:
      )
      end

      sig do
        override.returns(
          {
            customer: Orb::CustomerMinified,
            effective_date: T.nilable(Time),
            failure_reason: T.nilable(String),
            status: Orb::MigrationSubscription::Status::TaggedSymbol,
            subscription_id: String
          }
        )
      end
      def to_hash
      end

      # The subscription's status in the migration: 'scheduling' until the migration has
      # processed it, 'scheduled' when it will be migrated to the target version at
      # `effective_date`, 'completed' once it has been migrated, 'skipped' when the
      # migration left it unchanged, or 'failed' when it could not be migrated (see
      # `failure_reason`).
      module Status
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::MigrationSubscription::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SCHEDULING =
          T.let(:scheduling, Orb::MigrationSubscription::Status::TaggedSymbol)
        SCHEDULED =
          T.let(:scheduled, Orb::MigrationSubscription::Status::TaggedSymbol)
        COMPLETED =
          T.let(:completed, Orb::MigrationSubscription::Status::TaggedSymbol)
        SKIPPED =
          T.let(:skipped, Orb::MigrationSubscription::Status::TaggedSymbol)
        FAILED =
          T.let(:failed, Orb::MigrationSubscription::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Orb::MigrationSubscription::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
