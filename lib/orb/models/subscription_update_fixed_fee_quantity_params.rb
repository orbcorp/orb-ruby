# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Subscriptions#update_fixed_fee_quantity
    class SubscriptionUpdateFixedFeeQuantityParams < Orb::Internal::Type::BaseModel
      # @!parse
      #   extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute price_id
      #   Price for which the quantity should be updated. Must be a fixed fee.
      #
      #   @return [String]
      required :price_id, String

      # @!attribute quantity
      #
      #   @return [Float]
      required :quantity, Float

      # @!attribute allow_invoice_credit_or_void
      #   If false, this request will fail if it would void an issued invoice or create a
      #   credit note. Consider using this as a safety mechanism if you do not expect
      #   existing invoices to be changed.
      #
      #   @return [Boolean, nil]
      optional :allow_invoice_credit_or_void, Orb::Internal::Type::Boolean, nil?: true

      # @!attribute [r] change_option
      #   Determines when the change takes effect. Note that if `effective_date` is
      #   specified, this defaults to `effective_date`. Otherwise, this defaults to
      #   `immediate` unless it's explicitly set to `upcoming_invoice`.
      #
      #   @return [Symbol, Orb::Models::SubscriptionUpdateFixedFeeQuantityParams::ChangeOption, nil]
      optional :change_option, enum: -> { Orb::Models::SubscriptionUpdateFixedFeeQuantityParams::ChangeOption }

      # @!parse
      #   # @return [Symbol, Orb::Models::SubscriptionUpdateFixedFeeQuantityParams::ChangeOption]
      #   attr_writer :change_option

      # @!attribute effective_date
      #   The date that the quantity change should take effect, localized to the
      #   customer's timezone. Ifthis parameter is not passed in, the quantity change is
      #   effective according to `change_option`.
      #
      #   @return [Date, nil]
      optional :effective_date, Date, nil?: true

      # @!parse
      #   # @param price_id [String]
      #   # @param quantity [Float]
      #   # @param allow_invoice_credit_or_void [Boolean, nil]
      #   # @param change_option [Symbol, Orb::Models::SubscriptionUpdateFixedFeeQuantityParams::ChangeOption]
      #   # @param effective_date [Date, nil]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     price_id:,
      #     quantity:,
      #     allow_invoice_credit_or_void: nil,
      #     change_option: nil,
      #     effective_date: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void

      # Determines when the change takes effect. Note that if `effective_date` is
      # specified, this defaults to `effective_date`. Otherwise, this defaults to
      # `immediate` unless it's explicitly set to `upcoming_invoice`.
      module ChangeOption
        extend Orb::Internal::Type::Enum

        IMMEDIATE = :immediate
        UPCOMING_INVOICE = :upcoming_invoice
        EFFECTIVE_DATE = :effective_date

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
