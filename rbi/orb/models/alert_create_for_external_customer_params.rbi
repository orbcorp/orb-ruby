# typed: strong

module Orb
  module Models
    class AlertCreateForExternalCustomerParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Orb::AlertCreateForExternalCustomerParams,
            Orb::Internal::AnyHash
          )
        end

      # The case sensitive currency or custom pricing unit to use for this alert.
      sig { returns(String) }
      attr_accessor :currency

      # The type of alert to create. This must be a valid alert type.
      sig { returns(Orb::AlertCreateForExternalCustomerParams::Type::OrSymbol) }
      attr_accessor :type

      # The thresholds that define the values at which the alert will be triggered.
      sig do
        returns(
          T.nilable(
            T::Array[Orb::AlertCreateForExternalCustomerParams::Threshold]
          )
        )
      end
      attr_accessor :thresholds

      sig do
        params(
          currency: String,
          type: Orb::AlertCreateForExternalCustomerParams::Type::OrSymbol,
          thresholds:
            T.nilable(
              T::Array[
                Orb::AlertCreateForExternalCustomerParams::Threshold::OrHash
              ]
            ),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The case sensitive currency or custom pricing unit to use for this alert.
        currency:,
        # The type of alert to create. This must be a valid alert type.
        type:,
        # The thresholds that define the values at which the alert will be triggered.
        thresholds: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            currency: String,
            type: Orb::AlertCreateForExternalCustomerParams::Type::OrSymbol,
            thresholds:
              T.nilable(
                T::Array[Orb::AlertCreateForExternalCustomerParams::Threshold]
              ),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The type of alert to create. This must be a valid alert type.
      module Type
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::AlertCreateForExternalCustomerParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT_BALANCE_DEPLETED =
          T.let(
            :credit_balance_depleted,
            Orb::AlertCreateForExternalCustomerParams::Type::TaggedSymbol
          )
        CREDIT_BALANCE_DROPPED =
          T.let(
            :credit_balance_dropped,
            Orb::AlertCreateForExternalCustomerParams::Type::TaggedSymbol
          )
        CREDIT_BALANCE_RECOVERED =
          T.let(
            :credit_balance_recovered,
            Orb::AlertCreateForExternalCustomerParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::AlertCreateForExternalCustomerParams::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Threshold < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::AlertCreateForExternalCustomerParams::Threshold,
              Orb::Internal::AnyHash
            )
          end

        # The value at which an alert will fire. For credit balance alerts, the alert will
        # fire at or below this value. For usage and cost alerts, the alert will fire at
        # or above this value.
        sig { returns(Float) }
        attr_accessor :value

        # Thresholds are used to define the conditions under which an alert will be
        # triggered.
        sig { params(value: Float).returns(T.attached_class) }
        def self.new(
          # The value at which an alert will fire. For credit balance alerts, the alert will
          # fire at or below this value. For usage and cost alerts, the alert will fire at
          # or above this value.
          value:
        )
        end

        sig { override.returns({ value: Float }) }
        def to_hash
        end
      end
    end
  end
end
