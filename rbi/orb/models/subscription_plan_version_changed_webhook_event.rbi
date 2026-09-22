# typed: strong

module Orb
  module Models
    class SubscriptionPlanVersionChangedWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::SubscriptionPlanVersionChangedWebhookEvent,
            Orb::Internal::AnyHash
          )
        end

      # The ID of this webhook event.
      sig { returns(String) }
      attr_accessor :id

      # The time at which this event was created, to the second.
      sig { returns(Time) }
      attr_accessor :created_at

      sig do
        returns(Orb::SubscriptionPlanVersionChangedWebhookEvent::Properties)
      end
      attr_reader :properties

      sig do
        params(
          properties:
            Orb::SubscriptionPlanVersionChangedWebhookEvent::Properties::OrHash
        ).void
      end
      attr_writer :properties

      # A [subscription](/core-concepts#subscription) represents the purchase of a plan
      # by a customer.
      #
      # By default, subscriptions begin on the day that they're created and renew
      # automatically for each billing cycle at the cadence that's configured in the
      # plan definition.
      #
      # Subscriptions also default to **beginning of month alignment**, which means the
      # first invoice issued for the subscription will have pro-rated charges between
      # the `start_date` and the first of the following month. Subsequent billing
      # periods will always start and end on a month boundary (e.g. subsequent month
      # starts for monthly billing).
      #
      # Depending on the plan configuration, any _flat_ recurring fees will be billed
      # either at the beginning (in-advance) or end (in-arrears) of each billing cycle.
      # Plans default to **in-advance billing**. Usage-based fees are billed in arrears
      # as usage is accumulated. In the normal course of events, you can expect an
      # invoice to contain usage-based charges for the previous period, and a recurring
      # fee for the following period.
      sig { returns(Orb::Subscription) }
      attr_reader :subscription

      sig { params(subscription: Orb::Subscription::OrHash).void }
      attr_writer :subscription

      # The event this payload describes.
      sig do
        returns(
          Orb::SubscriptionPlanVersionChangedWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # Issued when a subscription plan version has changed.
      sig do
        params(
          id: String,
          created_at: Time,
          properties:
            Orb::SubscriptionPlanVersionChangedWebhookEvent::Properties::OrHash,
          subscription: Orb::Subscription::OrHash,
          type: Orb::SubscriptionPlanVersionChangedWebhookEvent::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of this webhook event.
        id:,
        # The time at which this event was created, to the second.
        created_at:,
        properties:,
        # A [subscription](/core-concepts#subscription) represents the purchase of a plan
        # by a customer.
        #
        # By default, subscriptions begin on the day that they're created and renew
        # automatically for each billing cycle at the cadence that's configured in the
        # plan definition.
        #
        # Subscriptions also default to **beginning of month alignment**, which means the
        # first invoice issued for the subscription will have pro-rated charges between
        # the `start_date` and the first of the following month. Subsequent billing
        # periods will always start and end on a month boundary (e.g. subsequent month
        # starts for monthly billing).
        #
        # Depending on the plan configuration, any _flat_ recurring fees will be billed
        # either at the beginning (in-advance) or end (in-arrears) of each billing cycle.
        # Plans default to **in-advance billing**. Usage-based fees are billed in arrears
        # as usage is accumulated. In the normal course of events, you can expect an
        # invoice to contain usage-based charges for the previous period, and a recurring
        # fee for the following period.
        subscription:,
        # The event this payload describes.
        type:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            properties:
              Orb::SubscriptionPlanVersionChangedWebhookEvent::Properties,
            subscription: Orb::Subscription,
            type:
              Orb::SubscriptionPlanVersionChangedWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Properties < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::SubscriptionPlanVersionChangedWebhookEvent::Properties,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :effective_date

        sig { returns(Integer) }
        attr_accessor :new_plan_version_number

        sig { returns(Integer) }
        attr_accessor :previous_plan_version_number

        sig do
          params(
            effective_date: String,
            new_plan_version_number: Integer,
            previous_plan_version_number: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          effective_date:,
          new_plan_version_number:,
          previous_plan_version_number:
        )
        end

        sig do
          override.returns(
            {
              effective_date: String,
              new_plan_version_number: Integer,
              previous_plan_version_number: Integer
            }
          )
        end
        def to_hash
        end
      end

      # The event this payload describes.
      module Type
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::SubscriptionPlanVersionChangedWebhookEvent::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUBSCRIPTION_PLAN_VERSION_CHANGED =
          T.let(
            :"subscription.plan_version_changed",
            Orb::SubscriptionPlanVersionChangedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::SubscriptionPlanVersionChangedWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
