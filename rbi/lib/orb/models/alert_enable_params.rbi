# typed: strong

module Orb
  module Models
    class AlertEnableParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      Shape = T.type_alias { T.all({subscription_id: T.nilable(String)}, Orb::RequestParameters::Shape) }

      sig { returns(T.nilable(String)) }
      attr_accessor :subscription_id

      sig { params(subscription_id: T.nilable(String), request_options: Orb::RequestOpts).void }
      def initialize(subscription_id: nil, request_options: {}); end

      sig { returns(Orb::Models::AlertEnableParams::Shape) }
      def to_h; end
    end
  end
end
