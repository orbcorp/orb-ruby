# typed: strong

module Orb
  module Models
    class NewAccountingSyncConfiguration < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::NewAccountingSyncConfiguration, Orb::Internal::AnyHash)
        end

      sig { returns(T.nilable(T::Array[Orb::AccountingProviderConfig])) }
      attr_accessor :accounting_providers

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :excluded

      sig do
        params(
          accounting_providers:
            T.nilable(T::Array[Orb::AccountingProviderConfig::OrHash]),
          excluded: T.nilable(T::Boolean)
        ).returns(T.attached_class)
      end
      def self.new(accounting_providers: nil, excluded: nil)
      end

      sig do
        override.returns(
          {
            accounting_providers:
              T.nilable(T::Array[Orb::AccountingProviderConfig]),
            excluded: T.nilable(T::Boolean)
          }
        )
      end
      def to_hash
      end
    end
  end
end
