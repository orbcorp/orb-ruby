# typed: strong

module Orb
  module Models
    class NewAllocationPrice < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::NewAllocationPrice, Orb::Internal::AnyHash) }

      # An amount of the currency to allocate to the customer at the specified cadence.
      sig { returns(String) }
      attr_accessor :amount

      # The cadence at which to allocate the amount to the customer.
      sig { returns(Orb::NewAllocationPrice::Cadence::OrSymbol) }
      attr_accessor :cadence

      # An ISO 4217 currency string or a custom pricing unit identifier in which to bill
      # this price.
      sig { returns(String) }
      attr_accessor :currency

      # The custom expiration for the allocation.
      sig { returns(T.nilable(Orb::CustomExpiration)) }
      attr_reader :custom_expiration

      sig do
        params(custom_expiration: T.nilable(Orb::CustomExpiration::OrHash)).void
      end
      attr_writer :custom_expiration

      # Whether the allocated amount should expire at the end of the cadence or roll
      # over to the next period. Set to null if using custom_expiration.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :expires_at_end_of_cadence

      sig do
        params(
          amount: String,
          cadence: Orb::NewAllocationPrice::Cadence::OrSymbol,
          currency: String,
          custom_expiration: T.nilable(Orb::CustomExpiration::OrHash),
          expires_at_end_of_cadence: T.nilable(T::Boolean)
        ).returns(T.attached_class)
      end
      def self.new(
        # An amount of the currency to allocate to the customer at the specified cadence.
        amount:,
        # The cadence at which to allocate the amount to the customer.
        cadence:,
        # An ISO 4217 currency string or a custom pricing unit identifier in which to bill
        # this price.
        currency:,
        # The custom expiration for the allocation.
        custom_expiration: nil,
        # Whether the allocated amount should expire at the end of the cadence or roll
        # over to the next period. Set to null if using custom_expiration.
        expires_at_end_of_cadence: nil
      )
      end

      sig do
        override.returns(
          {
            amount: String,
            cadence: Orb::NewAllocationPrice::Cadence::OrSymbol,
            currency: String,
            custom_expiration: T.nilable(Orb::CustomExpiration),
            expires_at_end_of_cadence: T.nilable(T::Boolean)
          }
        )
      end
      def to_hash
      end

      # The cadence at which to allocate the amount to the customer.
      module Cadence
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::NewAllocationPrice::Cadence) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ONE_TIME =
          T.let(:one_time, Orb::NewAllocationPrice::Cadence::TaggedSymbol)
        MONTHLY =
          T.let(:monthly, Orb::NewAllocationPrice::Cadence::TaggedSymbol)
        QUARTERLY =
          T.let(:quarterly, Orb::NewAllocationPrice::Cadence::TaggedSymbol)
        SEMI_ANNUAL =
          T.let(:semi_annual, Orb::NewAllocationPrice::Cadence::TaggedSymbol)
        ANNUAL = T.let(:annual, Orb::NewAllocationPrice::Cadence::TaggedSymbol)
        CUSTOM = T.let(:custom, Orb::NewAllocationPrice::Cadence::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Orb::NewAllocationPrice::Cadence::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
