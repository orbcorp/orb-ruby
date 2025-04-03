# frozen_string_literal: true

module Orb
  module Models
    module Events
      # @see Orb::Resources::Events::Backfills#fetch
      class BackfillFetchParams < Orb::BaseModel
        # @!parse
        #   extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!parse
        #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(request_options: {}, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end
    end
  end
end
