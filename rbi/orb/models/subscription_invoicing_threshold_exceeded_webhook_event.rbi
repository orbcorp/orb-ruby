# typed: strong

module Orb
  module Models
    class SubscriptionInvoicingThresholdExceededWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::SubscriptionInvoicingThresholdExceededWebhookEvent,
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
          Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Properties
        )
      end
      attr_reader :properties

      sig do
        params(
          properties:
            Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Properties::OrHash
        ).void
      end
      attr_writer :properties

      # A lightweight subscription representation for webhook payloads.
      #
      # This avoids the expensive to_subscription_params() call required for full
      # serialization.
      sig do
        returns(
          Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Subscription
        )
      end
      attr_reader :subscription

      sig do
        params(
          subscription:
            Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Subscription::OrHash
        ).void
      end
      attr_writer :subscription

      # The event this payload describes.
      sig do
        returns(
          Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # Issued when a subscription's invoicing threshold is exceeded and an evaluation
      # is performed.
      sig do
        params(
          id: String,
          created_at: Time,
          properties:
            Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Properties::OrHash,
          subscription:
            Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Subscription::OrHash,
          type:
            Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of this webhook event.
        id:,
        # The time at which this event was created, to the second.
        created_at:,
        properties:,
        # A lightweight subscription representation for webhook payloads.
        #
        # This avoids the expensive to_subscription_params() call required for full
        # serialization.
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
              Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Properties,
            subscription:
              Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Subscription,
            type:
              Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Properties < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Properties,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :evaluated_amount

        sig { returns(String) }
        attr_accessor :invoice_id

        sig { returns(String) }
        attr_accessor :invoicing_threshold

        sig { returns(T::Boolean) }
        attr_accessor :threshold_invoice_created

        sig do
          params(
            evaluated_amount: String,
            invoice_id: String,
            invoicing_threshold: String,
            threshold_invoice_created: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          evaluated_amount:,
          invoice_id:,
          invoicing_threshold:,
          threshold_invoice_created:
        )
        end

        sig do
          override.returns(
            {
              evaluated_amount: String,
              invoice_id: String,
              invoicing_threshold: String,
              threshold_invoice_created: T::Boolean
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
              Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Subscription,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Orb::CustomerMinified) }
        attr_reader :customer

        sig { params(customer: Orb::CustomerMinified::OrHash).void }
        attr_writer :customer

        sig { returns(T.nilable(Time)) }
        attr_accessor :end_date

        sig do
          returns(
            T.nilable(
              Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Subscription::Plan
            )
          )
        end
        attr_reader :plan

        sig do
          params(
            plan:
              T.nilable(
                Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Subscription::Plan::OrHash
              )
          ).void
        end
        attr_writer :plan

        sig { returns(Time) }
        attr_accessor :start_date

        sig do
          returns(
            Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Subscription::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # A lightweight subscription representation for webhook payloads.
        #
        # This avoids the expensive to_subscription_params() call required for full
        # serialization.
        sig do
          params(
            id: String,
            customer: Orb::CustomerMinified::OrHash,
            end_date: T.nilable(Time),
            plan:
              T.nilable(
                Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Subscription::Plan::OrHash
              ),
            start_date: Time,
            status:
              Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Subscription::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(id:, customer:, end_date:, plan:, start_date:, status:)
        end

        sig do
          override.returns(
            {
              id: String,
              customer: Orb::CustomerMinified,
              end_date: T.nilable(Time),
              plan:
                T.nilable(
                  Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Subscription::Plan
                ),
              start_date: Time,
              status:
                Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Subscription::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class Plan < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Subscription::Plan,
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
                Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Subscription::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Subscription::Status::TaggedSymbol
            )
          ENDED =
            T.let(
              :ended,
              Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Subscription::Status::TaggedSymbol
            )
          UPCOMING =
            T.let(
              :upcoming,
              Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Subscription::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Subscription::Status::TaggedSymbol
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
              Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUBSCRIPTION_INVOICING_THRESHOLD_EXCEEDED =
          T.let(
            :"subscription.invoicing_threshold_exceeded",
            Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
