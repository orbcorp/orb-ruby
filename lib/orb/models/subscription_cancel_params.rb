# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Subscriptions#cancel
    class SubscriptionCancelParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute cancel_option
      #   Determines the timing of subscription cancellation
      #
      #   @return [Symbol, Orb::Models::SubscriptionCancelParams::CancelOption]
      required :cancel_option, enum: -> { Orb::SubscriptionCancelParams::CancelOption }

      # @!attribute allow_invoice_credit_or_void
      #   If false, this request will fail if it would void an issued invoice or create a
      #   credit note. Consider using this as a safety mechanism if you do not expect
      #   existing invoices to be changed.
      #
      #   @return [Boolean, nil]
      optional :allow_invoice_credit_or_void, Orb::Internal::Type::Boolean, nil?: true

      # @!attribute cancellation_date
      #   The date that the cancellation should take effect. This parameter can only be
      #   passed if the `cancel_option` is `requested_date`.
      #
      #   @return [Time, nil]
      optional :cancellation_date, Time, nil?: true

      # @!method initialize(cancel_option:, allow_invoice_credit_or_void: nil, cancellation_date: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::SubscriptionCancelParams} for more details.
      #
      #   @param cancel_option [Symbol, Orb::Models::SubscriptionCancelParams::CancelOption] Determines the timing of subscription cancellation
      #
      #   @param allow_invoice_credit_or_void [Boolean, nil] If false, this request will fail if it would void an issued invoice or create a
      #
      #   @param cancellation_date [Time, nil] The date that the cancellation should take effect. This parameter can only be pa
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      # Determines the timing of subscription cancellation
      module CancelOption
        extend Orb::Internal::Type::Enum

        END_OF_SUBSCRIPTION_TERM = :end_of_subscription_term
        IMMEDIATE = :immediate
        REQUESTED_DATE = :requested_date

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
