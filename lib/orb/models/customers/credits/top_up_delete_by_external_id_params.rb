# frozen_string_literal: true

module Orb
  module Models
    module Customers
      module Credits
        class TopUpDeleteByExternalIDParams < Orb::BaseModel
          # @!parse
          #   extend Orb::RequestParameters::Converter
          include Orb::RequestParameters

          # @!attribute external_customer_id
          #
          #   @return [String]
          required :external_customer_id, String

          # @!parse
          #   # @param external_customer_id [String]
          #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(external_customer_id:, request_options: {}, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end
    end
  end
end
