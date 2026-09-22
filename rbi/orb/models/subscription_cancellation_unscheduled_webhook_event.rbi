# typed: strong

module Orb
  module Models
    class SubscriptionCancellationUnscheduledWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::SubscriptionCancellationUnscheduledWebhookEvent,
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
        returns(
          Orb::SubscriptionCancellationUnscheduledWebhookEvent::Properties
        )
      end
      attr_reader :properties

      sig do
        params(
          properties:
            Orb::SubscriptionCancellationUnscheduledWebhookEvent::Properties::OrHash
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
          Orb::SubscriptionCancellationUnscheduledWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # Issued when a scheduled subscription cancellation is unscheduled.
      sig do
        params(
          id: String,
          created_at: Time,
          properties:
            Orb::SubscriptionCancellationUnscheduledWebhookEvent::Properties::OrHash,
          subscription: Orb::Subscription::OrHash,
          type:
            Orb::SubscriptionCancellationUnscheduledWebhookEvent::Type::OrSymbol
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
              Orb::SubscriptionCancellationUnscheduledWebhookEvent::Properties,
            subscription: Orb::Subscription,
            type:
              Orb::SubscriptionCancellationUnscheduledWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Properties < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::SubscriptionCancellationUnscheduledWebhookEvent::Properties,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :original_cancellation_date

        sig do
          params(original_cancellation_date: String).returns(T.attached_class)
        end
        def self.new(original_cancellation_date:)
        end

        sig { override.returns({ original_cancellation_date: String }) }
        def to_hash
        end
      end

      # The event this payload describes.
      module Type
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Orb::SubscriptionCancellationUnscheduledWebhookEvent::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUBSCRIPTION_CANCELLATION_UNSCHEDULED =
          T.let(
            :"subscription.cancellation_unscheduled",
            Orb::SubscriptionCancellationUnscheduledWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::SubscriptionCancellationUnscheduledWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
