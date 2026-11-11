# typed: strong

module Orb
  module Resources
    class Migrations
      class Subscriptions
        # @api private
        sig { params(client: Orb::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
