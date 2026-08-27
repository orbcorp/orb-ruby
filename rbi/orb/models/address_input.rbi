# typed: strong

module Orb
  module Models
    class AddressInput < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::AddressInput, Orb::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :country

      sig { returns(T.nilable(String)) }
      attr_accessor :city

      sig { returns(T.nilable(String)) }
      attr_accessor :line1

      sig { returns(T.nilable(String)) }
      attr_accessor :line2

      sig { returns(T.nilable(String)) }
      attr_accessor :postal_code

      sig { returns(T.nilable(String)) }
      attr_accessor :state

      sig do
        params(
          country: String,
          city: T.nilable(String),
          line1: T.nilable(String),
          line2: T.nilable(String),
          postal_code: T.nilable(String),
          state: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        country:,
        city: nil,
        line1: nil,
        line2: nil,
        postal_code: nil,
        state: nil
      )
      end

      sig do
        override.returns(
          {
            country: String,
            city: T.nilable(String),
            line1: T.nilable(String),
            line2: T.nilable(String),
            postal_code: T.nilable(String),
            state: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
