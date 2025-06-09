# typed: strong

module Orb
  module Models
    class NewAvalaraTaxConfiguration < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::NewAvalaraTaxConfiguration, Orb::Internal::AnyHash)
        end

      sig { returns(T::Boolean) }
      attr_accessor :tax_exempt

      sig { returns(Orb::NewAvalaraTaxConfiguration::TaxProvider::OrSymbol) }
      attr_accessor :tax_provider

      sig { returns(T.nilable(String)) }
      attr_accessor :tax_exemption_code

      sig do
        params(
          tax_exempt: T::Boolean,
          tax_provider: Orb::NewAvalaraTaxConfiguration::TaxProvider::OrSymbol,
          tax_exemption_code: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(tax_exempt:, tax_provider:, tax_exemption_code: nil)
      end

      sig do
        override.returns(
          {
            tax_exempt: T::Boolean,
            tax_provider:
              Orb::NewAvalaraTaxConfiguration::TaxProvider::OrSymbol,
            tax_exemption_code: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      module TaxProvider
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::NewAvalaraTaxConfiguration::TaxProvider)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AVALARA =
          T.let(
            :avalara,
            Orb::NewAvalaraTaxConfiguration::TaxProvider::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::NewAvalaraTaxConfiguration::TaxProvider::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
