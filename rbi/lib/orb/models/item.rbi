# typed: strong

module Orb
  module Models
    class Item < Orb::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T::Array[Orb::Models::Item::ExternalConnection]) }
      attr_accessor :external_connections

      sig { returns(String) }
      attr_accessor :name

      # The Item resource represents a sellable product or good. Items are associated
      #   with all line items, billable metrics, and prices and are used for defining
      #   external sync behavior for invoices and tax calculation purposes.
      sig do
        params(
          id: String,
          created_at: Time,
          external_connections: T::Array[T.any(Orb::Models::Item::ExternalConnection, Orb::Util::AnyHash)],
          name: String
        )
          .returns(T.attached_class)
      end
      def self.new(id:, created_at:, external_connections:, name:)
      end

      sig do
        override
          .returns(
            {
              id: String,
              created_at: Time,
              external_connections: T::Array[Orb::Models::Item::ExternalConnection],
              name: String
            }
          )
      end
      def to_hash
      end

      class ExternalConnection < Orb::BaseModel
        sig { returns(Orb::Models::Item::ExternalConnection::ExternalConnectionName::TaggedSymbol) }
        attr_accessor :external_connection_name

        sig { returns(String) }
        attr_accessor :external_entity_id

        sig do
          params(
            external_connection_name: Orb::Models::Item::ExternalConnection::ExternalConnectionName::OrSymbol,
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
                external_connection_name: Orb::Models::Item::ExternalConnection::ExternalConnectionName::TaggedSymbol,
                external_entity_id: String
              }
            )
        end
        def to_hash
        end

        module ExternalConnectionName
          extend Orb::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Models::Item::ExternalConnection::ExternalConnectionName) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Item::ExternalConnection::ExternalConnectionName::TaggedSymbol) }

          STRIPE = T.let(:stripe, Orb::Models::Item::ExternalConnection::ExternalConnectionName::TaggedSymbol)
          QUICKBOOKS =
            T.let(:quickbooks, Orb::Models::Item::ExternalConnection::ExternalConnectionName::TaggedSymbol)
          BILL_COM =
            T.let(:"bill.com", Orb::Models::Item::ExternalConnection::ExternalConnectionName::TaggedSymbol)
          NETSUITE = T.let(:netsuite, Orb::Models::Item::ExternalConnection::ExternalConnectionName::TaggedSymbol)
          TAXJAR = T.let(:taxjar, Orb::Models::Item::ExternalConnection::ExternalConnectionName::TaggedSymbol)
          AVALARA = T.let(:avalara, Orb::Models::Item::ExternalConnection::ExternalConnectionName::TaggedSymbol)
          ANROK = T.let(:anrok, Orb::Models::Item::ExternalConnection::ExternalConnectionName::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Item::ExternalConnection::ExternalConnectionName::TaggedSymbol]) }
          def self.values
          end
        end
      end
    end
  end
end
