# typed: strong

module Orb
  module Models
    class InvoiceIssueParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :synchronous

      sig { params(synchronous: T::Boolean).void }
      attr_writer :synchronous

      sig do
        params(
          synchronous: T::Boolean,
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(synchronous: nil, request_options: {})
      end

      sig { override.returns({synchronous: T::Boolean, request_options: Orb::RequestOptions}) }
      def to_hash
      end
    end
  end
end
