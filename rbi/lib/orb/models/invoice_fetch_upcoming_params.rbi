# typed: strong

module Orb
  module Models
    class InvoiceFetchUpcomingParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      Shape = T.type_alias { T.all({subscription_id: String}, Orb::RequestParameters::Shape) }

      sig { returns(String) }
      attr_accessor :subscription_id

      sig { params(subscription_id: String, request_options: Orb::RequestOpts).void }
      def initialize(subscription_id:, request_options: {}); end

      sig { returns(Orb::Models::InvoiceFetchUpcomingParams::Shape) }
      def to_h; end
    end
  end
end
