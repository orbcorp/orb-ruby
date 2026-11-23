# typed: strong

module Orb
  module Models
    module Account
      class PaymentGatewayConnectionListParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Orb::Account::PaymentGatewayConnectionListParams,
              Orb::Internal::AnyHash
            )
          end

        # Only return connections of this billing entity.
        sig { returns(T.nilable(String)) }
        attr_accessor :billing_entity_id

        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        # from the initial request.
        sig { returns(T.nilable(String)) }
        attr_accessor :cursor

        # The number of items to fetch. Defaults to 20.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Only return connections of this payment provider.
        sig do
          returns(
            T.nilable(
              Orb::Account::PaymentGatewayConnectionListParams::ProviderType::OrSymbol
            )
          )
        end
        attr_accessor :provider_type

        sig do
          params(
            billing_entity_id: T.nilable(String),
            cursor: T.nilable(String),
            limit: Integer,
            provider_type:
              T.nilable(
                Orb::Account::PaymentGatewayConnectionListParams::ProviderType::OrSymbol
              ),
            request_options: Orb::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Only return connections of this billing entity.
          billing_entity_id: nil,
          # Cursor for pagination. This can be populated by the `next_cursor` value returned
          # from the initial request.
          cursor: nil,
          # The number of items to fetch. Defaults to 20.
          limit: nil,
          # Only return connections of this payment provider.
          provider_type: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              billing_entity_id: T.nilable(String),
              cursor: T.nilable(String),
              limit: Integer,
              provider_type:
                T.nilable(
                  Orb::Account::PaymentGatewayConnectionListParams::ProviderType::OrSymbol
                ),
              request_options: Orb::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Only return connections of this payment provider.
        module ProviderType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Account::PaymentGatewayConnectionListParams::ProviderType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STRIPE =
            T.let(
              :stripe,
              Orb::Account::PaymentGatewayConnectionListParams::ProviderType::TaggedSymbol
            )
          ADYEN =
            T.let(
              :adyen,
              Orb::Account::PaymentGatewayConnectionListParams::ProviderType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Account::PaymentGatewayConnectionListParams::ProviderType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
