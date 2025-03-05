# typed: strong

module Orb
  module Models
    class ItemExternalConnectionModel < Orb::BaseModel
      sig { returns(Symbol) }
      def external_connection_name
      end

      sig { params(_: Symbol).returns(Symbol) }
      def external_connection_name=(_)
      end

      sig { returns(String) }
      def external_entity_id
      end

      sig { params(_: String).returns(String) }
      def external_entity_id=(_)
      end

      sig { params(external_connection_name: Symbol, external_entity_id: String).void }
      def initialize(external_connection_name:, external_entity_id:)
      end

      sig { override.returns({external_connection_name: Symbol, external_entity_id: String}) }
      def to_hash
      end

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
        def self.values
        end
      end
    end
  end
end
