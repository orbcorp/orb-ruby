# frozen_string_literal: true

module Orb
  module Models
    class UpdatePriceRequestParams < Orb::BaseModel
      # @!attribute metadata
      #   User-specified key/value pairs for the resource. Individual keys can be removed
      #     by setting the value to `null`, and the entire metadata mapping can be cleared
      #     by setting `metadata` to `null`.
      #
      #   @return [Hash{Symbol=>String, nil}, nil]
      optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

      # @!parse
      #   # @param metadata [Hash{Symbol=>String, nil}, nil]
      #   #
      #   def initialize(metadata: nil, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
