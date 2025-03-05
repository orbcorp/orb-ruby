# typed: strong

module Orb
  module Models
    class ItemUpdateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T.nilable(T::Array[Orb::Models::ItemExternalConnectionModel])) }
      def external_connections
      end

      sig do
        params(_: T.nilable(T::Array[Orb::Models::ItemExternalConnectionModel]))
          .returns(T.nilable(T::Array[Orb::Models::ItemExternalConnectionModel]))
      end
      def external_connections=(_)
      end

      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def name=(_)
      end

      sig do
        params(
          external_connections: T.nilable(T::Array[Orb::Models::ItemExternalConnectionModel]),
          name: T.nilable(String),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(external_connections: nil, name: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              external_connections: T.nilable(T::Array[Orb::Models::ItemExternalConnectionModel]),
              name: T.nilable(String),
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
