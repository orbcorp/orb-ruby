# typed: strong

module Orb
  module Models
    class SubscriptionEditedWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::SubscriptionEditedWebhookEvent, Orb::Internal::AnyHash)
        end

      # The ID of this webhook event.
      sig { returns(String) }
      attr_accessor :id

      # The time at which this event was created, to the second.
      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Orb::SubscriptionEditedWebhookEvent::Properties) }
      attr_reader :properties

      sig do
        params(
          properties: Orb::SubscriptionEditedWebhookEvent::Properties::OrHash
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
      sig { returns(Orb::SubscriptionEditedWebhookEvent::Type::TaggedSymbol) }
      attr_accessor :type

      # Issued when a subscription is updated.
      sig do
        params(
          id: String,
          created_at: Time,
          properties: Orb::SubscriptionEditedWebhookEvent::Properties::OrHash,
          subscription: Orb::Subscription::OrHash,
          type: Orb::SubscriptionEditedWebhookEvent::Type::OrSymbol
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
            properties: Orb::SubscriptionEditedWebhookEvent::Properties,
            subscription: Orb::Subscription,
            type: Orb::SubscriptionEditedWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Properties < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::SubscriptionEditedWebhookEvent::Properties,
              Orb::Internal::AnyHash
            )
          end

        sig do
          returns(
            Orb::SubscriptionEditedWebhookEvent::Properties::PreviousAttributes
          )
        end
        attr_reader :previous_attributes

        sig do
          params(
            previous_attributes:
              Orb::SubscriptionEditedWebhookEvent::Properties::PreviousAttributes::OrHash
          ).void
        end
        attr_writer :previous_attributes

        sig do
          params(
            previous_attributes:
              Orb::SubscriptionEditedWebhookEvent::Properties::PreviousAttributes::OrHash
          ).returns(T.attached_class)
        end
        def self.new(previous_attributes:)
        end

        sig do
          override.returns(
            {
              previous_attributes:
                Orb::SubscriptionEditedWebhookEvent::Properties::PreviousAttributes
            }
          )
        end
        def to_hash
        end

        class PreviousAttributes < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::SubscriptionEditedWebhookEvent::Properties::PreviousAttributes,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :auto_collection

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :auto_issuance

          sig { returns(T.nilable(String)) }
          attr_accessor :default_invoice_memo

          sig { returns(T.nilable(String)) }
          attr_accessor :invoicing_threshold

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_accessor :metadata

          sig { returns(T.nilable(Integer)) }
          attr_accessor :net_terms

          sig do
            params(
              auto_collection: T.nilable(T::Boolean),
              auto_issuance: T.nilable(T::Boolean),
              default_invoice_memo: T.nilable(String),
              invoicing_threshold: T.nilable(String),
              metadata: T.nilable(T::Hash[Symbol, String]),
              net_terms: T.nilable(Integer)
            ).returns(T.attached_class)
          end
          def self.new(
            auto_collection: nil,
            auto_issuance: nil,
            default_invoice_memo: nil,
            invoicing_threshold: nil,
            metadata: nil,
            net_terms: nil
          )
          end

          sig do
            override.returns(
              {
                auto_collection: T.nilable(T::Boolean),
                auto_issuance: T.nilable(T::Boolean),
                default_invoice_memo: T.nilable(String),
                invoicing_threshold: T.nilable(String),
                metadata: T.nilable(T::Hash[Symbol, String]),
                net_terms: T.nilable(Integer)
              }
            )
          end
          def to_hash
          end
        end
      end

      # The event this payload describes.
      module Type
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::SubscriptionEditedWebhookEvent::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUBSCRIPTION_EDITED =
          T.let(
            :"subscription.edited",
            Orb::SubscriptionEditedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::SubscriptionEditedWebhookEvent::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
