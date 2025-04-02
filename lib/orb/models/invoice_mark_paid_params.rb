# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Invoices#mark_paid
    class InvoiceMarkPaidParams < Orb::BaseModel
      # @!parse
      #   extend Orb::Type::RequestParameters::Converter
      include Orb::RequestParameters

      # @!attribute payment_received_date
      #   A date string to specify the date of the payment.
      #
      #   @return [Date]
      required :payment_received_date, Date

      # @!attribute external_id
      #   An optional external ID to associate with the payment.
      #
      #   @return [String, nil]
      optional :external_id, String, nil?: true

      # @!attribute notes
      #   An optional note to associate with the payment.
      #
      #   @return [String, nil]
      optional :notes, String, nil?: true

      # @!parse
      #   # @param payment_received_date [Date]
      #   # @param external_id [String, nil]
      #   # @param notes [String, nil]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(payment_received_date:, external_id: nil, notes: nil, request_options: {}, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
