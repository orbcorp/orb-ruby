# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Metrics#create
    class BillableMetric < Orb::Internal::Type::BaseModel
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
      #   with all line items, billable metrics, and prices and are used for defining
      #   external sync behavior for invoices and tax calculation purposes.
      #
      #   @return [Orb::Models::Item]
      required :item, -> { Orb::Item }

      # @!attribute metadata
      #   User specified key-value pairs for the resource. If not present, this defaults
      #   to an empty dictionary. Individual keys can be removed by setting the value to
      #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
      #   `null`.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, Orb::Internal::Type::HashOf[String]

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute status
      #
      #   @return [Symbol, Orb::Models::BillableMetric::Status]
      required :status, enum: -> { Orb::BillableMetric::Status }

      # @!method initialize(id:, description:, item:, metadata:, name:, status:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::BillableMetric} for more details.
      #
      #   The Metric resource represents a calculation of a quantity based on events.
      #   Metrics are defined by the query that transforms raw usage events into
      #   meaningful values for your customers.
      #
      #   @param id [String]
      #
      #   @param description [String, nil]
      #
      #   @param item [Orb::Models::Item] The Item resource represents a sellable product or good. Items are associated wi
      #
      #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
      #
      #   @param name [String]
      #
      #   @param status [Symbol, Orb::Models::BillableMetric::Status]

      # @see Orb::Models::BillableMetric#status
      module Status
        extend Orb::Internal::Type::Enum

        ACTIVE = :active
        DRAFT = :draft
        ARCHIVED = :archived

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
