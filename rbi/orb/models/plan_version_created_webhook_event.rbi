# typed: strong

module Orb
  module Models
    class PlanVersionCreatedWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::PlanVersionCreatedWebhookEvent, Orb::Internal::AnyHash)
        end

      # The ID of this webhook event.
      sig { returns(String) }
      attr_accessor :id

      # The time at which this event was created, to the second.
      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Orb::PlanVersionCreatedWebhookEvent::Plan) }
      attr_reader :plan

      sig do
        params(plan: Orb::PlanVersionCreatedWebhookEvent::Plan::OrHash).void
      end
      attr_writer :plan

      sig { returns(Orb::PlanVersionCreatedWebhookEvent::Properties) }
      attr_reader :properties

      sig do
        params(
          properties: Orb::PlanVersionCreatedWebhookEvent::Properties::OrHash
        ).void
      end
      attr_writer :properties

      # The event this payload describes.
      sig { returns(Orb::PlanVersionCreatedWebhookEvent::Type::TaggedSymbol) }
      attr_accessor :type

      # Issued when a new plan version is created.
      sig do
        params(
          id: String,
          created_at: Time,
          plan: Orb::PlanVersionCreatedWebhookEvent::Plan::OrHash,
          properties: Orb::PlanVersionCreatedWebhookEvent::Properties::OrHash,
          type: Orb::PlanVersionCreatedWebhookEvent::Type::OrSymbol
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
            plan: Orb::PlanVersionCreatedWebhookEvent::Plan,
            properties: Orb::PlanVersionCreatedWebhookEvent::Properties,
            type: Orb::PlanVersionCreatedWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Plan < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PlanVersionCreatedWebhookEvent::Plan,
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
              Orb::PlanVersionCreatedWebhookEvent::Properties,
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
            T.all(Symbol, Orb::PlanVersionCreatedWebhookEvent::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PLAN_VERSION_CREATED =
          T.let(
            :"plan.version_created",
            Orb::PlanVersionCreatedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::PlanVersionCreatedWebhookEvent::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
