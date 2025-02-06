# typed: strong

module Orb
  module Models
    class InvoiceMarkPaidParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(Date) }
      attr_accessor :payment_received_date

      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      sig { returns(T.nilable(String)) }
      attr_accessor :notes

      sig do
        params(
          payment_received_date: Date,
          external_id: T.nilable(String),
          notes: T.nilable(String),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(payment_received_date:, external_id: nil, notes: nil, request_options: {}); end

      sig do
        override.returns(
          {
            payment_received_date: Date,
            external_id: T.nilable(String),
            notes: T.nilable(String),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash; end
    end
  end
end
