# frozen_string_literal: true

module Orb
  module Models
    class BillableMetric < Orb::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute description
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute item
      #   The Item resource represents a sellable product or good. Items are associated
      #     with all line items, billable metrics, and prices and are used for defining
      #     external sync behavior for invoices and tax calculation purposes.
      #
      #   @return [Orb::Models::Item]
      required :item, -> { Orb::Models::Item }

      # @!attribute metadata
      #   User specified key-value pairs for the resource. If not present, this defaults
      #     to an empty dictionary. Individual keys can be removed by setting the value to
      #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
      #     `null`.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, Orb::HashOf[String]

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute status
      #
      #   @return [Symbol, Orb::Models::BillableMetric::Status]
      required :status, enum: -> { Orb::Models::BillableMetric::Status }

      # @!parse
      #   # The Metric resource represents a calculation of a quantity based on events.
      #   #   Metrics are defined by the query that transforms raw usage events into
      #   #   meaningful values for your customers.
      #   #
      #   # @param id [String]
      #   # @param description [String, nil]
      #   # @param item [Orb::Models::Item]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param name [String]
      #   # @param status [Symbol, Orb::Models::BillableMetric::Status]
      #   #
      #   def initialize(id:, description:, item:, metadata:, name:, status:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void

      module Status
        extend Orb::Enum

        ACTIVE = :active
        DRAFT = :draft
        ARCHIVED = :archived

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
