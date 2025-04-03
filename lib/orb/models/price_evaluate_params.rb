# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Prices#evaluate
    class PriceEvaluateParams < Orb::Internal::Type::BaseModel
      # @!parse
      #   extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

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
      #     [computed property](/extensibility/advanced-metrics#computed-properties) used to
      #     filter the underlying billable metric
      #
      #   @return [String, nil]
      optional :filter, String, nil?: true

      # @!attribute [r] grouping_keys
      #   Properties (or
      #     [computed properties](/extensibility/advanced-metrics#computed-properties)) used
      #     to group the underlying billable metric
      #
      #   @return [Array<String>, nil]
      optional :grouping_keys, Orb::Internal::Type::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :grouping_keys

      # @!parse
      #   # @param timeframe_end [Time]
      #   # @param timeframe_start [Time]
      #   # @param customer_id [String, nil]
      #   # @param external_customer_id [String, nil]
      #   # @param filter [String, nil]
      #   # @param grouping_keys [Array<String>]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     timeframe_end:,
      #     timeframe_start:,
      #     customer_id: nil,
      #     external_customer_id: nil,
      #     filter: nil,
      #     grouping_keys: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void
    end
  end
end
