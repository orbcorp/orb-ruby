# typed: strong

module Orb
  module Models
    class ItemUpdateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T.nilable(T::Array[Orb::Models::ItemUpdateParams::ExternalConnection])) }
      attr_accessor :external_connections

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig do
        params(
          external_connections: T.nilable(T::Array[Orb::Models::ItemUpdateParams::ExternalConnection]),
          name: T.nilable(String),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(external_connections: nil, name: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            external_connections: T.nilable(T::Array[Orb::Models::ItemUpdateParams::ExternalConnection]), name: T.nilable(String), request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      class ExternalConnection < Orb::BaseModel
        sig { returns(Symbol) }
        attr_accessor :external_connection_name

        sig { returns(String) }
        attr_accessor :external_entity_id

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
end
