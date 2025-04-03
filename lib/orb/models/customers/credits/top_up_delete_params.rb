# frozen_string_literal: true

module Orb
  module Models
    module Customers
      module Credits
        # @see Orb::Resources::Customers::Credits::TopUps#delete
        class TopUpDeleteParams < Orb::BaseModel
          # @!parse
          #   extend Orb::Internal::Type::RequestParameters::Converter
          include Orb::Internal::Type::RequestParameters

          # @!attribute customer_id
          #
          #   @return [String]
          required :customer_id, String

          # @!parse
          #   # @param customer_id [String]
          #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(customer_id:, request_options: {}, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end
    end
  end
end
