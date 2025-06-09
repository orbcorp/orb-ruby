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
      sig { returns(T.nilable(T::Array[Orb::Threshold])) }
      attr_accessor :thresholds

      sig do
        params(
          currency: String,
          type: Orb::AlertCreateForExternalCustomerParams::Type::OrSymbol,
          thresholds: T.nilable(T::Array[Orb::Threshold::OrHash]),
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
            thresholds: T.nilable(T::Array[Orb::Threshold]),
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
    end
  end
end
