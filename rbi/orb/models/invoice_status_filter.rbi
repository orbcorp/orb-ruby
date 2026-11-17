# typed: strong

module Orb
  module Models
    module InvoiceStatusFilter
      extend Orb::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Orb::InvoiceStatusFilter) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      DRAFT = T.let(:draft, Orb::InvoiceStatusFilter::TaggedSymbol)
      ISSUED = T.let(:issued, Orb::InvoiceStatusFilter::TaggedSymbol)
      PAID = T.let(:paid, Orb::InvoiceStatusFilter::TaggedSymbol)
      SYNCED = T.let(:synced, Orb::InvoiceStatusFilter::TaggedSymbol)
      VOID = T.let(:void, Orb::InvoiceStatusFilter::TaggedSymbol)

      sig { override.returns(T::Array[Orb::InvoiceStatusFilter::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
