# frozen_string_literal: true

module Orb
  module Models
    module Customers
      # @see Orb::Resources::Customers::Credits#list
      class CreditListResponse < Orb::Internal::Type::BaseModel
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
        #   @return [Symbol, Orb::Models::Customers::CreditListResponse::Status]
        required :status, enum: -> { Orb::Models::Customers::CreditListResponse::Status }

        # @!parse
        #   # @param id [String]
        #   # @param balance [Float]
        #   # @param effective_date [Time, nil]
        #   # @param expiry_date [Time, nil]
        #   # @param maximum_initial_balance [Float, nil]
        #   # @param per_unit_cost_basis [String, nil]
        #   # @param status [Symbol, Orb::Models::Customers::CreditListResponse::Status]
        #   #
        #   def initialize(id:, balance:, effective_date:, expiry_date:, maximum_initial_balance:, per_unit_cost_basis:, status:, **) = super

        # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void

        # @see Orb::Models::Customers::CreditListResponse#status
        module Status
          extend Orb::Internal::Type::Enum

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
