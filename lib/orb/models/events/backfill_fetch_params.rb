# frozen_string_literal: true

module Orb
  module Models
    module Events
      # @see Orb::Resources::Events::Backfills#fetch
      class BackfillFetchParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute backfill_id
        #
        #   @return [String]
        required :backfill_id, String

        # @!method initialize(backfill_id:, request_options: {})
        #   @param backfill_id [String]
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
