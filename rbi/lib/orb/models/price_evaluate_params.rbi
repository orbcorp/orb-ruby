# typed: strong

module Orb
  module Models
    class PriceEvaluateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # The exclusive upper bound for event timestamps
      sig { returns(Time) }
      attr_accessor :timeframe_end

      # The inclusive lower bound for event timestamps
      sig { returns(Time) }
      attr_accessor :timeframe_start

      # The ID of the customer to which this evaluation is scoped.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_id

      # The external customer ID of the customer to which this evaluation is scoped.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_customer_id

      # A boolean
      #   [computed property](/extensibility/advanced-metrics#computed-properties) used to
      #   filter the underlying billable metric
      sig { returns(T.nilable(String)) }
      attr_accessor :filter

      # Properties (or
      #   [computed properties](/extensibility/advanced-metrics#computed-properties)) used
      #   to group the underlying billable metric
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :grouping_keys

      sig { params(grouping_keys: T::Array[String]).void }
      attr_writer :grouping_keys

      sig do
        params(
          timeframe_end: Time,
          timeframe_start: Time,
          customer_id: T.nilable(String),
          external_customer_id: T.nilable(String),
          filter: T.nilable(String),
          grouping_keys: T::Array[String],
          request_options: T.any(Orb::RequestOptions, Orb::Internal::AnyHash)
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
