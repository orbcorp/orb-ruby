# typed: strong

module Orb
  module Models
    class NewTaxJarConfiguration < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::NewTaxJarConfiguration, Orb::Internal::AnyHash)
        end

      sig { returns(T::Boolean) }
      attr_accessor :tax_exempt

      sig { returns(Orb::NewTaxJarConfiguration::TaxProvider::OrSymbol) }
      attr_accessor :tax_provider

      # Whether to automatically calculate tax for this customer. When null, inherits
      # from account-level setting. When true or false, overrides the account setting.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :automatic_tax_enabled

      sig do
        params(
          tax_exempt: T::Boolean,
          tax_provider: Orb::NewTaxJarConfiguration::TaxProvider::OrSymbol,
          automatic_tax_enabled: T.nilable(T::Boolean)
        ).returns(T.attached_class)
      end
      def self.new(
        tax_exempt:,
        tax_provider:,
        # Whether to automatically calculate tax for this customer. When null, inherits
        # from account-level setting. When true or false, overrides the account setting.
        automatic_tax_enabled: nil
      )
      end

      sig do
        override.returns(
          {
            tax_exempt: T::Boolean,
            tax_provider: Orb::NewTaxJarConfiguration::TaxProvider::OrSymbol,
            automatic_tax_enabled: T.nilable(T::Boolean)
          }
        )
      end
      def to_hash
      end

      module TaxProvider
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::NewTaxJarConfiguration::TaxProvider)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TAXJAR =
          T.let(:taxjar, Orb::NewTaxJarConfiguration::TaxProvider::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Orb::NewTaxJarConfiguration::TaxProvider::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
