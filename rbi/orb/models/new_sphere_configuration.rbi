# typed: strong

module Orb
  module Models
    class NewSphereConfiguration < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::NewSphereConfiguration, Orb::Internal::AnyHash)
        end

      sig { returns(T::Boolean) }
      attr_accessor :tax_exempt

      sig { returns(Orb::NewSphereConfiguration::TaxProvider::OrSymbol) }
      attr_accessor :tax_provider

      sig do
        params(
          tax_exempt: T::Boolean,
          tax_provider: Orb::NewSphereConfiguration::TaxProvider::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(tax_exempt:, tax_provider:)
      end

      sig do
        override.returns(
          {
            tax_exempt: T::Boolean,
            tax_provider: Orb::NewSphereConfiguration::TaxProvider::OrSymbol
          }
        )
      end
      def to_hash
      end

      module TaxProvider
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::NewSphereConfiguration::TaxProvider)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SPHERE =
          T.let(:sphere, Orb::NewSphereConfiguration::TaxProvider::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Orb::NewSphereConfiguration::TaxProvider::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
