# frozen_string_literal: true

module Orb
  module Models
    class CustomerMinified < Orb::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute external_customer_id
      #
      #   @return [String, nil]
      required :external_customer_id, String, nil?: true

      # @!method initialize(id:, external_customer_id:)
      #   @param id [String]
      #   @param external_customer_id [String, nil]
    end
  end
end
