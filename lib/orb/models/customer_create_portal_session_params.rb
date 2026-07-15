# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Customers#create_portal_session
    class CustomerCreatePortalSessionParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute customer_id
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute expires_in_minutes
      #   Duration in minutes until the portal session expires. Defaults to 60.
      #   Maximum 180.
      #
      #   @return [Integer, nil]
      optional :expires_in_minutes, Integer

      # @!attribute invalidate_existing
      #   When true (default), creating this session soft-deletes any other active portal
      #   sessions for the customer. Set to false to allow concurrent sessions — useful
      #   when minting portal links for multiple authenticated end-users at once. The
      #   customer's permanent portal link (if any) is never invalidated by this.
      #
      #   @return [Boolean, nil]
      optional :invalidate_existing, Orb::Internal::Type::Boolean

      # @!method initialize(customer_id:, expires_in_minutes: nil, invalidate_existing: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::CustomerCreatePortalSessionParams} for more details.
      #
      #   @param customer_id [String]
      #
      #   @param expires_in_minutes [Integer] Duration in minutes until the portal session expires. Defaults to 60. Maximum 18
      #
      #   @param invalidate_existing [Boolean] When true (default), creating this session soft-deletes any other active portal
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
