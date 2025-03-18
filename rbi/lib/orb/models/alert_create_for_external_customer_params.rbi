# typed: strong

module Orb
  module Models
    class AlertCreateForExternalCustomerParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # The case sensitive currency or custom pricing unit to use for this alert.
      sig { returns(String) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      # The type of alert to create. This must be a valid alert type.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # The thresholds that define the values at which the alert will be triggered.
      sig { returns(T.nilable(T::Array[Orb::Models::AlertCreateForExternalCustomerParams::Threshold])) }
      def thresholds
      end

      sig do
        params(_: T.nilable(T::Array[Orb::Models::AlertCreateForExternalCustomerParams::Threshold]))
          .returns(T.nilable(T::Array[Orb::Models::AlertCreateForExternalCustomerParams::Threshold]))
      end
      def thresholds=(_)
      end

      sig do
        params(
          currency: String,
          type: Symbol,
          thresholds: T.nilable(T::Array[Orb::Models::AlertCreateForExternalCustomerParams::Threshold]),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(currency:, type:, thresholds: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              currency: String,
              type: Symbol,
              thresholds: T.nilable(T::Array[Orb::Models::AlertCreateForExternalCustomerParams::Threshold]),
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash
      end

      # The type of alert to create. This must be a valid alert type.
      class Type < Orb::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        CREDIT_BALANCE_DEPLETED = :credit_balance_depleted
        CREDIT_BALANCE_DROPPED = :credit_balance_dropped
        CREDIT_BALANCE_RECOVERED = :credit_balance_recovered
      end

      class Threshold < Orb::BaseModel
        # The value at which an alert will fire. For credit balance alerts, the alert will
        #   fire at or below this value. For usage and cost alerts, the alert will fire at
        #   or above this value.
        sig { returns(Float) }
        def value
        end

        sig { params(_: Float).returns(Float) }
        def value=(_)
        end

        # Thresholds are used to define the conditions under which an alert will be
        #   triggered.
        sig { params(value: Float).returns(T.attached_class) }
        def self.new(value:)
        end

        sig { override.returns({value: Float}) }
        def to_hash
        end
      end
    end
  end
end
