# typed: strong

module Orb
  module Models
    module Webhooks
      class SubscriptionPlanVersionChangeScheduledStandardWebhookEvent < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent,
              Orb::Internal::AnyHash
            )
          end

        # The ID of this webhook event.
        sig { returns(String) }
        attr_accessor :id

        # The time at which this event was created, to the second.
        sig { returns(Time) }
        attr_accessor :created_at

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        sig do
          returns(
            Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::PayloadStyle::TaggedSymbol
          )
        end
        attr_accessor :payload_style

        sig do
          returns(
            Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::Properties
          )
        end
        attr_reader :properties

        sig do
          params(
            properties:
              Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::Properties::OrHash
          ).void
        end
        attr_writer :properties

        # The subscription in a standard webhook payload: its own fields, with its plan
        # and customer as references. Fetch the subscription for its price intervals,
        # billing periods, plan phases and other derived fields.
        sig do
          returns(
            Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::Subscription
          )
        end
        attr_reader :subscription

        sig do
          params(
            subscription:
              Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::Subscription::OrHash
          ).void
        end
        attr_writer :subscription

        # The event this payload describes.
        sig do
          returns(
            Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # Issued when a subscription plan version change is scheduled.
        sig do
          params(
            id: String,
            created_at: Time,
            payload_style:
              Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::PayloadStyle::OrSymbol,
            properties:
              Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::Properties::OrHash,
            subscription:
              Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::Subscription::OrHash,
            type:
              Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of this webhook event.
          id:,
          # The time at which this event was created, to the second.
          created_at:,
          # The serialization style this payload was rendered in, as configured on the
          # endpoint.
          payload_style:,
          properties:,
          # The subscription in a standard webhook payload: its own fields, with its plan
          # and customer as references. Fetch the subscription for its price intervals,
          # billing periods, plan phases and other derived fields.
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
              payload_style:
                Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::PayloadStyle::TaggedSymbol,
              properties:
                Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::Properties,
              subscription:
                Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::Subscription,
              type:
                Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        module PayloadStyle
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::PayloadStyle
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXPANDED =
            T.let(
              :expanded,
              Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )
          STANDARD =
            T.let(
              :standard,
              Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::PayloadStyle::TaggedSymbol
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
                Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::Properties,
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

        class Subscription < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::Subscription,
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
                Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::Subscription::Plan
              )
            )
          end
          attr_reader :plan

          sig do
            params(
              plan:
                T.nilable(
                  Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::Subscription::Plan::OrHash
                )
            ).void
          end
          attr_writer :plan

          # The date Orb starts billing for this subscription.
          sig { returns(Time) }
          attr_accessor :start_date

          sig do
            returns(
              Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::Subscription::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # The subscription in a standard webhook payload: its own fields, with its plan
          # and customer as references. Fetch the subscription for its price intervals,
          # billing periods, plan phases and other derived fields.
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
                  Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::Subscription::Plan::OrHash
                ),
              start_date: Time,
              status:
                Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::Subscription::Status::OrSymbol
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
                    Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::Subscription::Plan
                  ),
                start_date: Time,
                status:
                  Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::Subscription::Status::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          class Plan < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::Subscription::Plan,
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
                  Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::Subscription::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::Subscription::Status::TaggedSymbol
              )
            ENDED =
              T.let(
                :ended,
                Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::Subscription::Status::TaggedSymbol
              )
            UPCOMING =
              T.let(
                :upcoming,
                Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::Subscription::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::Subscription::Status::TaggedSymbol
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
                Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SUBSCRIPTION_PLAN_VERSION_CHANGE_SCHEDULED =
            T.let(
              :"subscription.plan_version_change_scheduled",
              Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent::Type::TaggedSymbol
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
