# typed: strong

module Orb
  module Models
    module Events
      class BackfillCreateParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Orb::Events::BackfillCreateParams, Orb::Internal::AnyHash)
          end

        # The (exclusive) end of the usage timeframe affected by this backfill. By
        # default, Orb allows backfills up to 31 days in duration at a time. Reach out to
        # discuss extending this limit and your use case.
        sig { returns(Time) }
        attr_accessor :timeframe_end

        # The (inclusive) start of the usage timeframe affected by this backfill. By
        # default, Orb allows backfills up to 31 days in duration at a time. Reach out to
        # discuss extending this limit and your use case.
        sig { returns(Time) }
        attr_accessor :timeframe_start

        # The time at which no more events will be accepted for this backfill. The
        # backfill will automatically begin reflecting throughout Orb at the close time.
        # If not specified, it will default to 1 day after the creation of the backfill.
        sig { returns(T.nilable(Time)) }
        attr_accessor :close_time

        # The Orb-generated ID of the customer to which this backfill is scoped. Omitting
        # this field will scope the backfill to all customers.
        sig { returns(T.nilable(String)) }
        attr_accessor :customer_id

        # A boolean
        # [computed property](/extensibility/advanced-metrics#computed-properties) used to
        # filter the set of events to deprecate
        sig { returns(T.nilable(String)) }
        attr_accessor :deprecation_filter

        # The external customer ID of the customer to which this backfill is scoped.
        # Omitting this field will scope the backfill to all customers.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_customer_id

        # If true, replaces all existing events in the timeframe with the newly ingested
        # events. If false, adds the newly ingested events to the existing events.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :replace_existing_events

        sig { params(replace_existing_events: T::Boolean).void }
        attr_writer :replace_existing_events

        sig do
          params(
            timeframe_end: Time,
            timeframe_start: Time,
            close_time: T.nilable(Time),
            customer_id: T.nilable(String),
            deprecation_filter: T.nilable(String),
            external_customer_id: T.nilable(String),
            replace_existing_events: T::Boolean,
            request_options: Orb::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The (exclusive) end of the usage timeframe affected by this backfill. By
          # default, Orb allows backfills up to 31 days in duration at a time. Reach out to
          # discuss extending this limit and your use case.
          timeframe_end:,
          # The (inclusive) start of the usage timeframe affected by this backfill. By
          # default, Orb allows backfills up to 31 days in duration at a time. Reach out to
          # discuss extending this limit and your use case.
          timeframe_start:,
          # The time at which no more events will be accepted for this backfill. The
          # backfill will automatically begin reflecting throughout Orb at the close time.
          # If not specified, it will default to 1 day after the creation of the backfill.
          close_time: nil,
          # The Orb-generated ID of the customer to which this backfill is scoped. Omitting
          # this field will scope the backfill to all customers.
          customer_id: nil,
          # A boolean
          # [computed property](/extensibility/advanced-metrics#computed-properties) used to
          # filter the set of events to deprecate
          deprecation_filter: nil,
          # The external customer ID of the customer to which this backfill is scoped.
          # Omitting this field will scope the backfill to all customers.
          external_customer_id: nil,
          # If true, replaces all existing events in the timeframe with the newly ingested
          # events. If false, adds the newly ingested events to the existing events.
          replace_existing_events: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              timeframe_end: Time,
              timeframe_start: Time,
              close_time: T.nilable(Time),
              customer_id: T.nilable(String),
              deprecation_filter: T.nilable(String),
              external_customer_id: T.nilable(String),
              replace_existing_events: T::Boolean,
              request_options: Orb::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
