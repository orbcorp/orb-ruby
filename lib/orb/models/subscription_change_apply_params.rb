# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::SubscriptionChanges#apply
    class SubscriptionChangeApplyParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute subscription_change_id
      #
      #   @return [String]
      required :subscription_change_id, String

      # @!attribute description
      #   Description to apply to the balance transaction representing this credit.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute mark_as_paid
      #   Mark all pending invoices that are payable as paid. If amount is also provided,
      #   mark as paid and credit the difference to the customer's balance.
      #
      #   @return [Boolean, nil]
      optional :mark_as_paid, Orb::Internal::Type::Boolean, nil?: true

      # @!attribute payment_external_id
      #   An optional external ID to associate with the payment. Only applicable when
      #   mark_as_paid is true.
      #
      #   @return [String, nil]
      optional :payment_external_id, String, nil?: true

      # @!attribute payment_notes
      #   Optional notes about the payment. Only applicable when mark_as_paid is true.
      #
      #   @return [String, nil]
      optional :payment_notes, String, nil?: true

      # @!attribute payment_received_date
      #   A date string to specify the date the payment was received. Only applicable when
      #   mark_as_paid is true. If not provided, defaults to the current date.
      #
      #   @return [Date, nil]
      optional :payment_received_date, Date, nil?: true

      # @!attribute previously_collected_amount
      #   Amount already collected to apply to the customer's balance. If mark_as_paid is
      #   also provided, credit the difference to the customer's balance.
      #
      #   @return [String, nil]
      optional :previously_collected_amount, String, nil?: true

      # @!method initialize(subscription_change_id:, description: nil, mark_as_paid: nil, payment_external_id: nil, payment_notes: nil, payment_received_date: nil, previously_collected_amount: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::SubscriptionChangeApplyParams} for more details.
      #
      #   @param subscription_change_id [String]
      #
      #   @param description [String, nil] Description to apply to the balance transaction representing this credit.
      #
      #   @param mark_as_paid [Boolean, nil] Mark all pending invoices that are payable as paid. If amount is also provided,
      #
      #   @param payment_external_id [String, nil] An optional external ID to associate with the payment. Only applicable when mark
      #
      #   @param payment_notes [String, nil] Optional notes about the payment. Only applicable when mark_as_paid is true.
      #
      #   @param payment_received_date [Date, nil] A date string to specify the date the payment was received. Only applicable when
      #
      #   @param previously_collected_amount [String, nil] Amount already collected to apply to the customer's balance. If mark_as_paid is
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
