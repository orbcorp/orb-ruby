# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Metrics#fetch
    class MetricFetchParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute metric_id
      #
      #   @return [String]
      required :metric_id, String

      # @!method initialize(metric_id:, request_options: {})
      #   @param metric_id [String]
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
