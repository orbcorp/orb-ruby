# typed: strong

module Orb
  module Models
    class InvoiceFetchParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Orb::InvoiceFetchParams, Orb::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :invoice_id

      # Whether to return line items with a quantity of zero. When omitted, Orb returns
      # every line item. A line item that is grouped as part of a line item minimum is
      # always returned; an invoice-level minimum does not exempt it.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :include_zero_quantity_line_items

      sig do
        params(
          invoice_id: String,
          include_zero_quantity_line_items: T.nilable(T::Boolean),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        invoice_id:,
        # Whether to return line items with a quantity of zero. When omitted, Orb returns
        # every line item. A line item that is grouped as part of a line item minimum is
        # always returned; an invoice-level minimum does not exempt it.
        include_zero_quantity_line_items: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            invoice_id: String,
            include_zero_quantity_line_items: T.nilable(T::Boolean),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
