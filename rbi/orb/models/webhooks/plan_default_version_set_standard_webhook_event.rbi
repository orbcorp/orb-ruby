# typed: strong

module Orb
  module Models
    module Webhooks
      class PlanDefaultVersionSetStandardWebhookEvent < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Webhooks::PlanDefaultVersionSetStandardWebhookEvent,
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
            Orb::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::PayloadStyle::TaggedSymbol
          )
        end
        attr_accessor :payload_style

        sig do
          returns(
            Orb::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::Plan
          )
        end
        attr_reader :plan

        sig do
          params(
            plan:
              Orb::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::Plan::OrHash
          ).void
        end
        attr_writer :plan

        sig do
          returns(
            Orb::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::Properties
          )
        end
        attr_reader :properties

        sig do
          params(
            properties:
              Orb::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::Properties::OrHash
          ).void
        end
        attr_writer :properties

        # The event this payload describes.
        sig do
          returns(
            Orb::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # Issued when a plan's default version is set.
        sig do
          params(
            id: String,
            created_at: Time,
            payload_style:
              Orb::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::PayloadStyle::OrSymbol,
            plan:
              Orb::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::Plan::OrHash,
            properties:
              Orb::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::Properties::OrHash,
            type:
              Orb::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::Type::OrSymbol
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
                Orb::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::PayloadStyle::TaggedSymbol,
              plan:
                Orb::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::Plan,
              properties:
                Orb::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::Properties,
              type:
                Orb::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::Type::TaggedSymbol
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
                Orb::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::PayloadStyle
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXPANDED =
            T.let(
              :expanded,
              Orb::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )
          STANDARD =
            T.let(
              :standard,
              Orb::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::PayloadStyle::TaggedSymbol
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
                Orb::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::Plan,
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
                Orb::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::Properties,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :new_default_version_number

          sig { returns(Integer) }
          attr_accessor :previous_default_version_number

          sig do
            params(
              new_default_version_number: Integer,
              previous_default_version_number: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            new_default_version_number:,
            previous_default_version_number:
          )
          end

          sig do
            override.returns(
              {
                new_default_version_number: Integer,
                previous_default_version_number: Integer
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
                Orb::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PLAN_DEFAULT_VERSION_SET =
            T.let(
              :"plan.default_version_set",
              Orb::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::PlanDefaultVersionSetStandardWebhookEvent::Type::TaggedSymbol
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
