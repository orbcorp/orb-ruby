# frozen_string_literal: true

module Orb
  module Models
    module InvoiceStatusFilter
      extend Orb::Internal::Type::Enum

      DRAFT = :draft
      ISSUED = :issued
      PAID = :paid
      SYNCED = :synced
      VOID = :void

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
