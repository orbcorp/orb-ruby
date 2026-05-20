# typed: strong

module Orb
  module Models
    class AccountingProviderConfig < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::AccountingProviderConfig, Orb::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :external_provider_id

      sig { returns(Orb::AccountingProviderConfig::ProviderType::OrSymbol) }
      attr_accessor :provider_type

      sig do
        params(
          external_provider_id: String,
          provider_type: Orb::AccountingProviderConfig::ProviderType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(external_provider_id:, provider_type:)
      end

      sig do
        override.returns(
          {
            external_provider_id: String,
            provider_type: Orb::AccountingProviderConfig::ProviderType::OrSymbol
          }
        )
      end
      def to_hash
      end

      module ProviderType
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::AccountingProviderConfig::ProviderType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        QUICKBOOKS =
          T.let(
            :quickbooks,
            Orb::AccountingProviderConfig::ProviderType::TaggedSymbol
          )
        NETSUITE =
          T.let(
            :netsuite,
            Orb::AccountingProviderConfig::ProviderType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::AccountingProviderConfig::ProviderType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
