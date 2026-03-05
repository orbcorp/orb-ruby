# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::CreditBlocks#retrieve
    class CreditBlockRetrieveParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute block_id
      #
      #   @return [String]
      required :block_id, String

      # @!method initialize(block_id:, request_options: {})
      #   @param block_id [String]
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
