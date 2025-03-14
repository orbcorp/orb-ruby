# typed: strong

module Orb
  module Models
    class PriceEvaluateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # The exclusive upper bound for event timestamps
      sig { returns(Time) }
      def timeframe_end
      end

      sig { params(_: Time).returns(Time) }
      def timeframe_end=(_)
      end

      # The inclusive lower bound for event timestamps
      sig { returns(Time) }
      def timeframe_start
      end

      sig { params(_: Time).returns(Time) }
      def timeframe_start=(_)
      end

      # The ID of the customer to which this evaluation is scoped.
      sig { returns(T.nilable(String)) }
      def customer_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def customer_id=(_)
      end

      # The external customer ID of the customer to which this evaluation is scoped.
      sig { returns(T.nilable(String)) }
      def external_customer_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_customer_id=(_)
      end

      # A boolean
      #   [computed property](/extensibility/advanced-metrics#computed-properties) used to
      #   filter the underlying billable metric
      sig { returns(T.nilable(String)) }
      def filter
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def filter=(_)
      end

      # Properties (or
      #   [computed properties](/extensibility/advanced-metrics#computed-properties)) used
      #   to group the underlying billable metric
      sig { returns(T.nilable(T::Array[String])) }
      def grouping_keys
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def grouping_keys=(_)
      end

      sig do
        params(
          timeframe_end: Time,
          timeframe_start: Time,
          customer_id: T.nilable(String),
          external_customer_id: T.nilable(String),
          filter: T.nilable(String),
          grouping_keys: T::Array[String],
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        timeframe_end:,
        timeframe_start:,
        customer_id: nil,
        external_customer_id: nil,
        filter: nil,
        grouping_keys: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              timeframe_end: Time,
              timeframe_start: Time,
              customer_id: T.nilable(String),
              external_customer_id: T.nilable(String),
              filter: T.nilable(String),
              grouping_keys: T::Array[String],
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
