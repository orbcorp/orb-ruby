# typed: strong

module Orb
  module Models
    class CustomerCreatePortalSessionByExternalIDResponse < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::Models::CustomerCreatePortalSessionByExternalIDResponse,
            Orb::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :customer_id

      sig { returns(T.nilable(Time)) }
      attr_accessor :expires_at

      sig { returns(String) }
      attr_accessor :url

      sig do
        params(
          id: String,
          created_at: Time,
          customer_id: String,
          expires_at: T.nilable(Time),
          url: String
        ).returns(T.attached_class)
      end
      def self.new(id:, created_at:, customer_id:, expires_at:, url:)
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            customer_id: String,
            expires_at: T.nilable(Time),
            url: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
