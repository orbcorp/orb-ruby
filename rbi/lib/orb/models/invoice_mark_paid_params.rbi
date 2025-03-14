# typed: strong

module Orb
  module Models
    class InvoiceMarkPaidParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # A date string to specify the date of the payment.
      sig { returns(Date) }
      def payment_received_date
      end

      sig { params(_: Date).returns(Date) }
      def payment_received_date=(_)
      end

      # An optional external ID to associate with the payment.
      sig { returns(T.nilable(String)) }
      def external_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_id=(_)
      end

      # An optional note to associate with the payment.
      sig { returns(T.nilable(String)) }
      def notes
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def notes=(_)
      end

      sig do
        params(
          payment_received_date: Date,
          external_id: T.nilable(String),
          notes: T.nilable(String),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
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
