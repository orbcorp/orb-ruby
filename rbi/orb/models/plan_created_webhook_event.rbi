# typed: strong

module Orb
  module Models
    class PlanCreatedWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::PlanCreatedWebhookEvent, Orb::Internal::AnyHash)
        end

      # The ID of this webhook event.
      sig { returns(String) }
      attr_accessor :id

      # The time at which this event was created, to the second.
      sig { returns(Time) }
      attr_accessor :created_at

      # The serialization style this payload was rendered in, as configured on the
      # endpoint.
      sig { returns(Orb::PlanCreatedWebhookEvent::PayloadStyle::TaggedSymbol) }
      attr_accessor :payload_style

      sig { returns(Orb::PlanCreatedWebhookEvent::Plan) }
      attr_reader :plan

      sig { params(plan: Orb::PlanCreatedWebhookEvent::Plan::OrHash).void }
      attr_writer :plan

      sig { returns(T.anything) }
      attr_accessor :properties

      # The event this payload describes.
      sig { returns(Orb::PlanCreatedWebhookEvent::Type::TaggedSymbol) }
      attr_accessor :type

      # Issued when a plan is created, or when a draft plan is published.
      sig do
        params(
          id: String,
          created_at: Time,
          payload_style: Orb::PlanCreatedWebhookEvent::PayloadStyle::OrSymbol,
          plan: Orb::PlanCreatedWebhookEvent::Plan::OrHash,
          properties: T.anything,
          type: Orb::PlanCreatedWebhookEvent::Type::OrSymbol
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
              Orb::PlanCreatedWebhookEvent::PayloadStyle::TaggedSymbol,
            plan: Orb::PlanCreatedWebhookEvent::Plan,
            properties: T.anything,
            type: Orb::PlanCreatedWebhookEvent::Type::TaggedSymbol
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
            T.all(Symbol, Orb::PlanCreatedWebhookEvent::PayloadStyle)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXPANDED =
          T.let(
            :expanded,
            Orb::PlanCreatedWebhookEvent::PayloadStyle::TaggedSymbol
          )
        STANDARD =
          T.let(
            :standard,
            Orb::PlanCreatedWebhookEvent::PayloadStyle::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::PlanCreatedWebhookEvent::PayloadStyle::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Plan < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::PlanCreatedWebhookEvent::Plan, Orb::Internal::AnyHash)
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
          T.type_alias { T.all(Symbol, Orb::PlanCreatedWebhookEvent::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PLAN_CREATED =
          T.let(
            :"plan.created",
            Orb::PlanCreatedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::PlanCreatedWebhookEvent::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
