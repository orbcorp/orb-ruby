# typed: strong

module Orb
  module Models
    class SubscriptionChangeCancelResponse < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::Models::SubscriptionChangeCancelResponse,
            Orb::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # The type of change (e.g., 'schedule_plan_change', 'create_subscription').
      sig { returns(String) }
      attr_accessor :change_type

      # Subscription change will be cancelled at this time and can no longer be applied.
      sig { returns(Time) }
      attr_accessor :expiration_time

      sig do
        returns(
          Orb::Models::SubscriptionChangeCancelResponse::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      sig { returns(T.nilable(Orb::MutatedSubscription)) }
      attr_reader :subscription

      sig do
        params(subscription: T.nilable(Orb::MutatedSubscription::OrHash)).void
      end
      attr_writer :subscription

      # When this change was applied.
      sig { returns(T.nilable(Time)) }
      attr_accessor :applied_at

      # Billing cycle alignment for plan changes.
      sig { returns(T.nilable(String)) }
      attr_accessor :billing_cycle_alignment

      # When this change was cancelled.
      sig { returns(T.nilable(Time)) }
      attr_accessor :cancelled_at

      # How the change is scheduled (e.g., 'immediate', 'end_of_subscription_term',
      # 'requested_date').
      sig { returns(T.nilable(String)) }
      attr_accessor :change_option

      # When this change will take effect.
      sig { returns(T.nilable(Time)) }
      attr_accessor :effective_date

      # The target plan ID for plan changes.
      sig { returns(T.nilable(String)) }
      attr_accessor :plan_id

      # A subscription change represents a desired new subscription / pending change to
      # an existing subscription. It is a way to first preview the effects on the
      # subscription as well as any changes/creation of invoices (see
      # `subscription.changed_resources`).
      sig do
        params(
          id: String,
          change_type: String,
          expiration_time: Time,
          status:
            Orb::Models::SubscriptionChangeCancelResponse::Status::OrSymbol,
          subscription: T.nilable(Orb::MutatedSubscription::OrHash),
          applied_at: T.nilable(Time),
          billing_cycle_alignment: T.nilable(String),
          cancelled_at: T.nilable(Time),
          change_option: T.nilable(String),
          effective_date: T.nilable(Time),
          plan_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The type of change (e.g., 'schedule_plan_change', 'create_subscription').
        change_type:,
        # Subscription change will be cancelled at this time and can no longer be applied.
        expiration_time:,
        status:,
        subscription:,
        # When this change was applied.
        applied_at: nil,
        # Billing cycle alignment for plan changes.
        billing_cycle_alignment: nil,
        # When this change was cancelled.
        cancelled_at: nil,
        # How the change is scheduled (e.g., 'immediate', 'end_of_subscription_term',
        # 'requested_date').
        change_option: nil,
        # When this change will take effect.
        effective_date: nil,
        # The target plan ID for plan changes.
        plan_id: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            change_type: String,
            expiration_time: Time,
            status:
              Orb::Models::SubscriptionChangeCancelResponse::Status::TaggedSymbol,
            subscription: T.nilable(Orb::MutatedSubscription),
            applied_at: T.nilable(Time),
            billing_cycle_alignment: T.nilable(String),
            cancelled_at: T.nilable(Time),
            change_option: T.nilable(String),
            effective_date: T.nilable(Time),
            plan_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      module Status
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::Models::SubscriptionChangeCancelResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            Orb::Models::SubscriptionChangeCancelResponse::Status::TaggedSymbol
          )
        APPLIED =
          T.let(
            :applied,
            Orb::Models::SubscriptionChangeCancelResponse::Status::TaggedSymbol
          )
        CANCELLED =
          T.let(
            :cancelled,
            Orb::Models::SubscriptionChangeCancelResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::Models::SubscriptionChangeCancelResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
