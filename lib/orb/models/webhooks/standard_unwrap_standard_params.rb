# frozen_string_literal: true

module Orb
  module Models
    module Webhooks
      # @see Orb::Resources::Webhooks::Standard#unwrap_standard
      class StandardUnwrapStandardParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
