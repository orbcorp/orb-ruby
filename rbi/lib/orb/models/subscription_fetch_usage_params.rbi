# typed: strong

module Orb
  module Models
    class SubscriptionFetchUsageParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T.nilable(String)) }
      def billable_metric_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def billable_metric_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def first_dimension_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def first_dimension_key=(_)
      end

      sig { returns(T.nilable(String)) }
      def first_dimension_value
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def first_dimension_value=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def granularity
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def granularity=(_)
      end

      sig { returns(T.nilable(String)) }
      def group_by
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def group_by=(_)
      end

      sig { returns(T.nilable(String)) }
      def second_dimension_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def second_dimension_key=(_)
      end

      sig { returns(T.nilable(String)) }
      def second_dimension_value
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def second_dimension_value=(_)
      end

      sig { returns(T.nilable(Time)) }
      def timeframe_end
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def timeframe_end=(_)
      end

      sig { returns(T.nilable(Time)) }
      def timeframe_start
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def timeframe_start=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def view_mode
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def view_mode=(_)
      end

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
            request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
          )
          .returns(T.attached_class)
      end
      def self.new(
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
      )
      end

      sig do
        override
          .returns(
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
              view_mode: T.nilable(Symbol),
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Granularity < Orb::Enum
        abstract!

        DAY = T.let(:day, T.nilable(Symbol))

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class ViewMode < Orb::Enum
        abstract!

        PERIODIC = T.let(:periodic, T.nilable(Symbol))
        CUMULATIVE = T.let(:cumulative, T.nilable(Symbol))

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
