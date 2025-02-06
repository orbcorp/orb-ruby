# typed: strong

module Orb
  module Models
    class SubscriptionCancelParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      Shape = T.type_alias do
        T.all({cancel_option: Symbol, cancellation_date: T.nilable(Time)}, Orb::RequestParameters::Shape)
      end

      sig { returns(Symbol) }
      attr_accessor :cancel_option

      sig { returns(T.nilable(Time)) }
      attr_accessor :cancellation_date

      sig do
        params(
          cancel_option: Symbol,
          cancellation_date: T.nilable(Time),
          request_options: Orb::RequestOpts
        ).void
      end
      def initialize(cancel_option:, cancellation_date: nil, request_options: {}); end

      sig { returns(Orb::Models::SubscriptionCancelParams::Shape) }
      def to_h; end

      class CancelOption < Orb::Enum
        abstract!

        END_OF_SUBSCRIPTION_TERM = :end_of_subscription_term
        IMMEDIATE = :immediate
        REQUESTED_DATE = :requested_date

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
