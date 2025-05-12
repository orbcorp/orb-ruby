# typed: strong

module Orb
  module Models
    class SubscriptionFetchUsageParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::SubscriptionFetchUsageParams, Orb::Internal::AnyHash)
        end

      # When specified in conjunction with `group_by`, this parameter filters usage to a
      # single billable metric. Note that both `group_by` and `billable_metric_id` must
      # be specified together.
      sig { returns(T.nilable(String)) }
      attr_accessor :billable_metric_id

      sig { returns(T.nilable(String)) }
      attr_accessor :first_dimension_key

      sig { returns(T.nilable(String)) }
      attr_accessor :first_dimension_value

      # This determines the windowing of usage reporting.
      sig do
        returns(
          T.nilable(Orb::SubscriptionFetchUsageParams::Granularity::OrSymbol)
        )
      end
      attr_accessor :granularity

      # Groups per-price usage by the key provided.
      sig { returns(T.nilable(String)) }
      attr_accessor :group_by

      sig { returns(T.nilable(String)) }
      attr_accessor :second_dimension_key

      sig { returns(T.nilable(String)) }
      attr_accessor :second_dimension_value

      # Usage returned is exclusive of `timeframe_end`.
      sig { returns(T.nilable(Time)) }
      attr_accessor :timeframe_end

      # Usage returned is inclusive of `timeframe_start`.
      sig { returns(T.nilable(Time)) }
      attr_accessor :timeframe_start

      # Controls whether Orb returns cumulative usage since the start of the billing
      # period, or incremental day-by-day usage. If your customer has minimums or
      # discounts, it's strongly recommended that you use the default cumulative
      # behavior.
      sig do
        returns(
          T.nilable(Orb::SubscriptionFetchUsageParams::ViewMode::OrSymbol)
        )
      end
      attr_accessor :view_mode

      sig do
        params(
          billable_metric_id: T.nilable(String),
          first_dimension_key: T.nilable(String),
          first_dimension_value: T.nilable(String),
          granularity:
            T.nilable(Orb::SubscriptionFetchUsageParams::Granularity::OrSymbol),
          group_by: T.nilable(String),
          second_dimension_key: T.nilable(String),
          second_dimension_value: T.nilable(String),
          timeframe_end: T.nilable(Time),
          timeframe_start: T.nilable(Time),
          view_mode:
            T.nilable(Orb::SubscriptionFetchUsageParams::ViewMode::OrSymbol),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # When specified in conjunction with `group_by`, this parameter filters usage to a
        # single billable metric. Note that both `group_by` and `billable_metric_id` must
        # be specified together.
        billable_metric_id: nil,
        first_dimension_key: nil,
        first_dimension_value: nil,
        # This determines the windowing of usage reporting.
        granularity: nil,
        # Groups per-price usage by the key provided.
        group_by: nil,
        second_dimension_key: nil,
        second_dimension_value: nil,
        # Usage returned is exclusive of `timeframe_end`.
        timeframe_end: nil,
        # Usage returned is inclusive of `timeframe_start`.
        timeframe_start: nil,
        # Controls whether Orb returns cumulative usage since the start of the billing
        # period, or incremental day-by-day usage. If your customer has minimums or
        # discounts, it's strongly recommended that you use the default cumulative
        # behavior.
        view_mode: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            billable_metric_id: T.nilable(String),
            first_dimension_key: T.nilable(String),
            first_dimension_value: T.nilable(String),
            granularity:
              T.nilable(
                Orb::SubscriptionFetchUsageParams::Granularity::OrSymbol
              ),
            group_by: T.nilable(String),
            second_dimension_key: T.nilable(String),
            second_dimension_value: T.nilable(String),
            timeframe_end: T.nilable(Time),
            timeframe_start: T.nilable(Time),
            view_mode:
              T.nilable(Orb::SubscriptionFetchUsageParams::ViewMode::OrSymbol),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      # This determines the windowing of usage reporting.
      module Granularity
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::SubscriptionFetchUsageParams::Granularity)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DAY =
          T.let(
            :day,
            Orb::SubscriptionFetchUsageParams::Granularity::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::SubscriptionFetchUsageParams::Granularity::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Controls whether Orb returns cumulative usage since the start of the billing
      # period, or incremental day-by-day usage. If your customer has minimums or
      # discounts, it's strongly recommended that you use the default cumulative
      # behavior.
      module ViewMode
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::SubscriptionFetchUsageParams::ViewMode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PERIODIC =
          T.let(
            :periodic,
            Orb::SubscriptionFetchUsageParams::ViewMode::TaggedSymbol
          )
        CUMULATIVE =
          T.let(
            :cumulative,
            Orb::SubscriptionFetchUsageParams::ViewMode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::SubscriptionFetchUsageParams::ViewMode::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
