# typed: strong

module Orb
  module Models
    class SubscriptionAccountingSyncFailedWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::SubscriptionAccountingSyncFailedWebhookEvent,
            Orb::Internal::AnyHash
          )
        end

      # The ID of this webhook event.
      sig { returns(String) }
      attr_accessor :id

      sig do
        returns(
          Orb::SubscriptionAccountingSyncFailedWebhookEvent::AccountingSyncRecord
        )
      end
      attr_reader :accounting_sync_record

      sig do
        params(
          accounting_sync_record:
            Orb::SubscriptionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::OrHash
        ).void
      end
      attr_writer :accounting_sync_record

      # The time at which this event was created, to the second.
      sig { returns(Time) }
      attr_accessor :created_at

      sig do
        returns(Orb::SubscriptionAccountingSyncFailedWebhookEvent::Properties)
      end
      attr_reader :properties

      sig do
        params(
          properties:
            Orb::SubscriptionAccountingSyncFailedWebhookEvent::Properties::OrHash
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
          Orb::SubscriptionAccountingSyncFailedWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # Issued when a subscription accounting sync fails.
      sig do
        params(
          id: String,
          accounting_sync_record:
            Orb::SubscriptionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::OrHash,
          created_at: Time,
          properties:
            Orb::SubscriptionAccountingSyncFailedWebhookEvent::Properties::OrHash,
          subscription: Orb::Subscription::OrHash,
          type:
            Orb::SubscriptionAccountingSyncFailedWebhookEvent::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of this webhook event.
        id:,
        accounting_sync_record:,
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
            accounting_sync_record:
              Orb::SubscriptionAccountingSyncFailedWebhookEvent::AccountingSyncRecord,
            created_at: Time,
            properties:
              Orb::SubscriptionAccountingSyncFailedWebhookEvent::Properties,
            subscription: Orb::Subscription,
            type:
              Orb::SubscriptionAccountingSyncFailedWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class AccountingSyncRecord < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::SubscriptionAccountingSyncFailedWebhookEvent::AccountingSyncRecord,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :customer_id

        sig do
          returns(
            Orb::SubscriptionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
          )
        end
        attr_accessor :record_type

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_accessor :error_details

        sig { returns(T.nilable(String)) }
        attr_accessor :provider_customer_id

        sig { returns(T.nilable(String)) }
        attr_accessor :status

        sig { returns(T.nilable(String)) }
        attr_accessor :subscription_id

        sig { returns(T.nilable(String)) }
        attr_accessor :sync_action

        sig do
          params(
            id: String,
            customer_id: String,
            record_type:
              Orb::SubscriptionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::OrSymbol,
            error_details: T.nilable(T::Hash[Symbol, T.anything]),
            provider_customer_id: T.nilable(String),
            status: T.nilable(String),
            subscription_id: T.nilable(String),
            sync_action: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          customer_id:,
          record_type:,
          error_details: nil,
          provider_customer_id: nil,
          status: nil,
          subscription_id: nil,
          sync_action: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              customer_id: String,
              record_type:
                Orb::SubscriptionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol,
              error_details: T.nilable(T::Hash[Symbol, T.anything]),
              provider_customer_id: T.nilable(String),
              status: T.nilable(String),
              subscription_id: T.nilable(String),
              sync_action: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        module RecordType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::SubscriptionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CUSTOMER =
            T.let(
              :customer,
              Orb::SubscriptionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          INVOICE =
            T.let(
              :invoice,
              Orb::SubscriptionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          TRANSACTION =
            T.let(
              :transaction,
              Orb::SubscriptionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          CUSTOMER_BALANCE_TRANSACTION =
            T.let(
              :customer_balance_transaction,
              Orb::SubscriptionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          CREDIT_NOTE =
            T.let(
              :credit_note,
              Orb::SubscriptionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          SUBSCRIPTION =
            T.let(
              :subscription,
              Orb::SubscriptionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          SALES_ORDER =
            T.let(
              :sales_order,
              Orb::SubscriptionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          BLOCK =
            T.let(
              :block,
              Orb::SubscriptionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::SubscriptionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Properties < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::SubscriptionAccountingSyncFailedWebhookEvent::Properties,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :connection_type

        sig { returns(String) }
        attr_accessor :failure_reason

        sig do
          params(connection_type: String, failure_reason: String).returns(
            T.attached_class
          )
        end
        def self.new(connection_type:, failure_reason:)
        end

        sig do
          override.returns({ connection_type: String, failure_reason: String })
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
              Orb::SubscriptionAccountingSyncFailedWebhookEvent::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUBSCRIPTION_ACCOUNTING_SYNC_FAILED =
          T.let(
            :"subscription.accounting_sync_failed",
            Orb::SubscriptionAccountingSyncFailedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::SubscriptionAccountingSyncFailedWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
