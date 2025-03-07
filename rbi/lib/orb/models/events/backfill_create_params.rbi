# typed: strong

module Orb
  module Models
    module Events
      class BackfillCreateParams < Orb::BaseModel
        extend Orb::RequestParameters::Converter
        include Orb::RequestParameters

        sig { returns(Time) }
        def timeframe_end
        end

        sig { params(_: Time).returns(Time) }
        def timeframe_end=(_)
        end

        sig { returns(Time) }
        def timeframe_start
        end

        sig { params(_: Time).returns(Time) }
        def timeframe_start=(_)
        end

        sig { returns(T.nilable(Time)) }
        def close_time
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def close_time=(_)
        end

        sig { returns(T.nilable(String)) }
        def customer_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def customer_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def deprecation_filter
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def deprecation_filter=(_)
        end

        sig { returns(T.nilable(String)) }
        def external_customer_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def external_customer_id=(_)
        end

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
