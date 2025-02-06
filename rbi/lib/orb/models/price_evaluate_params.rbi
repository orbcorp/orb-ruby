# typed: strong

module Orb
  module Models
    class PriceEvaluateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            timeframe_end: Time,
            timeframe_start: Time,
            customer_id: T.nilable(String),
            external_customer_id: T.nilable(String),
            filter: T.nilable(String),
            grouping_keys: T::Array[String]
          },
          Orb::RequestParameters::Shape
        )
      end

      sig { returns(Time) }
      attr_accessor :timeframe_end

      sig { returns(Time) }
      attr_accessor :timeframe_start

      sig { returns(T.nilable(String)) }
      attr_accessor :customer_id

      sig { returns(T.nilable(String)) }
      attr_accessor :external_customer_id

      sig { returns(T.nilable(String)) }
      attr_accessor :filter

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
          request_options: Orb::RequestOpts
        ).void
      end
      def initialize(
        timeframe_end:,
        timeframe_start:,
        customer_id: nil,
        external_customer_id: nil,
        filter: nil,
        grouping_keys: nil,
        request_options: {}
      ); end

      sig { returns(Orb::Models::PriceEvaluateParams::Shape) }
      def to_h; end
    end
  end
end
