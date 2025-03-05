# frozen_string_literal: true

module Orb
  module Models
    class PaymentAttemptModel < Orb::BaseModel
      # @!attribute id
      #   The ID of the payment attempt.
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   The amount of the payment attempt.
      #
      #   @return [String]
      required :amount, String

      # @!attribute created_at
      #   The time at which the payment attempt was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute payment_provider
      #   The payment provider that attempted to collect the payment.
      #
      #   @return [Symbol, Orb::Models::PaymentAttemptModel::PaymentProvider, nil]
      required :payment_provider, enum: -> { Orb::Models::PaymentAttemptModel::PaymentProvider }, nil?: true

      # @!attribute payment_provider_id
      #   The ID of the payment attempt in the payment provider.
      #
      #   @return [String, nil]
      required :payment_provider_id, String, nil?: true

      # @!attribute succeeded
      #   Whether the payment attempt succeeded.
      #
      #   @return [Boolean]
      required :succeeded, Orb::BooleanModel

      # @!parse
      #   # @param id [String]
      #   # @param amount [String]
      #   # @param created_at [Time]
      #   # @param payment_provider [Symbol, Orb::Models::PaymentAttemptModel::PaymentProvider, nil]
      #   # @param payment_provider_id [String, nil]
      #   # @param succeeded [Boolean]
      #   #
      #   def initialize(id:, amount:, created_at:, payment_provider:, payment_provider_id:, succeeded:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void

      # @abstract
      #
      # The payment provider that attempted to collect the payment.
      #
      # @example
      # ```ruby
      # case payment_provider
      # in :stripe
      #   # ...
      # end
      # ```
      class PaymentProvider < Orb::Enum
        STRIPE = :stripe

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
