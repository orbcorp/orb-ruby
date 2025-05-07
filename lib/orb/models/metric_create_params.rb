# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Metrics#create
    class MetricCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute description
      #   A description of the metric.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute item_id
      #   The id of the item
      #
      #   @return [String]
      required :item_id, String

      # @!attribute name
      #   The name of the metric.
      #
      #   @return [String]
      required :name, String

      # @!attribute sql
      #   A sql string defining the metric.
      #
      #   @return [String]
      required :sql, String

      # @!attribute metadata
      #   User-specified key/value pairs for the resource. Individual keys can be removed
      #   by setting the value to `null`, and the entire metadata mapping can be cleared
      #   by setting `metadata` to `null`.
      #
      #   @return [Hash{Symbol=>String, nil}, nil]
      optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

      # @!method initialize(description:, item_id:, name:, sql:, metadata: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::MetricCreateParams} for more details.
      #
      #   @param description [String, nil] A description of the metric.
      #
      #   @param item_id [String] The id of the item
      #
      #   @param name [String] The name of the metric.
      #
      #   @param sql [String] A sql string defining the metric.
      #
      #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
