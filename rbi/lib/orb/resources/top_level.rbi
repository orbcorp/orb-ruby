# typed: strong

module Orb
  module Resources
    class TopLevel
      sig { params(request_options: Orb::RequestOpts).returns(Orb::Models::TopLevelPingResponse) }
      def ping(request_options: {}); end

      sig { params(client: Orb::Client).void }
      def initialize(client:); end
    end
  end
end
