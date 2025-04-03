# typed: strong

module Orb
  module Resources
    class TopLevel
      # This endpoint allows you to test your connection to the Orb API and check the
      #   validity of your API key, passed in the Authorization header. This is
      #   particularly useful for checking that your environment is set up properly, and
      #   is a great choice for connectors and integrations.
      #
      #   This API does not have any side-effects or return any Orb resources.
      sig do
        params(request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Internal::AnyHash)))
          .returns(Orb::Models::TopLevelPingResponse)
      end
      def ping(request_options: {})
      end

      # @api private
      sig { params(client: Orb::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
