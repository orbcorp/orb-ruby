# typed: strong

module Orb
  module Models
    class Item < Orb::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T::Array[Orb::Models::Item::ExternalConnection]) }
      def external_connections
      end

      sig do
        params(_: T::Array[Orb::Models::Item::ExternalConnection])
          .returns(T::Array[Orb::Models::Item::ExternalConnection])
      end
      def external_connections=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig do
        params(
          id: String,
          created_at: Time,
          external_connections: T::Array[Orb::Models::Item::ExternalConnection],
          name: String
        )
          .void
      end
      def initialize(id:, created_at:, external_connections:, name:)
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

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
