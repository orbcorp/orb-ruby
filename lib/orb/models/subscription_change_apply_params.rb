# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::SubscriptionChanges#apply
    class SubscriptionChangeApplyParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

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

      # @!attribute previously_collected_amount
      #   Amount already collected to apply to the customer's balance. If mark_as_paid is
      #   also provided, credit the difference to the customer's balance.
      #
      #   @return [String, nil]
      optional :previously_collected_amount, String, nil?: true

      # @!method initialize(description: nil, mark_as_paid: nil, previously_collected_amount: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::SubscriptionChangeApplyParams} for more details.
      #
      #   @param description [String, nil] Description to apply to the balance transaction representing this credit.
      #
      #   @param mark_as_paid [Boolean, nil] Mark all pending invoices that are payable as paid. If amount is also provided,
      #
      #   @param previously_collected_amount [String, nil] Amount already collected to apply to the customer's balance. If mark_as_paid is
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
