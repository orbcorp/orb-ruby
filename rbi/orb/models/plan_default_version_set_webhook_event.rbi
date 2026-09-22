# typed: strong

module Orb
  module Models
    class PlanDefaultVersionSetWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::PlanDefaultVersionSetWebhookEvent, Orb::Internal::AnyHash)
        end

      # The ID of this webhook event.
      sig { returns(String) }
      attr_accessor :id

      # The time at which this event was created, to the second.
      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Orb::PlanDefaultVersionSetWebhookEvent::Plan) }
      attr_reader :plan

      sig do
        params(plan: Orb::PlanDefaultVersionSetWebhookEvent::Plan::OrHash).void
      end
      attr_writer :plan

      sig { returns(Orb::PlanDefaultVersionSetWebhookEvent::Properties) }
      attr_reader :properties

      sig do
        params(
          properties: Orb::PlanDefaultVersionSetWebhookEvent::Properties::OrHash
        ).void
      end
      attr_writer :properties

      # The event this payload describes.
      sig do
        returns(Orb::PlanDefaultVersionSetWebhookEvent::Type::TaggedSymbol)
      end
      attr_accessor :type

      # Issued when a plan's default version is set.
      sig do
        params(
          id: String,
          created_at: Time,
          plan: Orb::PlanDefaultVersionSetWebhookEvent::Plan::OrHash,
          properties:
            Orb::PlanDefaultVersionSetWebhookEvent::Properties::OrHash,
          type: Orb::PlanDefaultVersionSetWebhookEvent::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of this webhook event.
        id:,
        # The time at which this event was created, to the second.
        created_at:,
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
            plan: Orb::PlanDefaultVersionSetWebhookEvent::Plan,
            properties: Orb::PlanDefaultVersionSetWebhookEvent::Properties,
            type: Orb::PlanDefaultVersionSetWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Plan < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PlanDefaultVersionSetWebhookEvent::Plan,
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
              Orb::PlanDefaultVersionSetWebhookEvent::Properties,
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
            T.all(Symbol, Orb::PlanDefaultVersionSetWebhookEvent::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PLAN_DEFAULT_VERSION_SET =
          T.let(
            :"plan.default_version_set",
            Orb::PlanDefaultVersionSetWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::PlanDefaultVersionSetWebhookEvent::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
