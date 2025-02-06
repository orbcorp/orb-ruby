# typed: strong

module Orb
  module Models
    class SubscriptionTriggerPhaseParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      Shape = T.type_alias { T.all({effective_date: T.nilable(Date)}, Orb::RequestParameters::Shape) }

      sig { returns(T.nilable(Date)) }
      attr_accessor :effective_date

      sig { params(effective_date: T.nilable(Date), request_options: Orb::RequestOpts).void }
      def initialize(effective_date: nil, request_options: {}); end

      sig { returns(Orb::Models::SubscriptionTriggerPhaseParams::Shape) }
      def to_h; end
    end
  end
end
