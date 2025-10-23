# typed: strong

module Orb
  module Models
    class SubscriptionChangeApplyParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::SubscriptionChangeApplyParams, Orb::Internal::AnyHash)
        end

      # Description to apply to the balance transaction representing this credit.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Mark all pending invoices that are payable as paid. If amount is also provided,
      # mark as paid and credit the difference to the customer's balance.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :mark_as_paid

      # An optional external ID to associate with the payment. Only applicable when
      # mark_as_paid is true.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_external_id

      # Optional notes about the payment. Only applicable when mark_as_paid is true.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_notes

      # A date string to specify the date the payment was received. Only applicable when
      # mark_as_paid is true. If not provided, defaults to the current date.
      sig { returns(T.nilable(Date)) }
      attr_accessor :payment_received_date

      # Amount already collected to apply to the customer's balance. If mark_as_paid is
      # also provided, credit the difference to the customer's balance.
      sig { returns(T.nilable(String)) }
      attr_accessor :previously_collected_amount

      sig do
        params(
          description: T.nilable(String),
          mark_as_paid: T.nilable(T::Boolean),
          payment_external_id: T.nilable(String),
          payment_notes: T.nilable(String),
          payment_received_date: T.nilable(Date),
          previously_collected_amount: T.nilable(String),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Description to apply to the balance transaction representing this credit.
        description: nil,
        # Mark all pending invoices that are payable as paid. If amount is also provided,
        # mark as paid and credit the difference to the customer's balance.
        mark_as_paid: nil,
        # An optional external ID to associate with the payment. Only applicable when
        # mark_as_paid is true.
        payment_external_id: nil,
        # Optional notes about the payment. Only applicable when mark_as_paid is true.
        payment_notes: nil,
        # A date string to specify the date the payment was received. Only applicable when
        # mark_as_paid is true. If not provided, defaults to the current date.
        payment_received_date: nil,
        # Amount already collected to apply to the customer's balance. If mark_as_paid is
        # also provided, credit the difference to the customer's balance.
        previously_collected_amount: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            description: T.nilable(String),
            mark_as_paid: T.nilable(T::Boolean),
            payment_external_id: T.nilable(String),
            payment_notes: T.nilable(String),
            payment_received_date: T.nilable(Date),
            previously_collected_amount: T.nilable(String),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
