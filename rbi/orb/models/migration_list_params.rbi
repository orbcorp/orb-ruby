# typed: strong

module Orb
  module Models
    class MigrationListParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Orb::MigrationListParams, Orb::Internal::AnyHash) }

      # Cursor for pagination. This can be populated by the `next_cursor` value returned
      # from the initial request.
      sig { returns(T.nilable(String)) }
      attr_accessor :cursor

      sig { returns(T.nilable(String)) }
      attr_accessor :external_plan_id

      # The number of items to fetch. Defaults to 20.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(String)) }
      attr_accessor :plan_id

      sig do
        params(
          cursor: T.nilable(String),
          external_plan_id: T.nilable(String),
          limit: Integer,
          plan_id: T.nilable(String),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        # from the initial request.
        cursor: nil,
        external_plan_id: nil,
        # The number of items to fetch. Defaults to 20.
        limit: nil,
        plan_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            cursor: T.nilable(String),
            external_plan_id: T.nilable(String),
            limit: Integer,
            plan_id: T.nilable(String),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
