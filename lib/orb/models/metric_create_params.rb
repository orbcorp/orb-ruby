# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Metrics#create
    class MetricCreateParams < Orb::BaseModel
      # @!parse
      #   extend Orb::Internal::Type::RequestParameters::Converter
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
      #     by setting the value to `null`, and the entire metadata mapping can be cleared
      #     by setting `metadata` to `null`.
      #
      #   @return [Hash{Symbol=>String, nil}, nil]
      optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

      # @!parse
      #   # @param description [String, nil]
      #   # @param item_id [String]
      #   # @param name [String]
      #   # @param sql [String]
      #   # @param metadata [Hash{Symbol=>String, nil}, nil]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(description:, item_id:, name:, sql:, metadata: nil, request_options: {}, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
