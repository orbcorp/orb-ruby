# frozen_string_literal: true

module Orb
  module Models
    class TopUpsModel < Orb::BaseModel
      # @!attribute data
      #
      #   @return [Array<Orb::Models::TopUpModel>]
      required :data, -> { Orb::ArrayOf[Orb::Models::TopUpModel] }

      # @!attribute pagination_metadata
      #
      #   @return [Orb::Models::PaginationMetadata]
      required :pagination_metadata, -> { Orb::Models::PaginationMetadata }

      # @!parse
      #   # @param data [Array<Orb::Models::TopUpModel>]
      #   # @param pagination_metadata [Orb::Models::PaginationMetadata]
      #   #
      #   def initialize(data:, pagination_metadata:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
