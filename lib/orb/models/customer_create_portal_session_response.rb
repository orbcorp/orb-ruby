# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Customers#create_portal_session
    class CustomerCreatePortalSessionResponse < Orb::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute customer_id
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute expires_at
      #
      #   @return [Time, nil]
      required :expires_at, Time, nil?: true

      # @!attribute url
      #
      #   @return [String]
      required :url, String

      # @!method initialize(id:, created_at:, customer_id:, expires_at:, url:)
      #   @param id [String]
      #   @param created_at [Time]
      #   @param customer_id [String]
      #   @param expires_at [Time, nil]
      #   @param url [String]
    end
  end
end
