# typed: strong

module Orb
  module Models
    class ItemUpdateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Orb::ItemUpdateParams, Orb::Internal::AnyHash) }

      sig do
        returns(T.nilable(T::Array[Orb::ItemUpdateParams::ExternalConnection]))
      end
      attr_accessor :external_connections

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig do
        params(
          external_connections:
            T.nilable(
              T::Array[Orb::ItemUpdateParams::ExternalConnection::OrHash]
            ),
          name: T.nilable(String),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(external_connections: nil, name: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            external_connections:
              T.nilable(T::Array[Orb::ItemUpdateParams::ExternalConnection]),
            name: T.nilable(String),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      class ExternalConnection < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::ItemUpdateParams::ExternalConnection,
              Orb::Internal::AnyHash
            )
          end

        sig do
          returns(
            Orb::ItemUpdateParams::ExternalConnection::ExternalConnectionName::OrSymbol
          )
        end
        attr_accessor :external_connection_name

        sig { returns(String) }
        attr_accessor :external_entity_id

        sig do
          params(
            external_connection_name:
              Orb::ItemUpdateParams::ExternalConnection::ExternalConnectionName::OrSymbol,
            external_entity_id: String
          ).returns(T.attached_class)
        end
        def self.new(external_connection_name:, external_entity_id:)
        end

        sig do
          override.returns(
            {
              external_connection_name:
                Orb::ItemUpdateParams::ExternalConnection::ExternalConnectionName::OrSymbol,
              external_entity_id: String
            }
          )
        end
        def to_hash
        end

        module ExternalConnectionName
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::ItemUpdateParams::ExternalConnection::ExternalConnectionName
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STRIPE =
            T.let(
              :stripe,
              Orb::ItemUpdateParams::ExternalConnection::ExternalConnectionName::TaggedSymbol
            )
          QUICKBOOKS =
            T.let(
              :quickbooks,
              Orb::ItemUpdateParams::ExternalConnection::ExternalConnectionName::TaggedSymbol
            )
          BILL_COM =
            T.let(
              :"bill.com",
              Orb::ItemUpdateParams::ExternalConnection::ExternalConnectionName::TaggedSymbol
            )
          NETSUITE =
            T.let(
              :netsuite,
              Orb::ItemUpdateParams::ExternalConnection::ExternalConnectionName::TaggedSymbol
            )
          TAXJAR =
            T.let(
              :taxjar,
              Orb::ItemUpdateParams::ExternalConnection::ExternalConnectionName::TaggedSymbol
            )
          AVALARA =
            T.let(
              :avalara,
              Orb::ItemUpdateParams::ExternalConnection::ExternalConnectionName::TaggedSymbol
            )
          ANROK =
            T.let(
              :anrok,
              Orb::ItemUpdateParams::ExternalConnection::ExternalConnectionName::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::ItemUpdateParams::ExternalConnection::ExternalConnectionName::TaggedSymbol
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
