# typed: strong

module Orb
  module Models
    class ItemListParams < Orb::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # Cursor for pagination. This can be populated by the `next_cursor` value returned
      #   from the initial request.
      sig { returns(T.nilable(String)) }
      attr_accessor :cursor

      # The number of items to fetch. Defaults to 20.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig do
        params(
          cursor: T.nilable(String),
          limit: Integer,
          request_options: T.any(Orb::RequestOptions, Orb::Internal::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(cursor: nil, limit: nil, request_options: {})
      end

      sig do
        override.returns({cursor: T.nilable(String), limit: Integer, request_options: Orb::RequestOptions})
      end
      def to_hash
      end
    end
  end
end
