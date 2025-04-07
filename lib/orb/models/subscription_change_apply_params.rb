# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::SubscriptionChanges#apply
    class SubscriptionChangeApplyParams < Orb::Internal::Type::BaseModel
      # @!parse
      #   extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute description
      #   Description to apply to the balance transaction representing this credit.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute previously_collected_amount
      #   Amount already collected to apply to the customer's balance.
      #
      #   @return [String, nil]
      optional :previously_collected_amount, String, nil?: true

      # @!parse
      #   # @param description [String, nil]
      #   # @param previously_collected_amount [String, nil]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(description: nil, previously_collected_amount: nil, request_options: {}, **) = super

      # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void
    end
  end
end
