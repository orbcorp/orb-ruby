# typed: strong

module Orb
  module Models
    module Events
      class BackfillCreateParams < Orb::BaseModel
        extend Orb::RequestParameters::Converter
        include Orb::RequestParameters

        # The (exclusive) end of the usage timeframe affected by this backfill. By
        #   default, Orb allows backfills up to 10 days in duration at a time. Reach out to
        #   discuss extending this limit and your use case.
        sig { returns(Time) }
        def timeframe_end
        end

        sig { params(_: Time).returns(Time) }
        def timeframe_end=(_)
        end

        # The (inclusive) start of the usage timeframe affected by this backfill. By
        #   default, Orb allows backfills up to 10 days in duration at a time. Reach out to
        #   discuss extending this limit and your use case.
        sig { returns(Time) }
        def timeframe_start
        end

        sig { params(_: Time).returns(Time) }
        def timeframe_start=(_)
        end

        # The time at which no more events will be accepted for this backfill. The
        #   backfill will automatically begin reflecting throughout Orb at the close time.
        #   If not specified, it will default to 1 day after the creation of the backfill.
        sig { returns(T.nilable(Time)) }
        def close_time
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def close_time=(_)
        end

        # The Orb-generated ID of the customer to which this backfill is scoped. Omitting
        #   this field will scope the backfill to all customers.
        sig { returns(T.nilable(String)) }
        def customer_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def customer_id=(_)
        end

        # A boolean
        #   [computed property](/extensibility/advanced-metrics#computed-properties) used to
        #   filter the set of events to deprecate
        sig { returns(T.nilable(String)) }
        def deprecation_filter
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def deprecation_filter=(_)
        end

        # The external customer ID of the customer to which this backfill is scoped.
        #   Omitting this field will scope the backfill to all customers.
        sig { returns(T.nilable(String)) }
        def external_customer_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def external_customer_id=(_)
        end

        # If true, replaces all existing events in the timeframe with the newly ingested
        #   events. If false, adds the newly ingested events to the existing events.
        sig { returns(T.nilable(T::Boolean)) }
        def replace_existing_events
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def replace_existing_events=(_)
        end

        sig do
          params(
            timeframe_end: Time,
            timeframe_start: Time,
            close_time: T.nilable(Time),
            customer_id: T.nilable(String),
            deprecation_filter: T.nilable(String),
            external_customer_id: T.nilable(String),
            replace_existing_events: T::Boolean,
            request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(
          timeframe_end:,
          timeframe_start:,
          close_time: nil,
          customer_id: nil,
          deprecation_filter: nil,
          external_customer_id: nil,
          replace_existing_events: nil,
          request_options: {}
        )
        end

        sig do
          override
            .returns(
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
