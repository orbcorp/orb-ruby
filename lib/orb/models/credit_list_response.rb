require 'orb/model'
module Orb
    module Models
        class CreditListResponse < Orb::Model

                # @!attribute [rw] id
                required :id, String
                # @!attribute [rw] balance
                required :balance, Float
                # @!attribute [rw] expiry_date
                required :expiry_date, String
                # @!attribute [rw] per_unit_cost_basis
                required :per_unit_cost_basis, String

        end
    end
end