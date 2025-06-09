# frozen_string_literal: true

module Orb
  module Models
    class ChangedSubscriptionResources < Orb::Internal::Type::BaseModel
      # @!attribute created_credit_notes
      #   The credit notes that were created as part of this operation.
      #
      #   @return [Array<Orb::Models::CreditNote>]
      required :created_credit_notes, -> { Orb::Internal::Type::ArrayOf[Orb::CreditNote] }

      # @!attribute created_invoices
      #   The invoices that were created as part of this operation.
      #
      #   @return [Array<Orb::Models::Invoice>]
      required :created_invoices, -> { Orb::Internal::Type::ArrayOf[Orb::Invoice] }

      # @!attribute voided_credit_notes
      #   The credit notes that were voided as part of this operation.
      #
      #   @return [Array<Orb::Models::CreditNote>]
      required :voided_credit_notes, -> { Orb::Internal::Type::ArrayOf[Orb::CreditNote] }

      # @!attribute voided_invoices
      #   The invoices that were voided as part of this operation.
      #
      #   @return [Array<Orb::Models::Invoice>]
      required :voided_invoices, -> { Orb::Internal::Type::ArrayOf[Orb::Invoice] }

      # @!method initialize(created_credit_notes:, created_invoices:, voided_credit_notes:, voided_invoices:)
      #   @param created_credit_notes [Array<Orb::Models::CreditNote>] The credit notes that were created as part of this operation.
      #
      #   @param created_invoices [Array<Orb::Models::Invoice>] The invoices that were created as part of this operation.
      #
      #   @param voided_credit_notes [Array<Orb::Models::CreditNote>] The credit notes that were voided as part of this operation.
      #
      #   @param voided_invoices [Array<Orb::Models::Invoice>] The invoices that were voided as part of this operation.
    end
  end
end
