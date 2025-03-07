# typed: strong

module Orb
  module Resources
    class TopLevel
      sig do
        params(request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])))
          .returns(Orb::Models::TopLevelPingResponse)
      end
      def ping(request_options: {})
      end

      sig { params(client: Orb::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
