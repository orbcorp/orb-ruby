# typed: strong

module Orb
  module Models
    module Webhooks
      class SubscriptionAccountingSyncFailedStandardWebhookEvent < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent,
              Orb::Internal::AnyHash
            )
          end

        # The ID of this webhook event.
        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(
            Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord
          )
        end
        attr_reader :accounting_sync_record

        sig do
          params(
            accounting_sync_record:
              Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::OrHash
          ).void
        end
        attr_writer :accounting_sync_record

        # The time at which this event was created, to the second.
        sig { returns(Time) }
        attr_accessor :created_at

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        sig do
          returns(
            Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::PayloadStyle::TaggedSymbol
          )
        end
        attr_accessor :payload_style

        sig do
          returns(
            Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::Properties
          )
        end
        attr_reader :properties

        sig do
          params(
            properties:
              Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::Properties::OrHash
          ).void
        end
        attr_writer :properties

        # The subscription in a standard webhook payload: the fields readable without
        # to_subscription_params(), which every interval, billing period and plan phase
        # depends on.
        sig do
          returns(
            Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::Subscription
          )
        end
        attr_reader :subscription

        sig do
          params(
            subscription:
              Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::Subscription::OrHash
          ).void
        end
        attr_writer :subscription

        # The event this payload describes.
        sig do
          returns(
            Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # Issued when a subscription accounting sync fails.
        sig do
          params(
            id: String,
            accounting_sync_record:
              Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::OrHash,
            created_at: Time,
            payload_style:
              Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::PayloadStyle::OrSymbol,
            properties:
              Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::Properties::OrHash,
            subscription:
              Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::Subscription::OrHash,
            type:
              Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of this webhook event.
          id:,
          accounting_sync_record:,
          # The time at which this event was created, to the second.
          created_at:,
          # The serialization style this payload was rendered in, as configured on the
          # endpoint.
          payload_style:,
          properties:,
          # The subscription in a standard webhook payload: the fields readable without
          # to_subscription_params(), which every interval, billing period and plan phase
          # depends on.
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
                Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord,
              created_at: Time,
              payload_style:
                Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::PayloadStyle::TaggedSymbol,
              properties:
                Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::Properties,
              subscription:
                Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::Subscription,
              type:
                Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class AccountingSyncRecord < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :customer_id

          sig do
            returns(
              Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
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
                Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::OrSymbol,
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
                  Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol,
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
                  Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CUSTOMER =
              T.let(
                :customer,
                Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            INVOICE =
              T.let(
                :invoice,
                Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            TRANSACTION =
              T.let(
                :transaction,
                Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            CUSTOMER_BALANCE_TRANSACTION =
              T.let(
                :customer_balance_transaction,
                Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            CREDIT_NOTE =
              T.let(
                :credit_note,
                Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            SUBSCRIPTION =
              T.let(
                :subscription,
                Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            SALES_ORDER =
              T.let(
                :sales_order,
                Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            BLOCK =
              T.let(
                :block,
                Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        module PayloadStyle
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::PayloadStyle
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXPANDED =
            T.let(
              :expanded,
              Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )
          STANDARD =
            T.let(
              :standard,
              Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::PayloadStyle::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Properties < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::Properties,
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
            override.returns(
              { connection_type: String, failure_reason: String }
            )
          end
          def to_hash
          end
        end

        class Subscription < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::Subscription,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(Time) }
          attr_accessor :created_at

          sig { returns(Orb::CustomerMinified) }
          attr_reader :customer

          sig { params(customer: Orb::CustomerMinified::OrHash).void }
          attr_writer :customer

          # The date Orb stops billing for this subscription.
          sig { returns(T.nilable(Time)) }
          attr_accessor :end_date

          # User specified key-value pairs for the resource. If not present, this defaults
          # to an empty dictionary. Individual keys can be removed by setting the value to
          # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          # `null`.
          sig { returns(T::Hash[Symbol, String]) }
          attr_accessor :metadata

          # The name of the subscription.
          sig { returns(String) }
          attr_accessor :name

          sig do
            returns(
              T.nilable(
                Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::Subscription::Plan
              )
            )
          end
          attr_reader :plan

          sig do
            params(
              plan:
                T.nilable(
                  Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::Subscription::Plan::OrHash
                )
            ).void
          end
          attr_writer :plan

          # The date Orb starts billing for this subscription.
          sig { returns(Time) }
          attr_accessor :start_date

          sig do
            returns(
              Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::Subscription::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # The subscription in a standard webhook payload: the fields readable without
          # to_subscription_params(), which every interval, billing period and plan phase
          # depends on.
          sig do
            params(
              id: String,
              created_at: Time,
              customer: Orb::CustomerMinified::OrHash,
              end_date: T.nilable(Time),
              metadata: T::Hash[Symbol, String],
              name: String,
              plan:
                T.nilable(
                  Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::Subscription::Plan::OrHash
                ),
              start_date: Time,
              status:
                Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::Subscription::Status::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            created_at:,
            customer:,
            # The date Orb stops billing for this subscription.
            end_date:,
            # User specified key-value pairs for the resource. If not present, this defaults
            # to an empty dictionary. Individual keys can be removed by setting the value to
            # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
            # `null`.
            metadata:,
            # The name of the subscription.
            name:,
            plan:,
            # The date Orb starts billing for this subscription.
            start_date:,
            status:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                created_at: Time,
                customer: Orb::CustomerMinified,
                end_date: T.nilable(Time),
                metadata: T::Hash[Symbol, String],
                name: String,
                plan:
                  T.nilable(
                    Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::Subscription::Plan
                  ),
                start_date: Time,
                status:
                  Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::Subscription::Status::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          class Plan < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::Subscription::Plan,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_accessor :id

            # An optional user-defined ID for this plan resource, used throughout the system
            # as an alias for this Plan. Use this field to identify a plan by an existing
            # identifier in your system.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_plan_id

            sig { returns(T.nilable(String)) }
            attr_accessor :name

            sig do
              params(
                id: T.nilable(String),
                external_plan_id: T.nilable(String),
                name: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              # An optional user-defined ID for this plan resource, used throughout the system
              # as an alias for this Plan. Use this field to identify a plan by an existing
              # identifier in your system.
              external_plan_id:,
              name:
            )
            end

            sig do
              override.returns(
                {
                  id: T.nilable(String),
                  external_plan_id: T.nilable(String),
                  name: T.nilable(String)
                }
              )
            end
            def to_hash
            end
          end

          module Status
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::Subscription::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::Subscription::Status::TaggedSymbol
              )
            ENDED =
              T.let(
                :ended,
                Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::Subscription::Status::TaggedSymbol
              )
            UPCOMING =
              T.let(
                :upcoming,
                Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::Subscription::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::Subscription::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # The event this payload describes.
        module Type
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SUBSCRIPTION_ACCOUNTING_SYNC_FAILED =
            T.let(
              :"subscription.accounting_sync_failed",
              Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
