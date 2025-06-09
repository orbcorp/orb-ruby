# typed: strong

module Orb
  module Models
    class ChangedSubscriptionResources < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::ChangedSubscriptionResources, Orb::Internal::AnyHash)
        end

      # The credit notes that were created as part of this operation.
      sig { returns(T::Array[Orb::CreditNote]) }
      attr_accessor :created_credit_notes

      # The invoices that were created as part of this operation.
      sig { returns(T::Array[Orb::Invoice]) }
      attr_accessor :created_invoices

      # The credit notes that were voided as part of this operation.
      sig { returns(T::Array[Orb::CreditNote]) }
      attr_accessor :voided_credit_notes

      # The invoices that were voided as part of this operation.
      sig { returns(T::Array[Orb::Invoice]) }
      attr_accessor :voided_invoices

      sig do
        params(
          created_credit_notes: T::Array[Orb::CreditNote::OrHash],
          created_invoices: T::Array[Orb::Invoice::OrHash],
          voided_credit_notes: T::Array[Orb::CreditNote::OrHash],
          voided_invoices: T::Array[Orb::Invoice::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        # The credit notes that were created as part of this operation.
        created_credit_notes:,
        # The invoices that were created as part of this operation.
        created_invoices:,
        # The credit notes that were voided as part of this operation.
        voided_credit_notes:,
        # The invoices that were voided as part of this operation.
        voided_invoices:
      )
      end

      sig do
        override.returns(
          {
            created_credit_notes: T::Array[Orb::CreditNote],
            created_invoices: T::Array[Orb::Invoice],
            voided_credit_notes: T::Array[Orb::CreditNote],
            voided_invoices: T::Array[Orb::Invoice]
          }
        )
      end
      def to_hash
      end
    end
  end
end
