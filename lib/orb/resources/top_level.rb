# frozen_string_literal: true

module Orb
  module Resources
    class TopLevel
      # This endpoint allows you to test your connection to the Orb API and check the
      #   validity of your API key, passed in the Authorization header. This is
      #   particularly useful for checking that your environment is set up properly, and
      #   is a great choice for connectors and integrations.
      #
      #   This API does not have any side-effects or return any Orb resources.
      #
      # @overload ping(request_options: {})
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::TopLevelPingResponse]
      #
      # @see Orb::Models::TopLevelPingParams
      def ping(params = {})
        @client.request(
          method: :get,
          path: "ping",
          model: Orb::Models::TopLevelPingResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Orb::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
