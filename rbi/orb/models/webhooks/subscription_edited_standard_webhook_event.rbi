# typed: strong

module Orb
  module Models
    module Webhooks
      class SubscriptionEditedStandardWebhookEvent < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Webhooks::SubscriptionEditedStandardWebhookEvent,
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
            Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::PayloadStyle::TaggedSymbol
          )
        end
        attr_accessor :payload_style

        sig do
          returns(
            Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Properties
          )
        end
        attr_reader :properties

        sig do
          params(
            properties:
              Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Properties::OrHash
          ).void
        end
        attr_writer :properties

        # The subscription in a standard webhook payload: its own fields, with its plan
        # and customer as references. Fetch the subscription for its price intervals,
        # billing periods, plan phases and other derived fields.
        sig do
          returns(
            Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Subscription
          )
        end
        attr_reader :subscription

        sig do
          params(
            subscription:
              Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Subscription::OrHash
          ).void
        end
        attr_writer :subscription

        # The event this payload describes.
        sig do
          returns(
            Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # Issued when a subscription is updated.
        sig do
          params(
            id: String,
            created_at: Time,
            payload_style:
              Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::PayloadStyle::OrSymbol,
            properties:
              Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Properties::OrHash,
            subscription:
              Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Subscription::OrHash,
            type:
              Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Type::OrSymbol
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
                Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::PayloadStyle::TaggedSymbol,
              properties:
                Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Properties,
              subscription:
                Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Subscription,
              type:
                Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Type::TaggedSymbol
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
                Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::PayloadStyle
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXPANDED =
            T.let(
              :expanded,
              Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )
          STANDARD =
            T.let(
              :standard,
              Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::PayloadStyle::TaggedSymbol
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
                Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Properties,
                Orb::Internal::AnyHash
              )
            end

          sig do
            returns(
              Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Properties::PreviousAttributes
            )
          end
          attr_reader :previous_attributes

          sig do
            params(
              previous_attributes:
                Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Properties::PreviousAttributes::OrHash
            ).void
          end
          attr_writer :previous_attributes

          sig do
            params(
              previous_attributes:
                Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Properties::PreviousAttributes::OrHash
            ).returns(T.attached_class)
          end
          def self.new(previous_attributes:)
          end

          sig do
            override.returns(
              {
                previous_attributes:
                  Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Properties::PreviousAttributes
              }
            )
          end
          def to_hash
          end

          class PreviousAttributes < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Properties::PreviousAttributes,
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

        class Subscription < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Subscription,
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
                Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Subscription::Plan
              )
            )
          end
          attr_reader :plan

          sig do
            params(
              plan:
                T.nilable(
                  Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Subscription::Plan::OrHash
                )
            ).void
          end
          attr_writer :plan

          # The date Orb starts billing for this subscription.
          sig { returns(Time) }
          attr_accessor :start_date

          sig do
            returns(
              Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Subscription::Status::TaggedSymbol
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
                  Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Subscription::Plan::OrHash
                ),
              start_date: Time,
              status:
                Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Subscription::Status::OrSymbol
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
                    Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Subscription::Plan
                  ),
                start_date: Time,
                status:
                  Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Subscription::Status::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          class Plan < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Subscription::Plan,
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
                  Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Subscription::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Subscription::Status::TaggedSymbol
              )
            ENDED =
              T.let(
                :ended,
                Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Subscription::Status::TaggedSymbol
              )
            UPCOMING =
              T.let(
                :upcoming,
                Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Subscription::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Subscription::Status::TaggedSymbol
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
                Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SUBSCRIPTION_EDITED =
            T.let(
              :"subscription.edited",
              Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::SubscriptionEditedStandardWebhookEvent::Type::TaggedSymbol
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
