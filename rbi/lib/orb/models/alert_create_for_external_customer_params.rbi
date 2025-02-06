# typed: strong

module Orb
  module Models
    class AlertCreateForExternalCustomerParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            currency: String,
            type: Symbol,
            thresholds: T.nilable(T::Array[Orb::Models::AlertCreateForExternalCustomerParams::Threshold])
          },
          Orb::RequestParameters::Shape
        )
      end

      sig { returns(String) }
      attr_accessor :currency

      sig { returns(Symbol) }
      attr_accessor :type

      sig { returns(T.nilable(T::Array[Orb::Models::AlertCreateForExternalCustomerParams::Threshold])) }
      attr_accessor :thresholds

      sig do
        params(
          currency: String,
          type: Symbol,
          thresholds: T.nilable(T::Array[Orb::Models::AlertCreateForExternalCustomerParams::Threshold]),
          request_options: Orb::RequestOpts
        ).void
      end
      def initialize(currency:, type:, thresholds: nil, request_options: {}); end

      sig { returns(Orb::Models::AlertCreateForExternalCustomerParams::Shape) }
      def to_h; end

      class Type < Orb::Enum
        abstract!

        USAGE_EXCEEDED = :usage_exceeded
        COST_EXCEEDED = :cost_exceeded
        CREDIT_BALANCE_DEPLETED = :credit_balance_depleted
        CREDIT_BALANCE_DROPPED = :credit_balance_dropped
        CREDIT_BALANCE_RECOVERED = :credit_balance_recovered

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class Threshold < Orb::BaseModel
        Shape = T.type_alias { {value: Float} }

        sig { returns(Float) }
        attr_accessor :value

        sig { params(value: Float).void }
        def initialize(value:); end

        sig { returns(Orb::Models::AlertCreateForExternalCustomerParams::Threshold::Shape) }
        def to_h; end
      end
    end
  end
end
