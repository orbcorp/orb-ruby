# typed: strong

module Orb
  module Models
    module Webhooks
      class PlanVersionCreatedStandardWebhookEvent < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Webhooks::PlanVersionCreatedStandardWebhookEvent,
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
            Orb::Webhooks::PlanVersionCreatedStandardWebhookEvent::PayloadStyle::TaggedSymbol
          )
        end
        attr_accessor :payload_style

        sig do
          returns(Orb::Webhooks::PlanVersionCreatedStandardWebhookEvent::Plan)
        end
        attr_reader :plan

        sig do
          params(
            plan:
              Orb::Webhooks::PlanVersionCreatedStandardWebhookEvent::Plan::OrHash
          ).void
        end
        attr_writer :plan

        sig do
          returns(
            Orb::Webhooks::PlanVersionCreatedStandardWebhookEvent::Properties
          )
        end
        attr_reader :properties

        sig do
          params(
            properties:
              Orb::Webhooks::PlanVersionCreatedStandardWebhookEvent::Properties::OrHash
          ).void
        end
        attr_writer :properties

        # The event this payload describes.
        sig do
          returns(
            Orb::Webhooks::PlanVersionCreatedStandardWebhookEvent::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # Issued when a new plan version is created.
        sig do
          params(
            id: String,
            created_at: Time,
            payload_style:
              Orb::Webhooks::PlanVersionCreatedStandardWebhookEvent::PayloadStyle::OrSymbol,
            plan:
              Orb::Webhooks::PlanVersionCreatedStandardWebhookEvent::Plan::OrHash,
            properties:
              Orb::Webhooks::PlanVersionCreatedStandardWebhookEvent::Properties::OrHash,
            type:
              Orb::Webhooks::PlanVersionCreatedStandardWebhookEvent::Type::OrSymbol
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
          plan:,
          properties:,
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
                Orb::Webhooks::PlanVersionCreatedStandardWebhookEvent::PayloadStyle::TaggedSymbol,
              plan: Orb::Webhooks::PlanVersionCreatedStandardWebhookEvent::Plan,
              properties:
                Orb::Webhooks::PlanVersionCreatedStandardWebhookEvent::Properties,
              type:
                Orb::Webhooks::PlanVersionCreatedStandardWebhookEvent::Type::TaggedSymbol
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
                Orb::Webhooks::PlanVersionCreatedStandardWebhookEvent::PayloadStyle
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXPANDED =
            T.let(
              :expanded,
              Orb::Webhooks::PlanVersionCreatedStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )
          STANDARD =
            T.let(
              :standard,
              Orb::Webhooks::PlanVersionCreatedStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::PlanVersionCreatedStandardWebhookEvent::PayloadStyle::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Plan < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Webhooks::PlanVersionCreatedStandardWebhookEvent::Plan,
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

        class Properties < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Webhooks::PlanVersionCreatedStandardWebhookEvent::Properties,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_accessor :plan_version_description

          sig { returns(Integer) }
          attr_accessor :plan_version_number

          sig do
            params(
              plan_version_description: T.nilable(String),
              plan_version_number: Integer
            ).returns(T.attached_class)
          end
          def self.new(plan_version_description:, plan_version_number:)
          end

          sig do
            override.returns(
              {
                plan_version_description: T.nilable(String),
                plan_version_number: Integer
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
                Orb::Webhooks::PlanVersionCreatedStandardWebhookEvent::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PLAN_VERSION_CREATED =
            T.let(
              :"plan.version_created",
              Orb::Webhooks::PlanVersionCreatedStandardWebhookEvent::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::PlanVersionCreatedStandardWebhookEvent::Type::TaggedSymbol
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
