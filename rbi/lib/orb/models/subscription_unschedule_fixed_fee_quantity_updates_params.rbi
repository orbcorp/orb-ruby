# typed: strong

module Orb
  module Models
    class SubscriptionUnscheduleFixedFeeQuantityUpdatesParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      Shape = T.type_alias { T.all({price_id: String}, Orb::RequestParameters::Shape) }

      sig { returns(String) }
      attr_accessor :price_id

      sig { params(price_id: String, request_options: Orb::RequestOpts).void }
      def initialize(price_id:, request_options: {}); end

      sig { returns(Orb::Models::SubscriptionUnscheduleFixedFeeQuantityUpdatesParams::Shape) }
      def to_h; end
    end
  end
end
