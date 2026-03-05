# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::CreditNotes#fetch
    class CreditNoteFetchParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute credit_note_id
      #
      #   @return [String]
      required :credit_note_id, String

      # @!method initialize(credit_note_id:, request_options: {})
      #   @param credit_note_id [String]
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
