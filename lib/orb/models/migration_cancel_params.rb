# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Migrations#cancel
    class MigrationCancelParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute migration_id
      #
      #   @return [String]
      required :migration_id, String

      # @!method initialize(migration_id:, request_options: {})
      #   @param migration_id [String]
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
