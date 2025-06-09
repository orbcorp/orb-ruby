# typed: strong

module Orb
  module Models
    class Allocation < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::Allocation, Orb::Internal::AnyHash) }

      sig { returns(T::Boolean) }
      attr_accessor :allows_rollover

      sig { returns(String) }
      attr_accessor :currency

      sig { returns(T.nilable(Orb::CustomExpiration)) }
      attr_reader :custom_expiration

      sig do
        params(custom_expiration: T.nilable(Orb::CustomExpiration::OrHash)).void
      end
      attr_writer :custom_expiration

      sig do
        params(
          allows_rollover: T::Boolean,
          currency: String,
          custom_expiration: T.nilable(Orb::CustomExpiration::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(allows_rollover:, currency:, custom_expiration:)
      end

      sig do
        override.returns(
          {
            allows_rollover: T::Boolean,
            currency: String,
            custom_expiration: T.nilable(Orb::CustomExpiration)
          }
        )
      end
      def to_hash
      end
    end
  end
end
