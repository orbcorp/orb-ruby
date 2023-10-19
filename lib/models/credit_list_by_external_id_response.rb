require 'model'

module Models
end

class Models::CreditListByExternalIDResponse < Model

        # @!attribute [rw] id
        required :id, String
        # @!attribute [rw] balance
        required :balance, Float
        # @!attribute [rw] expiry_date
        required :expiry_date, String
        # @!attribute [rw] per_unit_cost_basis
        required :per_unit_cost_basis, String

end