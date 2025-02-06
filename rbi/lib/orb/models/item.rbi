# typed: strong

module Orb
  module Models
    class Item < Orb::BaseModel
      Shape = T.type_alias do
        {
          id: String,
          created_at: Time,
          external_connections: T::Array[Orb::Models::Item::ExternalConnection],
          name: String
        }
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T::Array[Orb::Models::Item::ExternalConnection]) }
      attr_accessor :external_connections

      sig { returns(String) }
      attr_accessor :name

      sig do
        params(
          id: String,
          created_at: Time,
          external_connections: T::Array[Orb::Models::Item::ExternalConnection],
          name: String
        ).void
      end
      def initialize(id:, created_at:, external_connections:, name:); end

      sig { returns(Orb::Models::Item::Shape) }
      def to_h; end

      class ExternalConnection < Orb::BaseModel
        Shape = T.type_alias { {external_connection_name: Symbol, external_entity_id: String} }

        sig { returns(Symbol) }
        attr_accessor :external_connection_name

        sig { returns(String) }
        attr_accessor :external_entity_id

        sig { params(external_connection_name: Symbol, external_entity_id: String).void }
        def initialize(external_connection_name:, external_entity_id:); end

        sig { returns(Orb::Models::Item::ExternalConnection::Shape) }
        def to_h; end

        class ExternalConnectionName < Orb::Enum
          abstract!

          STRIPE = :stripe
          QUICKBOOKS = :quickbooks
          BILL_COM = :"bill.com"
          NETSUITE = :netsuite
          TAXJAR = :taxjar
          AVALARA = :avalara
          ANROK = :anrok

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end
    end
  end
end
