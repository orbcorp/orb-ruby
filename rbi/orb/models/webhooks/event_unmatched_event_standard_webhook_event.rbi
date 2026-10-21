# typed: strong

module Orb
  module Models
    module Webhooks
      class EventUnmatchedEventStandardWebhookEvent < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Webhooks::EventUnmatchedEventStandardWebhookEvent,
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
            Orb::Webhooks::EventUnmatchedEventStandardWebhookEvent::PayloadStyle::TaggedSymbol
          )
        end
        attr_accessor :payload_style

        sig do
          returns(
            Orb::Webhooks::EventUnmatchedEventStandardWebhookEvent::Properties
          )
        end
        attr_reader :properties

        sig do
          params(
            properties:
              Orb::Webhooks::EventUnmatchedEventStandardWebhookEvent::Properties::OrHash
          ).void
        end
        attr_writer :properties

        # The event this payload describes.
        sig do
          returns(
            Orb::Webhooks::EventUnmatchedEventStandardWebhookEvent::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # Issued when an event does not match any customer.
        sig do
          params(
            id: String,
            created_at: Time,
            payload_style:
              Orb::Webhooks::EventUnmatchedEventStandardWebhookEvent::PayloadStyle::OrSymbol,
            properties:
              Orb::Webhooks::EventUnmatchedEventStandardWebhookEvent::Properties::OrHash,
            type:
              Orb::Webhooks::EventUnmatchedEventStandardWebhookEvent::Type::OrSymbol
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
                Orb::Webhooks::EventUnmatchedEventStandardWebhookEvent::PayloadStyle::TaggedSymbol,
              properties:
                Orb::Webhooks::EventUnmatchedEventStandardWebhookEvent::Properties,
              type:
                Orb::Webhooks::EventUnmatchedEventStandardWebhookEvent::Type::TaggedSymbol
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
                Orb::Webhooks::EventUnmatchedEventStandardWebhookEvent::PayloadStyle
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXPANDED =
            T.let(
              :expanded,
              Orb::Webhooks::EventUnmatchedEventStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )
          STANDARD =
            T.let(
              :standard,
              Orb::Webhooks::EventUnmatchedEventStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::EventUnmatchedEventStandardWebhookEvent::PayloadStyle::TaggedSymbol
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
                Orb::Webhooks::EventUnmatchedEventStandardWebhookEvent::Properties,
                Orb::Internal::AnyHash
              )
            end

          sig do
            returns(
              Orb::Webhooks::EventUnmatchedEventStandardWebhookEvent::Properties::Event
            )
          end
          attr_reader :event

          sig do
            params(
              event:
                Orb::Webhooks::EventUnmatchedEventStandardWebhookEvent::Properties::Event::OrHash
            ).void
          end
          attr_writer :event

          sig do
            params(
              event:
                Orb::Webhooks::EventUnmatchedEventStandardWebhookEvent::Properties::Event::OrHash
            ).returns(T.attached_class)
          end
          def self.new(event:)
          end

          sig do
            override.returns(
              {
                event:
                  Orb::Webhooks::EventUnmatchedEventStandardWebhookEvent::Properties::Event
              }
            )
          end
          def to_hash
          end

          class Event < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Webhooks::EventUnmatchedEventStandardWebhookEvent::Properties::Event,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_accessor :customer_id

            sig { returns(String) }
            attr_accessor :event_name

            sig { returns(T.nilable(String)) }
            attr_accessor :external_customer_id

            sig { returns(String) }
            attr_accessor :idempotency_key

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :properties

            sig { returns(Time) }
            attr_accessor :timestamp

            sig do
              params(
                customer_id: T.nilable(String),
                event_name: String,
                external_customer_id: T.nilable(String),
                idempotency_key: String,
                properties: T::Hash[Symbol, T.anything],
                timestamp: Time
              ).returns(T.attached_class)
            end
            def self.new(
              customer_id:,
              event_name:,
              external_customer_id:,
              idempotency_key:,
              properties:,
              timestamp:
            )
            end

            sig do
              override.returns(
                {
                  customer_id: T.nilable(String),
                  event_name: String,
                  external_customer_id: T.nilable(String),
                  idempotency_key: String,
                  properties: T::Hash[Symbol, T.anything],
                  timestamp: Time
                }
              )
            end
            def to_hash
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
                Orb::Webhooks::EventUnmatchedEventStandardWebhookEvent::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVENT_UNMATCHED_EVENT =
            T.let(
              :"event.unmatched_event",
              Orb::Webhooks::EventUnmatchedEventStandardWebhookEvent::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::EventUnmatchedEventStandardWebhookEvent::Type::TaggedSymbol
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
