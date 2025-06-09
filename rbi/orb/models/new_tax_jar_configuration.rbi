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

      sig do
        params(
          tax_exempt: T::Boolean,
          tax_provider: Orb::NewTaxJarConfiguration::TaxProvider::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(tax_exempt:, tax_provider:)
      end

      sig do
        override.returns(
          {
            tax_exempt: T::Boolean,
            tax_provider: Orb::NewTaxJarConfiguration::TaxProvider::OrSymbol
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
