# typed: strong

module Orb
  module Models
    class InvoiceMarkPaidParams < Orb::BaseModel
      extend Orb::Type::RequestParameters::Converter
      include Orb::RequestParameters

      # A date string to specify the date of the payment.
      sig { returns(Date) }
      attr_accessor :payment_received_date

      # An optional external ID to associate with the payment.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # An optional note to associate with the payment.
      sig { returns(T.nilable(String)) }
      attr_accessor :notes

      sig do
        params(
          payment_received_date: Date,
          external_id: T.nilable(String),
          notes: T.nilable(String),
          request_options: T.any(Orb::RequestOptions, Orb::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(payment_received_date:, external_id: nil, notes: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              payment_received_date: Date,
              external_id: T.nilable(String),
              notes: T.nilable(String),
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
