# frozen_string_literal: true

module Orb
  module Models
    class PaginationMetadata < Orb::Internal::Type::BaseModel
      # @!attribute has_more
      #
      #   @return [Boolean]
      required :has_more, Orb::Internal::Type::Boolean

      # @!attribute next_cursor
      #
      #   @return [String, nil]
      required :next_cursor, String, nil?: true

      # @!parse
      #   # @param has_more [Boolean]
      #   # @param next_cursor [String, nil]
      #   #
      #   def initialize(has_more:, next_cursor:, **) = super

      # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void
    end
  end
end
