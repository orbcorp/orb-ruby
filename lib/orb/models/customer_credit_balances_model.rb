# frozen_string_literal: true

module Orb
  module Models
    class CustomerCreditBalancesModel < Orb::BaseModel
      # @!attribute data
      #
      #   @return [Array<Orb::Models::CustomerCreditBalancesModel::Data>]
      required :data, -> { Orb::ArrayOf[Orb::Models::CustomerCreditBalancesModel::Data] }

      # @!attribute pagination_metadata
      #
      #   @return [Orb::Models::PaginationMetadata]
      required :pagination_metadata, -> { Orb::Models::PaginationMetadata }

      # @!parse
      #   # @param data [Array<Orb::Models::CustomerCreditBalancesModel::Data>]
      #   # @param pagination_metadata [Orb::Models::PaginationMetadata]
      #   #
      #   def initialize(data:, pagination_metadata:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void

      class Data < Orb::BaseModel
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
        #   @return [Symbol, Orb::Models::CustomerCreditBalancesModel::Data::Status]
        required :status, enum: -> { Orb::Models::CustomerCreditBalancesModel::Data::Status }

        # @!parse
        #   # @param id [String]
        #   # @param balance [Float]
        #   # @param effective_date [Time, nil]
        #   # @param expiry_date [Time, nil]
        #   # @param maximum_initial_balance [Float, nil]
        #   # @param per_unit_cost_basis [String, nil]
        #   # @param status [Symbol, Orb::Models::CustomerCreditBalancesModel::Data::Status]
        #   #
        #   def initialize(id:, balance:, effective_date:, expiry_date:, maximum_initial_balance:, per_unit_cost_basis:, status:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case status
        # in :active
        #   # ...
        # in :pending_payment
        #   # ...
        # end
        # ```
        class Status < Orb::Enum
          ACTIVE = :active
          PENDING_PAYMENT = :pending_payment

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end
    end
  end
end
