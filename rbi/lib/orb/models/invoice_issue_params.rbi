# typed: strong

module Orb
  module Models
    class InvoiceIssueParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # If true, the invoice will be issued synchronously. If false, the invoice will be
      #   issued asynchronously. The synchronous option is only available for invoices
      #   that have no usage fees. If the invoice is configured to sync to an external
      #   provider, a successful response from this endpoint guarantees the invoice is
      #   present in the provider.
      sig { returns(T.nilable(T::Boolean)) }
      def synchronous
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def synchronous=(_)
      end

      sig do
        params(
          synchronous: T::Boolean,
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(synchronous: nil, request_options: {})
      end

      sig { override.returns({synchronous: T::Boolean, request_options: Orb::RequestOptions}) }
      def to_hash
      end
    end
  end
end
