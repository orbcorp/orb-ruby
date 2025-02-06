# typed: strong

module Orb
  module Models
    class SubscriptionFetchUsageParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            billable_metric_id: T.nilable(String),
            first_dimension_key: T.nilable(String),
            first_dimension_value: T.nilable(String),
            granularity: T.nilable(Symbol),
            group_by: T.nilable(String),
            second_dimension_key: T.nilable(String),
            second_dimension_value: T.nilable(String),
            timeframe_end: T.nilable(Time),
            timeframe_start: T.nilable(Time),
            view_mode: T.nilable(Symbol)
          },
          Orb::RequestParameters::Shape
        )
      end

      sig { returns(T.nilable(String)) }
      attr_accessor :billable_metric_id

      sig { returns(T.nilable(String)) }
      attr_accessor :first_dimension_key

      sig { returns(T.nilable(String)) }
      attr_accessor :first_dimension_value

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :granularity

      sig { returns(T.nilable(String)) }
      attr_accessor :group_by

      sig { returns(T.nilable(String)) }
      attr_accessor :second_dimension_key

      sig { returns(T.nilable(String)) }
      attr_accessor :second_dimension_value

      sig { returns(T.nilable(Time)) }
      attr_accessor :timeframe_end

      sig { returns(T.nilable(Time)) }
      attr_accessor :timeframe_start

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :view_mode

      sig do
        params(
          billable_metric_id: T.nilable(String),
          first_dimension_key: T.nilable(String),
          first_dimension_value: T.nilable(String),
          granularity: T.nilable(Symbol),
          group_by: T.nilable(String),
          second_dimension_key: T.nilable(String),
          second_dimension_value: T.nilable(String),
          timeframe_end: T.nilable(Time),
          timeframe_start: T.nilable(Time),
          view_mode: T.nilable(Symbol),
          request_options: Orb::RequestOpts
        ).void
      end
      def initialize(
        billable_metric_id: nil,
        first_dimension_key: nil,
        first_dimension_value: nil,
        granularity: nil,
        group_by: nil,
        second_dimension_key: nil,
        second_dimension_value: nil,
        timeframe_end: nil,
        timeframe_start: nil,
        view_mode: nil,
        request_options: {}
      ); end

      sig { returns(Orb::Models::SubscriptionFetchUsageParams::Shape) }
      def to_h; end

      class Granularity < Orb::Enum
        abstract!

        DAY = T.let(:day, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class ViewMode < Orb::Enum
        abstract!

        PERIODIC = T.let(:periodic, T.nilable(Symbol))
        CUMULATIVE = T.let(:cumulative, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
