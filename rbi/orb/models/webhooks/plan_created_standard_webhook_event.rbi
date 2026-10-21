# typed: strong

module Orb
  module Models
    module Webhooks
      class PlanCreatedStandardWebhookEvent < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Webhooks::PlanCreatedStandardWebhookEvent,
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
            Orb::Webhooks::PlanCreatedStandardWebhookEvent::PayloadStyle::TaggedSymbol
          )
        end
        attr_accessor :payload_style

        sig { returns(Orb::Webhooks::PlanCreatedStandardWebhookEvent::Plan) }
        attr_reader :plan

        sig do
          params(
            plan: Orb::Webhooks::PlanCreatedStandardWebhookEvent::Plan::OrHash
          ).void
        end
        attr_writer :plan

        sig { returns(T.anything) }
        attr_accessor :properties

        # The event this payload describes.
        sig do
          returns(
            Orb::Webhooks::PlanCreatedStandardWebhookEvent::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # Issued when a plan is created, or when a draft plan is published.
        sig do
          params(
            id: String,
            created_at: Time,
            payload_style:
              Orb::Webhooks::PlanCreatedStandardWebhookEvent::PayloadStyle::OrSymbol,
            plan: Orb::Webhooks::PlanCreatedStandardWebhookEvent::Plan::OrHash,
            properties: T.anything,
            type: Orb::Webhooks::PlanCreatedStandardWebhookEvent::Type::OrSymbol
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
                Orb::Webhooks::PlanCreatedStandardWebhookEvent::PayloadStyle::TaggedSymbol,
              plan: Orb::Webhooks::PlanCreatedStandardWebhookEvent::Plan,
              properties: T.anything,
              type:
                Orb::Webhooks::PlanCreatedStandardWebhookEvent::Type::TaggedSymbol
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
                Orb::Webhooks::PlanCreatedStandardWebhookEvent::PayloadStyle
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXPANDED =
            T.let(
              :expanded,
              Orb::Webhooks::PlanCreatedStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )
          STANDARD =
            T.let(
              :standard,
              Orb::Webhooks::PlanCreatedStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::PlanCreatedStandardWebhookEvent::PayloadStyle::TaggedSymbol
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
                Orb::Webhooks::PlanCreatedStandardWebhookEvent::Plan,
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

        # The event this payload describes.
        module Type
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Webhooks::PlanCreatedStandardWebhookEvent::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PLAN_CREATED =
            T.let(
              :"plan.created",
              Orb::Webhooks::PlanCreatedStandardWebhookEvent::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::PlanCreatedStandardWebhookEvent::Type::TaggedSymbol
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
