# typed: strong

module Orb
  module Models
    class PlanEditedWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::PlanEditedWebhookEvent, Orb::Internal::AnyHash)
        end

      # The ID of this webhook event.
      sig { returns(String) }
      attr_accessor :id

      # The time at which this event was created, to the second.
      sig { returns(Time) }
      attr_accessor :created_at

      # The [Plan](/core-concepts#plan-and-price) resource represents a plan that can be
      # subscribed to by a customer. Plans define the billing behavior of the
      # subscription. You can see more about how to configure prices in the
      # [Price resource](/reference/price).
      sig { returns(Orb::Plan) }
      attr_reader :plan

      sig { params(plan: Orb::Plan::OrHash).void }
      attr_writer :plan

      sig { returns(Orb::PlanEditedWebhookEvent::Properties) }
      attr_reader :properties

      sig do
        params(properties: Orb::PlanEditedWebhookEvent::Properties::OrHash).void
      end
      attr_writer :properties

      # The event this payload describes.
      sig { returns(Orb::PlanEditedWebhookEvent::Type::TaggedSymbol) }
      attr_accessor :type

      # Issued when a plan's name, description, external plan ID, metadata or status is
      # edited.
      sig do
        params(
          id: String,
          created_at: Time,
          plan: Orb::Plan::OrHash,
          properties: Orb::PlanEditedWebhookEvent::Properties::OrHash,
          type: Orb::PlanEditedWebhookEvent::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of this webhook event.
        id:,
        # The time at which this event was created, to the second.
        created_at:,
        # The [Plan](/core-concepts#plan-and-price) resource represents a plan that can be
        # subscribed to by a customer. Plans define the billing behavior of the
        # subscription. You can see more about how to configure prices in the
        # [Price resource](/reference/price).
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
            plan: Orb::Plan,
            properties: Orb::PlanEditedWebhookEvent::Properties,
            type: Orb::PlanEditedWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Properties < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PlanEditedWebhookEvent::Properties,
              Orb::Internal::AnyHash
            )
          end

        # metadata values are non-null on the wire, as on the price event.
        sig do
          returns(Orb::PlanEditedWebhookEvent::Properties::PreviousAttributes)
        end
        attr_reader :previous_attributes

        sig do
          params(
            previous_attributes:
              Orb::PlanEditedWebhookEvent::Properties::PreviousAttributes::OrHash
          ).void
        end
        attr_writer :previous_attributes

        sig do
          params(
            previous_attributes:
              Orb::PlanEditedWebhookEvent::Properties::PreviousAttributes::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # metadata values are non-null on the wire, as on the price event.
          previous_attributes:
        )
        end

        sig do
          override.returns(
            {
              previous_attributes:
                Orb::PlanEditedWebhookEvent::Properties::PreviousAttributes
            }
          )
        end
        def to_hash
        end

        class PreviousAttributes < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::PlanEditedWebhookEvent::Properties::PreviousAttributes,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_accessor :description

          sig { returns(T.nilable(String)) }
          attr_accessor :external_plan_id

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_accessor :metadata

          sig { returns(T.nilable(String)) }
          attr_accessor :name

          sig do
            returns(
              T.nilable(
                Orb::PlanEditedWebhookEvent::Properties::PreviousAttributes::Status::TaggedSymbol
              )
            )
          end
          attr_accessor :status

          # metadata values are non-null on the wire, as on the price event.
          sig do
            params(
              description: T.nilable(String),
              external_plan_id: T.nilable(String),
              metadata: T.nilable(T::Hash[Symbol, String]),
              name: T.nilable(String),
              status:
                T.nilable(
                  Orb::PlanEditedWebhookEvent::Properties::PreviousAttributes::Status::OrSymbol
                )
            ).returns(T.attached_class)
          end
          def self.new(
            description: nil,
            external_plan_id: nil,
            metadata: nil,
            name: nil,
            status: nil
          )
          end

          sig do
            override.returns(
              {
                description: T.nilable(String),
                external_plan_id: T.nilable(String),
                metadata: T.nilable(T::Hash[Symbol, String]),
                name: T.nilable(String),
                status:
                  T.nilable(
                    Orb::PlanEditedWebhookEvent::Properties::PreviousAttributes::Status::TaggedSymbol
                  )
              }
            )
          end
          def to_hash
          end

          module Status
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::PlanEditedWebhookEvent::Properties::PreviousAttributes::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                Orb::PlanEditedWebhookEvent::Properties::PreviousAttributes::Status::TaggedSymbol
              )
            ARCHIVED =
              T.let(
                :archived,
                Orb::PlanEditedWebhookEvent::Properties::PreviousAttributes::Status::TaggedSymbol
              )
            DRAFT =
              T.let(
                :draft,
                Orb::PlanEditedWebhookEvent::Properties::PreviousAttributes::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::PlanEditedWebhookEvent::Properties::PreviousAttributes::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      # The event this payload describes.
      module Type
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::PlanEditedWebhookEvent::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PLAN_EDITED =
          T.let(:"plan.edited", Orb::PlanEditedWebhookEvent::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Orb::PlanEditedWebhookEvent::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
