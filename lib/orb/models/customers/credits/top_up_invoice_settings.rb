# frozen_string_literal: true

module Orb
  module Models
    module Customers
      module Credits
        class TopUpInvoiceSettings < Orb::Internal::Type::BaseModel
          # @!attribute auto_collection
          #   Whether the credits purchase invoice should auto collect with the customer's
          #   saved payment method.
          #
          #   @return [Boolean]
          required :auto_collection, Orb::Internal::Type::Boolean

          # @!attribute net_terms
          #   The net terms determines the difference between the invoice date and the issue
          #   date for the invoice. If you intend the invoice to be due on issue, set this
          #   to 0.
          #
          #   @return [Integer]
          required :net_terms, Integer

          # @!attribute memo
          #   An optional memo to display on the invoice.
          #
          #   @return [String, nil]
          optional :memo, String, nil?: true

          # @!attribute require_successful_payment
          #   When true, credit blocks created by this top-up will require that the
          #   corresponding invoice is paid before they are drawn down from. If any topup
          #   block is pending payment, further automatic top-ups will be paused until the
          #   invoice is paid or voided.
          #
          #   @return [Boolean, nil]
          optional :require_successful_payment, Orb::Internal::Type::Boolean

          # @!method initialize(auto_collection:, net_terms:, memo: nil, require_successful_payment: nil)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Customers::Credits::TopUpInvoiceSettings} for more details.
          #
          #   @param auto_collection [Boolean] Whether the credits purchase invoice should auto collect with the customer's sav
          #
          #   @param net_terms [Integer] The net terms determines the difference between the invoice date and the issue d
          #
          #   @param memo [String, nil] An optional memo to display on the invoice.
          #
          #   @param require_successful_payment [Boolean] When true, credit blocks created by this top-up will require that the correspond
        end
      end
    end
  end
end
