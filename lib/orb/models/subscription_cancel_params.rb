# frozen_string_literal: true

module Orb
  module Models
    class SubscriptionCancelParams < Orb::BaseModel
      # @!parse
      #   extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # @!attribute cancel_option
      #   Determines the timing of subscription cancellation
      #
      #   @return [Symbol, Orb::Models::SubscriptionCancelParams::CancelOption]
      required :cancel_option, enum: -> { Orb::Models::SubscriptionCancelParams::CancelOption }

      # @!attribute allow_invoice_credit_or_void
      #   If false, this request will fail if it would void an issued invoice or create a
      #     credit note. Consider using this as a safety mechanism if you do not expect
      #     existing invoices to be changed.
      #
      #   @return [Boolean, nil]
      optional :allow_invoice_credit_or_void, Orb::BooleanModel, nil?: true

      # @!attribute cancellation_date
      #   The date that the cancellation should take effect. This parameter can only be
      #     passed if the `cancel_option` is `requested_date`.
      #
      #   @return [Time, nil]
      optional :cancellation_date, Time, nil?: true

      # @!parse
      #   # @param cancel_option [Symbol, Orb::Models::SubscriptionCancelParams::CancelOption]
      #   # @param allow_invoice_credit_or_void [Boolean, nil]
      #   # @param cancellation_date [Time, nil]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(cancel_option:, allow_invoice_credit_or_void: nil, cancellation_date: nil, request_options: {}, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void

      # @abstract
      #
      # Determines the timing of subscription cancellation
      #
      # @example
      # ```ruby
      # case cancel_option
      # in :end_of_subscription_term
      #   # ...
      # in :immediate
      #   # ...
      # in :requested_date
      #   # ...
      # end
      # ```
      class CancelOption < Orb::Enum
        END_OF_SUBSCRIPTION_TERM = :end_of_subscription_term
        IMMEDIATE = :immediate
        REQUESTED_DATE = :requested_date

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
