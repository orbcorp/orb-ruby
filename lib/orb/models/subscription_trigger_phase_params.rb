# frozen_string_literal: true

module Orb
  module Models
    class SubscriptionTriggerPhaseParams < Orb::BaseModel
      # @!parse
      #   extend Orb::Type::RequestParameters::Converter
      include Orb::RequestParameters

      # @!attribute allow_invoice_credit_or_void
      #   If false, this request will fail if it would void an issued invoice or create a
      #     credit note. Consider using this as a safety mechanism if you do not expect
      #     existing invoices to be changed.
      #
      #   @return [Boolean, nil]
      optional :allow_invoice_credit_or_void, Orb::BooleanModel, nil?: true

      # @!attribute effective_date
      #   The date on which the phase change should take effect. If not provided, defaults
      #     to today in the customer's timezone.
      #
      #   @return [Date, nil]
      optional :effective_date, Date, nil?: true

      # @!parse
      #   # @param allow_invoice_credit_or_void [Boolean, nil]
      #   # @param effective_date [Date, nil]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(allow_invoice_credit_or_void: nil, effective_date: nil, request_options: {}, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
