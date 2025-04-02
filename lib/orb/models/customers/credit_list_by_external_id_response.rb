# frozen_string_literal: true

module Orb
  module Models
    module Customers
      # @see Orb::Resources::Customers::Credits#list_by_external_id
      class CreditListByExternalIDResponse < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute balance
        #
        #   @return [Float]
        required :balance, Float

        # @!attribute effective_date
        #
        #   @return [Time, nil]
        required :effective_date, Time, nil?: true

        # @!attribute expiry_date
        #
        #   @return [Time, nil]
        required :expiry_date, Time, nil?: true

        # @!attribute maximum_initial_balance
        #
        #   @return [Float, nil]
        required :maximum_initial_balance, Float, nil?: true

        # @!attribute per_unit_cost_basis
        #
        #   @return [String, nil]
        required :per_unit_cost_basis, String, nil?: true

        # @!attribute status
        #
        #   @return [Symbol, Orb::Models::Customers::CreditListByExternalIDResponse::Status]
        required :status, enum: -> { Orb::Models::Customers::CreditListByExternalIDResponse::Status }

        # @!parse
        #   # @param id [String]
        #   # @param balance [Float]
        #   # @param effective_date [Time, nil]
        #   # @param expiry_date [Time, nil]
        #   # @param maximum_initial_balance [Float, nil]
        #   # @param per_unit_cost_basis [String, nil]
        #   # @param status [Symbol, Orb::Models::Customers::CreditListByExternalIDResponse::Status]
        #   #
        #   def initialize(id:, balance:, effective_date:, expiry_date:, maximum_initial_balance:, per_unit_cost_basis:, status:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @see Orb::Models::Customers::CreditListByExternalIDResponse#status
        module Status
          extend Orb::Enum

          ACTIVE = :active
          PENDING_PAYMENT = :pending_payment

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
