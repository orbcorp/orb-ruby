# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Subscriptions#fetch_usage
    class SubscriptionFetchUsageParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute billable_metric_id
      #   When specified in conjunction with `group_by`, this parameter filters usage to a
      #   single billable metric. Note that both `group_by` and `billable_metric_id` must
      #   be specified together.
      #
      #   @return [String, nil]
      optional :billable_metric_id, String, nil?: true

      # @!attribute first_dimension_key
      #
      #   @return [String, nil]
      optional :first_dimension_key, String, nil?: true

      # @!attribute first_dimension_value
      #
      #   @return [String, nil]
      optional :first_dimension_value, String, nil?: true

      # @!attribute granularity
      #   This determines the windowing of usage reporting.
      #
      #   @return [Symbol, Orb::Models::SubscriptionFetchUsageParams::Granularity, nil]
      optional :granularity, enum: -> { Orb::Models::SubscriptionFetchUsageParams::Granularity }, nil?: true

      # @!attribute group_by
      #   Groups per-price usage by the key provided.
      #
      #   @return [String, nil]
      optional :group_by, String, nil?: true

      # @!attribute second_dimension_key
      #
      #   @return [String, nil]
      optional :second_dimension_key, String, nil?: true

      # @!attribute second_dimension_value
      #
      #   @return [String, nil]
      optional :second_dimension_value, String, nil?: true

      # @!attribute timeframe_end
      #   Usage returned is exclusive of `timeframe_end`.
      #
      #   @return [Time, nil]
      optional :timeframe_end, Time, nil?: true

      # @!attribute timeframe_start
      #   Usage returned is inclusive of `timeframe_start`.
      #
      #   @return [Time, nil]
      optional :timeframe_start, Time, nil?: true

      # @!attribute view_mode
      #   Controls whether Orb returns cumulative usage since the start of the billing
      #   period, or incremental day-by-day usage. If your customer has minimums or
      #   discounts, it's strongly recommended that you use the default cumulative
      #   behavior.
      #
      #   @return [Symbol, Orb::Models::SubscriptionFetchUsageParams::ViewMode, nil]
      optional :view_mode, enum: -> { Orb::Models::SubscriptionFetchUsageParams::ViewMode }, nil?: true

      # @!method initialize(billable_metric_id: nil, first_dimension_key: nil, first_dimension_value: nil, granularity: nil, group_by: nil, second_dimension_key: nil, second_dimension_value: nil, timeframe_end: nil, timeframe_start: nil, view_mode: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::SubscriptionFetchUsageParams} for more details.
      #
      #   @param billable_metric_id [String, nil] When specified in conjunction with `group_by`, this parameter filters usage to a
      #   ...
      #
      #   @param first_dimension_key [String, nil]
      #
      #   @param first_dimension_value [String, nil]
      #
      #   @param granularity [Symbol, Orb::Models::SubscriptionFetchUsageParams::Granularity, nil] This determines the windowing of usage reporting.
      #
      #   @param group_by [String, nil] Groups per-price usage by the key provided.
      #
      #   @param second_dimension_key [String, nil]
      #
      #   @param second_dimension_value [String, nil]
      #
      #   @param timeframe_end [Time, nil] Usage returned is exclusive of `timeframe_end`.
      #
      #   @param timeframe_start [Time, nil] Usage returned is inclusive of `timeframe_start`.
      #
      #   @param view_mode [Symbol, Orb::Models::SubscriptionFetchUsageParams::ViewMode, nil] Controls whether Orb returns cumulative usage since the start of the billing per
      #   ...
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      # This determines the windowing of usage reporting.
      module Granularity
        extend Orb::Internal::Type::Enum

        DAY = :day

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Controls whether Orb returns cumulative usage since the start of the billing
      # period, or incremental day-by-day usage. If your customer has minimums or
      # discounts, it's strongly recommended that you use the default cumulative
      # behavior.
      module ViewMode
        extend Orb::Internal::Type::Enum

        PERIODIC = :periodic
        CUMULATIVE = :cumulative

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
