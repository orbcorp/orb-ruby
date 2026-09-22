# typed: strong

module Orb
  module Models
    class SubscriptionFixedFeeQuantityUpdatedWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::SubscriptionFixedFeeQuantityUpdatedWebhookEvent,
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
          Orb::SubscriptionFixedFeeQuantityUpdatedWebhookEvent::Properties
        )
      end
      attr_reader :properties

      sig do
        params(
          properties:
            Orb::SubscriptionFixedFeeQuantityUpdatedWebhookEvent::Properties::OrHash
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
          Orb::SubscriptionFixedFeeQuantityUpdatedWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # Issued when a subscription's fixed fee quantity is updated.
      sig do
        params(
          id: String,
          created_at: Time,
          properties:
            Orb::SubscriptionFixedFeeQuantityUpdatedWebhookEvent::Properties::OrHash,
          subscription: Orb::Subscription::OrHash,
          type:
            Orb::SubscriptionFixedFeeQuantityUpdatedWebhookEvent::Type::OrSymbol
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
              Orb::SubscriptionFixedFeeQuantityUpdatedWebhookEvent::Properties,
            subscription: Orb::Subscription,
            type:
              Orb::SubscriptionFixedFeeQuantityUpdatedWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Properties < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::SubscriptionFixedFeeQuantityUpdatedWebhookEvent::Properties,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(Time) }
        attr_accessor :effective_date

        sig { returns(Float) }
        attr_accessor :new_quantity

        sig { returns(Float) }
        attr_accessor :old_quantity

        sig { returns(String) }
        attr_accessor :price_id

        sig do
          params(
            effective_date: Time,
            new_quantity: Float,
            old_quantity: Float,
            price_id: String
          ).returns(T.attached_class)
        end
        def self.new(effective_date:, new_quantity:, old_quantity:, price_id:)
        end

        sig do
          override.returns(
            {
              effective_date: Time,
              new_quantity: Float,
              old_quantity: Float,
              price_id: String
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
            T.all(
              Symbol,
              Orb::SubscriptionFixedFeeQuantityUpdatedWebhookEvent::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUBSCRIPTION_FIXED_FEE_QUANTITY_UPDATED =
          T.let(
            :"subscription.fixed_fee_quantity_updated",
            Orb::SubscriptionFixedFeeQuantityUpdatedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::SubscriptionFixedFeeQuantityUpdatedWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
