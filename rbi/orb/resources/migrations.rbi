# typed: strong

module Orb
  module Resources
    class Migrations
      sig { returns(Orb::Resources::Migrations::Subscriptions) }
      attr_reader :subscriptions

      # @api private
      sig { params(client: Orb::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
