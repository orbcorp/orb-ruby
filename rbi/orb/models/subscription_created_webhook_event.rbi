# typed: strong

module Orb
  module Models
    class SubscriptionCreatedWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::SubscriptionCreatedWebhookEvent, Orb::Internal::AnyHash)
        end

      # The ID of this webhook event.
      sig { returns(String) }
      attr_accessor :id

      # The time at which this event was created, to the second.
      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.anything) }
      attr_accessor :properties

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
      sig { returns(Orb::SubscriptionCreatedWebhookEvent::Type::TaggedSymbol) }
      attr_accessor :type

      # Issued when a subscription resource is created.
      sig do
        params(
          id: String,
          created_at: Time,
          properties: T.anything,
          subscription: Orb::Subscription::OrHash,
          type: Orb::SubscriptionCreatedWebhookEvent::Type::OrSymbol
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
            properties: T.anything,
            subscription: Orb::Subscription,
            type: Orb::SubscriptionCreatedWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The event this payload describes.
      module Type
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::SubscriptionCreatedWebhookEvent::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUBSCRIPTION_CREATED =
          T.let(
            :"subscription.created",
            Orb::SubscriptionCreatedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::SubscriptionCreatedWebhookEvent::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
