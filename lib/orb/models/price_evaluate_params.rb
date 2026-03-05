# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Prices#evaluate
    class PriceEvaluateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute price_id
      #
      #   @return [String]
      required :price_id, String

      # @!attribute timeframe_end
      #   The exclusive upper bound for event timestamps
      #
      #   @return [Time]
      required :timeframe_end, Time

      # @!attribute timeframe_start
      #   The inclusive lower bound for event timestamps
      #
      #   @return [Time]
      required :timeframe_start, Time

      # @!attribute customer_id
      #   The ID of the customer to which this evaluation is scoped.
      #
      #   @return [String, nil]
      optional :customer_id, String, nil?: true

      # @!attribute external_customer_id
      #   The external customer ID of the customer to which this evaluation is scoped.
      #
      #   @return [String, nil]
      optional :external_customer_id, String, nil?: true

      # @!attribute filter
      #   A boolean
      #   [computed property](/extensibility/advanced-metrics#computed-properties) used to
      #   filter the underlying billable metric
      #
      #   @return [String, nil]
      optional :filter, String, nil?: true

      # @!attribute grouping_keys
      #   Properties (or
      #   [computed properties](/extensibility/advanced-metrics#computed-properties)) used
      #   to group the underlying billable metric
      #
      #   @return [Array<String>, nil]
      optional :grouping_keys, Orb::Internal::Type::ArrayOf[String]

      # @!attribute metric_parameter_overrides
      #   Optional overrides for parameterized billable metric parameters. If the metric
      #   has parameter definitions and no overrides are provided, defaults will be used.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metric_parameter_overrides,
               Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown],
               nil?: true

      # @!method initialize(price_id:, timeframe_end:, timeframe_start:, customer_id: nil, external_customer_id: nil, filter: nil, grouping_keys: nil, metric_parameter_overrides: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::PriceEvaluateParams} for more details.
      #
      #   @param price_id [String]
      #
      #   @param timeframe_end [Time] The exclusive upper bound for event timestamps
      #
      #   @param timeframe_start [Time] The inclusive lower bound for event timestamps
      #
      #   @param customer_id [String, nil] The ID of the customer to which this evaluation is scoped.
      #
      #   @param external_customer_id [String, nil] The external customer ID of the customer to which this evaluation is scoped.
      #
      #   @param filter [String, nil] A boolean [computed property](/extensibility/advanced-metrics#computed-propertie
      #
      #   @param grouping_keys [Array<String>] Properties (or [computed properties](/extensibility/advanced-metrics#computed-pr
      #
      #   @param metric_parameter_overrides [Hash{Symbol=>Object}, nil] Optional overrides for parameterized billable metric parameters. If the metric h
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
