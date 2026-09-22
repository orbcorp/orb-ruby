# typed: strong

module Orb
  module Models
    class BackfillRevertedWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::BackfillRevertedWebhookEvent, Orb::Internal::AnyHash)
        end

      # The ID of this webhook event.
      sig { returns(String) }
      attr_accessor :id

      # A backfill represents an update to historical usage data, adding or replacing
      # events in a timeframe.
      sig { returns(Orb::BackfillRevertedWebhookEvent::Backfill) }
      attr_reader :backfill

      sig do
        params(
          backfill: Orb::BackfillRevertedWebhookEvent::Backfill::OrHash
        ).void
      end
      attr_writer :backfill

      # The time at which this event was created, to the second.
      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.anything) }
      attr_accessor :properties

      # The event this payload describes.
      sig { returns(Orb::BackfillRevertedWebhookEvent::Type::TaggedSymbol) }
      attr_accessor :type

      # Issued when a backfill is reverted, removing its events from usage.
      sig do
        params(
          id: String,
          backfill: Orb::BackfillRevertedWebhookEvent::Backfill::OrHash,
          created_at: Time,
          properties: T.anything,
          type: Orb::BackfillRevertedWebhookEvent::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of this webhook event.
        id:,
        # A backfill represents an update to historical usage data, adding or replacing
        # events in a timeframe.
        backfill:,
        # The time at which this event was created, to the second.
        created_at:,
        properties:,
        # The event this payload describes.
        type:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            backfill: Orb::BackfillRevertedWebhookEvent::Backfill,
            created_at: Time,
            properties: T.anything,
            type: Orb::BackfillRevertedWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Backfill < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::BackfillRevertedWebhookEvent::Backfill,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # If in the future, the time at which the backfill will automatically close. If in
        # the past, the time at which the backfill was closed.
        sig { returns(T.nilable(Time)) }
        attr_accessor :close_time

        sig { returns(Time) }
        attr_accessor :created_at

        # The Orb-generated ID of the customer to which this backfill is scoped. If
        # `null`, this backfill is scoped to all customers.
        sig { returns(T.nilable(String)) }
        attr_accessor :customer_id

        # The number of events ingested in this backfill.
        sig { returns(Integer) }
        attr_accessor :events_ingested

        # If `true`, existing events in the backfill's timeframe will be replaced with the
        # newly ingested events associated with the backfill. If `false`, newly ingested
        # events will be added to the existing events.
        sig { returns(T::Boolean) }
        attr_accessor :replace_existing_events

        # The time at which this backfill was reverted.
        sig { returns(T.nilable(Time)) }
        attr_accessor :reverted_at

        # The status of the backfill.
        sig do
          returns(
            Orb::BackfillRevertedWebhookEvent::Backfill::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig { returns(Time) }
        attr_accessor :timeframe_end

        sig { returns(Time) }
        attr_accessor :timeframe_start

        # A boolean
        # [computed property](/extensibility/advanced-metrics#computed-properties) used to
        # filter the set of events to deprecate
        sig { returns(T.nilable(String)) }
        attr_accessor :deprecation_filter

        # A backfill represents an update to historical usage data, adding or replacing
        # events in a timeframe.
        sig do
          params(
            id: String,
            close_time: T.nilable(Time),
            created_at: Time,
            customer_id: T.nilable(String),
            events_ingested: Integer,
            replace_existing_events: T::Boolean,
            reverted_at: T.nilable(Time),
            status:
              Orb::BackfillRevertedWebhookEvent::Backfill::Status::OrSymbol,
            timeframe_end: Time,
            timeframe_start: Time,
            deprecation_filter: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # If in the future, the time at which the backfill will automatically close. If in
          # the past, the time at which the backfill was closed.
          close_time:,
          created_at:,
          # The Orb-generated ID of the customer to which this backfill is scoped. If
          # `null`, this backfill is scoped to all customers.
          customer_id:,
          # The number of events ingested in this backfill.
          events_ingested:,
          # If `true`, existing events in the backfill's timeframe will be replaced with the
          # newly ingested events associated with the backfill. If `false`, newly ingested
          # events will be added to the existing events.
          replace_existing_events:,
          # The time at which this backfill was reverted.
          reverted_at:,
          # The status of the backfill.
          status:,
          timeframe_end:,
          timeframe_start:,
          # A boolean
          # [computed property](/extensibility/advanced-metrics#computed-properties) used to
          # filter the set of events to deprecate
          deprecation_filter: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              close_time: T.nilable(Time),
              created_at: Time,
              customer_id: T.nilable(String),
              events_ingested: Integer,
              replace_existing_events: T::Boolean,
              reverted_at: T.nilable(Time),
              status:
                Orb::BackfillRevertedWebhookEvent::Backfill::Status::TaggedSymbol,
              timeframe_end: Time,
              timeframe_start: Time,
              deprecation_filter: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # The status of the backfill.
        module Status
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::BackfillRevertedWebhookEvent::Backfill::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Orb::BackfillRevertedWebhookEvent::Backfill::Status::TaggedSymbol
            )
          REFLECTED =
            T.let(
              :reflected,
              Orb::BackfillRevertedWebhookEvent::Backfill::Status::TaggedSymbol
            )
          PENDING_REVERT =
            T.let(
              :pending_revert,
              Orb::BackfillRevertedWebhookEvent::Backfill::Status::TaggedSymbol
            )
          REVERTED =
            T.let(
              :reverted,
              Orb::BackfillRevertedWebhookEvent::Backfill::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::BackfillRevertedWebhookEvent::Backfill::Status::TaggedSymbol
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
            T.all(Symbol, Orb::BackfillRevertedWebhookEvent::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BACKFILL_REVERTED =
          T.let(
            :"backfill.reverted",
            Orb::BackfillRevertedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::BackfillRevertedWebhookEvent::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
