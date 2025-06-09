# typed: strong

module Orb
  module Models
    class Address < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::Address, Orb::Internal::AnyHash) }

      sig { returns(T.nilable(String)) }
      attr_accessor :city

      sig { returns(T.nilable(String)) }
      attr_accessor :country

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
          city: T.nilable(String),
          country: T.nilable(String),
          line1: T.nilable(String),
          line2: T.nilable(String),
          postal_code: T.nilable(String),
          state: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(city:, country:, line1:, line2:, postal_code:, state:)
      end

      sig do
        override.returns(
          {
            city: T.nilable(String),
            country: T.nilable(String),
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
