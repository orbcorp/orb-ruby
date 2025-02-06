# typed: strong

module Orb
  module Models
    class SubscriptionTriggerPhaseParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T.nilable(Date)) }
      attr_accessor :effective_date

      sig do
        params(
          effective_date: T.nilable(Date),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(effective_date: nil, request_options: {})
      end

      sig { override.returns({effective_date: T.nilable(Date), request_options: Orb::RequestOptions}) }
      def to_hash
      end
    end
  end
end
