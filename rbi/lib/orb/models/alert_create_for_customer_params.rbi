# typed: strong

module Orb
  module Models
    class AlertCreateForCustomerParams < Orb::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # The case sensitive currency or custom pricing unit to use for this alert.
      sig { returns(String) }
      attr_accessor :currency

      # The type of alert to create. This must be a valid alert type.
      sig { returns(Orb::Models::AlertCreateForCustomerParams::Type::OrSymbol) }
      attr_accessor :type

      # The thresholds that define the values at which the alert will be triggered.
      sig { returns(T.nilable(T::Array[Orb::Models::AlertCreateForCustomerParams::Threshold])) }
      attr_accessor :thresholds

      sig do
        params(
          currency: String,
          type: Orb::Models::AlertCreateForCustomerParams::Type::OrSymbol,
          thresholds: T.nilable(
            T::Array[T.any(Orb::Models::AlertCreateForCustomerParams::Threshold, Orb::Internal::Util::AnyHash)]
          ),
          request_options: T.any(Orb::RequestOptions, Orb::Internal::Util::AnyHash)
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
              type: Orb::Models::AlertCreateForCustomerParams::Type::OrSymbol,
              thresholds: T.nilable(T::Array[Orb::Models::AlertCreateForCustomerParams::Threshold]),
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash
      end

      # The type of alert to create. This must be a valid alert type.
      module Type
        extend Orb::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::AlertCreateForCustomerParams::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Orb::Models::AlertCreateForCustomerParams::Type::TaggedSymbol) }

        CREDIT_BALANCE_DEPLETED =
          T.let(:credit_balance_depleted, Orb::Models::AlertCreateForCustomerParams::Type::TaggedSymbol)
        CREDIT_BALANCE_DROPPED =
          T.let(:credit_balance_dropped, Orb::Models::AlertCreateForCustomerParams::Type::TaggedSymbol)
        CREDIT_BALANCE_RECOVERED =
          T.let(:credit_balance_recovered, Orb::Models::AlertCreateForCustomerParams::Type::TaggedSymbol)

        sig { override.returns(T::Array[Orb::Models::AlertCreateForCustomerParams::Type::TaggedSymbol]) }
        def self.values
        end
      end

      class Threshold < Orb::BaseModel
        # The value at which an alert will fire. For credit balance alerts, the alert will
        #   fire at or below this value. For usage and cost alerts, the alert will fire at
        #   or above this value.
        sig { returns(Float) }
        attr_accessor :value

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
