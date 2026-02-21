# typed: strong

module Orb
  module Models
    class Item < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::Item, Orb::Internal::AnyHash) }

      # The Orb-assigned unique identifier for the item.
      sig { returns(String) }
      attr_accessor :id

      # The time at which the item was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # A list of external connections for this item, used to sync with external
      # invoicing and tax systems.
      sig { returns(T::Array[Orb::Item::ExternalConnection]) }
      attr_accessor :external_connections

      # User specified key-value pairs for the resource. If not present, this defaults
      # to an empty dictionary. Individual keys can be removed by setting the value to
      # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
      # `null`.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      # The name of the item.
      sig { returns(String) }
      attr_accessor :name

      # The time at which the item was archived. If null, the item is not archived.
      sig { returns(T.nilable(Time)) }
      attr_accessor :archived_at

      # The Item resource represents a sellable product or good. Items are associated
      # with all line items, billable metrics, and prices and are used for defining
      # external sync behavior for invoices and tax calculation purposes.
      sig do
        params(
          id: String,
          created_at: Time,
          external_connections: T::Array[Orb::Item::ExternalConnection::OrHash],
          metadata: T::Hash[Symbol, String],
          name: String,
          archived_at: T.nilable(Time)
        ).returns(T.attached_class)
      end
      def self.new(
        # The Orb-assigned unique identifier for the item.
        id:,
        # The time at which the item was created.
        created_at:,
        # A list of external connections for this item, used to sync with external
        # invoicing and tax systems.
        external_connections:,
        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        metadata:,
        # The name of the item.
        name:,
        # The time at which the item was archived. If null, the item is not archived.
        archived_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            external_connections: T::Array[Orb::Item::ExternalConnection],
            metadata: T::Hash[Symbol, String],
            name: String,
            archived_at: T.nilable(Time)
          }
        )
      end
      def to_hash
      end

      class ExternalConnection < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Item::ExternalConnection, Orb::Internal::AnyHash)
          end

        # The name of the external system this item is connected to.
        sig do
          returns(
            Orb::Item::ExternalConnection::ExternalConnectionName::TaggedSymbol
          )
        end
        attr_accessor :external_connection_name

        # The identifier of this item in the external system.
        sig { returns(String) }
        attr_accessor :external_entity_id

        # Represents a connection between an Item and an external system for invoicing or
        # tax calculation purposes.
        sig do
          params(
            external_connection_name:
              Orb::Item::ExternalConnection::ExternalConnectionName::OrSymbol,
            external_entity_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The name of the external system this item is connected to.
          external_connection_name:,
          # The identifier of this item in the external system.
          external_entity_id:
        )
        end

        sig do
          override.returns(
            {
              external_connection_name:
                Orb::Item::ExternalConnection::ExternalConnectionName::TaggedSymbol,
              external_entity_id: String
            }
          )
        end
        def to_hash
        end

        # The name of the external system this item is connected to.
        module ExternalConnectionName
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Item::ExternalConnection::ExternalConnectionName
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STRIPE =
            T.let(
              :stripe,
              Orb::Item::ExternalConnection::ExternalConnectionName::TaggedSymbol
            )
          QUICKBOOKS =
            T.let(
              :quickbooks,
              Orb::Item::ExternalConnection::ExternalConnectionName::TaggedSymbol
            )
          BILL_COM =
            T.let(
              :"bill.com",
              Orb::Item::ExternalConnection::ExternalConnectionName::TaggedSymbol
            )
          NETSUITE =
            T.let(
              :netsuite,
              Orb::Item::ExternalConnection::ExternalConnectionName::TaggedSymbol
            )
          TAXJAR =
            T.let(
              :taxjar,
              Orb::Item::ExternalConnection::ExternalConnectionName::TaggedSymbol
            )
          AVALARA =
            T.let(
              :avalara,
              Orb::Item::ExternalConnection::ExternalConnectionName::TaggedSymbol
            )
          ANROK =
            T.let(
              :anrok,
              Orb::Item::ExternalConnection::ExternalConnectionName::TaggedSymbol
            )
          NUMERAL =
            T.let(
              :numeral,
              Orb::Item::ExternalConnection::ExternalConnectionName::TaggedSymbol
            )
          STRIPE_TAX =
            T.let(
              :stripe_tax,
              Orb::Item::ExternalConnection::ExternalConnectionName::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Item::ExternalConnection::ExternalConnectionName::TaggedSymbol
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
