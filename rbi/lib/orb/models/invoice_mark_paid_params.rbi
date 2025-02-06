# typed: strong

module Orb
  module Models
    class InvoiceMarkPaidParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      Shape = T.type_alias do
        T.all(
          {payment_received_date: Date, external_id: T.nilable(String), notes: T.nilable(String)},
          Orb::RequestParameters::Shape
        )
      end

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
          request_options: Orb::RequestOpts
        ).void
      end
      def initialize(payment_received_date:, external_id: nil, notes: nil, request_options: {}); end

      sig { returns(Orb::Models::InvoiceMarkPaidParams::Shape) }
      def to_h; end
    end
  end
end
