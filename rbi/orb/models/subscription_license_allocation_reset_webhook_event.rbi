# typed: strong

module Orb
  module Models
    class SubscriptionLicenseAllocationResetWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::SubscriptionLicenseAllocationResetWebhookEvent,
            Orb::Internal::AnyHash
          )
        end

      # The ID of this webhook event.
      sig { returns(String) }
      attr_accessor :id

      # The time at which this event was created, to the second.
      sig { returns(Time) }
      attr_accessor :created_at

      # Fires at the start of a billing period when license allocations are replenished.
      # Allocations sharing a billing period are batched into one message.
      sig do
        returns(Orb::SubscriptionLicenseAllocationResetWebhookEvent::Properties)
      end
      attr_reader :properties

      sig do
        params(
          properties:
            Orb::SubscriptionLicenseAllocationResetWebhookEvent::Properties::OrHash
        ).void
      end
      attr_writer :properties

      # A lightweight subscription representation for webhook payloads.
      #
      # This avoids the expensive to_subscription_params() call required for full
      # serialization.
      sig do
        returns(
          Orb::SubscriptionLicenseAllocationResetWebhookEvent::Subscription
        )
      end
      attr_reader :subscription

      sig do
        params(
          subscription:
            Orb::SubscriptionLicenseAllocationResetWebhookEvent::Subscription::OrHash
        ).void
      end
      attr_writer :subscription

      # The event this payload describes.
      sig do
        returns(
          Orb::SubscriptionLicenseAllocationResetWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # Issued when a license allocation is reset.
      sig do
        params(
          id: String,
          created_at: Time,
          properties:
            Orb::SubscriptionLicenseAllocationResetWebhookEvent::Properties::OrHash,
          subscription:
            Orb::SubscriptionLicenseAllocationResetWebhookEvent::Subscription::OrHash,
          type:
            Orb::SubscriptionLicenseAllocationResetWebhookEvent::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of this webhook event.
        id:,
        # The time at which this event was created, to the second.
        created_at:,
        # Fires at the start of a billing period when license allocations are replenished.
        # Allocations sharing a billing period are batched into one message.
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
              Orb::SubscriptionLicenseAllocationResetWebhookEvent::Properties,
            subscription:
              Orb::SubscriptionLicenseAllocationResetWebhookEvent::Subscription,
            type:
              Orb::SubscriptionLicenseAllocationResetWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Properties < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::SubscriptionLicenseAllocationResetWebhookEvent::Properties,
              Orb::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              Orb::SubscriptionLicenseAllocationResetWebhookEvent::Properties::ResetAllocation
            ]
          )
        end
        attr_accessor :reset_allocations

        sig { returns(Time) }
        attr_accessor :timeframe_end

        sig { returns(Time) }
        attr_accessor :timeframe_start

        # Fires at the start of a billing period when license allocations are replenished.
        # Allocations sharing a billing period are batched into one message.
        sig do
          params(
            reset_allocations:
              T::Array[
                Orb::SubscriptionLicenseAllocationResetWebhookEvent::Properties::ResetAllocation::OrHash
              ],
            timeframe_end: Time,
            timeframe_start: Time
          ).returns(T.attached_class)
        end
        def self.new(reset_allocations:, timeframe_end:, timeframe_start:)
        end

        sig do
          override.returns(
            {
              reset_allocations:
                T::Array[
                  Orb::SubscriptionLicenseAllocationResetWebhookEvent::Properties::ResetAllocation
                ],
              timeframe_end: Time,
              timeframe_start: Time
            }
          )
        end
        def to_hash
        end

        class ResetAllocation < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::SubscriptionLicenseAllocationResetWebhookEvent::Properties::ResetAllocation,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :allocation_amount

          sig { returns(String) }
          attr_accessor :license_type_id

          sig { returns(String) }
          attr_accessor :pricing_unit_id

          # A license allocation replenished at the start of a billing period.
          sig do
            params(
              allocation_amount: String,
              license_type_id: String,
              pricing_unit_id: String
            ).returns(T.attached_class)
          end
          def self.new(allocation_amount:, license_type_id:, pricing_unit_id:)
          end

          sig do
            override.returns(
              {
                allocation_amount: String,
                license_type_id: String,
                pricing_unit_id: String
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
              Orb::SubscriptionLicenseAllocationResetWebhookEvent::Subscription,
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
              Orb::SubscriptionLicenseAllocationResetWebhookEvent::Subscription::Plan
            )
          )
        end
        attr_reader :plan

        sig do
          params(
            plan:
              T.nilable(
                Orb::SubscriptionLicenseAllocationResetWebhookEvent::Subscription::Plan::OrHash
              )
          ).void
        end
        attr_writer :plan

        sig { returns(Time) }
        attr_accessor :start_date

        sig do
          returns(
            Orb::SubscriptionLicenseAllocationResetWebhookEvent::Subscription::Status::TaggedSymbol
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
                Orb::SubscriptionLicenseAllocationResetWebhookEvent::Subscription::Plan::OrHash
              ),
            start_date: Time,
            status:
              Orb::SubscriptionLicenseAllocationResetWebhookEvent::Subscription::Status::OrSymbol
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
                  Orb::SubscriptionLicenseAllocationResetWebhookEvent::Subscription::Plan
                ),
              start_date: Time,
              status:
                Orb::SubscriptionLicenseAllocationResetWebhookEvent::Subscription::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class Plan < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::SubscriptionLicenseAllocationResetWebhookEvent::Subscription::Plan,
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
                Orb::SubscriptionLicenseAllocationResetWebhookEvent::Subscription::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              Orb::SubscriptionLicenseAllocationResetWebhookEvent::Subscription::Status::TaggedSymbol
            )
          ENDED =
            T.let(
              :ended,
              Orb::SubscriptionLicenseAllocationResetWebhookEvent::Subscription::Status::TaggedSymbol
            )
          UPCOMING =
            T.let(
              :upcoming,
              Orb::SubscriptionLicenseAllocationResetWebhookEvent::Subscription::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::SubscriptionLicenseAllocationResetWebhookEvent::Subscription::Status::TaggedSymbol
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
              Orb::SubscriptionLicenseAllocationResetWebhookEvent::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUBSCRIPTION_LICENSE_ALLOCATION_RESET =
          T.let(
            :"subscription.license_allocation_reset",
            Orb::SubscriptionLicenseAllocationResetWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::SubscriptionLicenseAllocationResetWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
