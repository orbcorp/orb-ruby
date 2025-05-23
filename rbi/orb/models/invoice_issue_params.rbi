# typed: strong

module Orb
  module Models
    class InvoiceIssueParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Orb::InvoiceIssueParams, Orb::Internal::AnyHash) }

      # If true, the invoice will be issued synchronously. If false, the invoice will be
      # issued asynchronously. The synchronous option is only available for invoices
      # that have no usage fees. If the invoice is configured to sync to an external
      # provider, a successful response from this endpoint guarantees the invoice is
      # present in the provider.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :synchronous

      sig { params(synchronous: T::Boolean).void }
      attr_writer :synchronous

      sig do
        params(
          synchronous: T::Boolean,
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # If true, the invoice will be issued synchronously. If false, the invoice will be
        # issued asynchronously. The synchronous option is only available for invoices
        # that have no usage fees. If the invoice is configured to sync to an external
        # provider, a successful response from this endpoint guarantees the invoice is
        # present in the provider.
        synchronous: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { synchronous: T::Boolean, request_options: Orb::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
