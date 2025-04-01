# typed: strong

module Orb
  module Models
    class ItemUpdateParams < Orb::BaseModel
      extend Orb::Type::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T.nilable(T::Array[Orb::Models::ItemUpdateParams::ExternalConnection])) }
      attr_accessor :external_connections

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig do
        params(
          external_connections: T.nilable(T::Array[T.any(Orb::Models::ItemUpdateParams::ExternalConnection, Orb::Util::AnyHash)]),
          name: T.nilable(String),
          request_options: T.any(Orb::RequestOptions, Orb::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(external_connections: nil, name: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              external_connections: T.nilable(T::Array[Orb::Models::ItemUpdateParams::ExternalConnection]),
              name: T.nilable(String),
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash
      end

      class ExternalConnection < Orb::BaseModel
        sig { returns(Orb::Models::ItemUpdateParams::ExternalConnection::ExternalConnectionName::OrSymbol) }
        attr_accessor :external_connection_name

        sig { returns(String) }
        attr_accessor :external_entity_id

        sig do
          params(
            external_connection_name: Orb::Models::ItemUpdateParams::ExternalConnection::ExternalConnectionName::OrSymbol,
            external_entity_id: String
          )
            .returns(T.attached_class)
        end
        def self.new(external_connection_name:, external_entity_id:)
        end

        sig do
          override
            .returns(
              {
                external_connection_name: Orb::Models::ItemUpdateParams::ExternalConnection::ExternalConnectionName::OrSymbol,
                external_entity_id: String
              }
            )
        end
        def to_hash
        end

        module ExternalConnectionName
          extend Orb::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Models::ItemUpdateParams::ExternalConnection::ExternalConnectionName) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                Orb::Models::ItemUpdateParams::ExternalConnection::ExternalConnectionName::TaggedSymbol
              )
            end

          STRIPE =
            T.let(:stripe, Orb::Models::ItemUpdateParams::ExternalConnection::ExternalConnectionName::TaggedSymbol)
          QUICKBOOKS =
            T.let(
              :quickbooks,
              Orb::Models::ItemUpdateParams::ExternalConnection::ExternalConnectionName::TaggedSymbol
            )
          BILL_COM =
            T.let(
              :"bill.com",
              Orb::Models::ItemUpdateParams::ExternalConnection::ExternalConnectionName::TaggedSymbol
            )
          NETSUITE =
            T.let(:netsuite, Orb::Models::ItemUpdateParams::ExternalConnection::ExternalConnectionName::TaggedSymbol)
          TAXJAR =
            T.let(:taxjar, Orb::Models::ItemUpdateParams::ExternalConnection::ExternalConnectionName::TaggedSymbol)
          AVALARA =
            T.let(:avalara, Orb::Models::ItemUpdateParams::ExternalConnection::ExternalConnectionName::TaggedSymbol)
          ANROK =
            T.let(:anrok, Orb::Models::ItemUpdateParams::ExternalConnection::ExternalConnectionName::TaggedSymbol)

          sig do
            override
              .returns(T::Array[Orb::Models::ItemUpdateParams::ExternalConnection::ExternalConnectionName::TaggedSymbol])
          end
          def self.values
          end
        end
      end
    end
  end
end
