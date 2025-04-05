# frozen_string_literal: true

module Orb
  module Models
    module Customers
      module Credits
        # @see Orb::Resources::Customers::Credits::TopUps#create
        class TopUpCreateParams < Orb::Internal::Type::BaseModel
          # @!parse
          #   extend Orb::Internal::Type::RequestParameters::Converter
          include Orb::Internal::Type::RequestParameters

          # @!attribute amount
          #   The amount to increment when the threshold is reached.
          #
          #   @return [String]
          required :amount, String

          # @!attribute currency
          #   The currency or custom pricing unit to use for this top-up. If this is a
          #     real-world currency, it must match the customer's invoicing currency.
          #
          #   @return [String]
          required :currency, String

          # @!attribute invoice_settings
          #   Settings for invoices generated by triggered top-ups.
          #
          #   @return [Orb::Models::Customers::Credits::TopUpCreateParams::InvoiceSettings]
          required :invoice_settings, -> { Orb::Models::Customers::Credits::TopUpCreateParams::InvoiceSettings }

          # @!attribute per_unit_cost_basis
          #   How much, in the customer's currency, to charge for each unit.
          #
          #   @return [String]
          required :per_unit_cost_basis, String

          # @!attribute threshold
          #   The threshold at which to trigger the top-up. If the balance is at or below this
          #     threshold, the top-up will be triggered.
          #
          #   @return [String]
          required :threshold, String

          # @!attribute active_from
          #   The date from which the top-up is active. If unspecified, the top-up is active
          #     immediately.
          #
          #   @return [Time, nil]
          optional :active_from, Time, nil?: true

          # @!attribute expires_after
          #   The number of days or months after which the top-up expires. If unspecified, it
          #     does not expire.
          #
          #   @return [Integer, nil]
          optional :expires_after, Integer, nil?: true

          # @!attribute expires_after_unit
          #   The unit of expires_after.
          #
          #   @return [Symbol, Orb::Models::Customers::Credits::TopUpCreateParams::ExpiresAfterUnit, nil]
          optional :expires_after_unit,
                   enum: -> { Orb::Models::Customers::Credits::TopUpCreateParams::ExpiresAfterUnit },
                   nil?: true

          # @!parse
          #   # @param amount [String]
          #   # @param currency [String]
          #   # @param invoice_settings [Orb::Models::Customers::Credits::TopUpCreateParams::InvoiceSettings]
          #   # @param per_unit_cost_basis [String]
          #   # @param threshold [String]
          #   # @param active_from [Time, nil]
          #   # @param expires_after [Integer, nil]
          #   # @param expires_after_unit [Symbol, Orb::Models::Customers::Credits::TopUpCreateParams::ExpiresAfterUnit, nil]
          #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(
          #     amount:,
          #     currency:,
          #     invoice_settings:,
          #     per_unit_cost_basis:,
          #     threshold:,
          #     active_from: nil,
          #     expires_after: nil,
          #     expires_after_unit: nil,
          #     request_options: {},
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void

          class InvoiceSettings < Orb::Internal::Type::BaseModel
            # @!attribute auto_collection
            #   Whether the credits purchase invoice should auto collect with the customer's
            #     saved payment method.
            #
            #   @return [Boolean]
            required :auto_collection, Orb::Internal::Type::Boolean

            # @!attribute net_terms
            #   The net terms determines the difference between the invoice date and the issue
            #     date for the invoice. If you intend the invoice to be due on issue, set this
            #     to 0.
            #
            #   @return [Integer]
            required :net_terms, Integer

            # @!attribute memo
            #   An optional memo to display on the invoice.
            #
            #   @return [String, nil]
            optional :memo, String, nil?: true

            # @!attribute [r] require_successful_payment
            #   If true, new credit blocks created by this top-up will require that the
            #     corresponding invoice is paid before they can be drawn down from.
            #
            #   @return [Boolean, nil]
            optional :require_successful_payment, Orb::Internal::Type::Boolean

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :require_successful_payment

            # @!parse
            #   # Settings for invoices generated by triggered top-ups.
            #   #
            #   # @param auto_collection [Boolean]
            #   # @param net_terms [Integer]
            #   # @param memo [String, nil]
            #   # @param require_successful_payment [Boolean]
            #   #
            #   def initialize(auto_collection:, net_terms:, memo: nil, require_successful_payment: nil, **) = super

            # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void
          end

          # The unit of expires_after.
          module ExpiresAfterUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end
      end
    end
  end
end
