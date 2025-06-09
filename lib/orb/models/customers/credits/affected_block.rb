# frozen_string_literal: true

module Orb
  module Models
    module Customers
      module Credits
        class AffectedBlock < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute expiry_date
          #
          #   @return [Time, nil]
          required :expiry_date, Time, nil?: true

          # @!attribute per_unit_cost_basis
          #
          #   @return [String, nil]
          required :per_unit_cost_basis, String, nil?: true

          # @!method initialize(id:, expiry_date:, per_unit_cost_basis:)
          #   @param id [String]
          #   @param expiry_date [Time, nil]
          #   @param per_unit_cost_basis [String, nil]
        end
      end
    end
  end
end
