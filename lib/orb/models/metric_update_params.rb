# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Metrics#update
    class MetricUpdateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute metric_id
      #
      #   @return [String]
      required :metric_id, String

      # @!attribute description
      #   A description of the metric.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute metadata
      #   User-specified key/value pairs for the resource. Individual keys can be removed
      #   by setting the value to `null`, and the entire metadata mapping can be cleared
      #   by setting `metadata` to `null`.
      #
      #   @return [Hash{Symbol=>String, nil}, nil]
      optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

      # @!attribute name
      #   The name of the metric.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!method initialize(metric_id:, description: nil, metadata: nil, name: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::MetricUpdateParams} for more details.
      #
      #   @param metric_id [String]
      #
      #   @param description [String, nil] A description of the metric.
      #
      #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
      #
      #   @param name [String, nil] The name of the metric.
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
