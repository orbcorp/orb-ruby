# typed: strong

module Orb
  module Models
    module Events
      class BackfillCreateParams < Orb::BaseModel
        extend Orb::RequestParameters::Converter
        include Orb::RequestParameters

        sig { returns(Time) }
        attr_accessor :timeframe_end

        sig { returns(Time) }
        attr_accessor :timeframe_start

        sig { returns(T.nilable(Time)) }
        attr_accessor :close_time

        sig { returns(T.nilable(String)) }
        attr_accessor :customer_id

        sig { returns(T.nilable(String)) }
        attr_accessor :deprecation_filter

        sig { returns(T.nilable(String)) }
        attr_accessor :external_customer_id

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
            request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(
          timeframe_end:,
          timeframe_start:,
          close_time: nil,
          customer_id: nil,
          deprecation_filter: nil,
          external_customer_id: nil,
          replace_existing_events: nil,
          request_options: {}
        ); end

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
        def to_hash; end
      end
    end
  end
end
