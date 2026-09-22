# frozen_string_literal: true

module Orb
  module Models
    class BillableMetricEditedWebhookEvent < Orb::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of this webhook event.
      #
      #   @return [String]
      required :id, String

      # @!attribute billable_metric
      #   The Metric resource represents a calculation of a quantity based on events.
      #   Metrics are defined by the query that transforms raw usage events into
      #   meaningful values for your customers.
      #
      #   @return [Orb::Models::BillableMetric]
      required :billable_metric, -> { Orb::BillableMetric }

      # @!attribute created_at
      #   The time at which this event was created, to the second.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute properties
      #
      #   @return [Orb::Models::BillableMetricEditedWebhookEvent::Properties]
      required :properties, -> { Orb::BillableMetricEditedWebhookEvent::Properties }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::BillableMetricEditedWebhookEvent::Type]
      required :type, enum: -> { Orb::BillableMetricEditedWebhookEvent::Type }

      # @!method initialize(id:, billable_metric:, created_at:, properties:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::BillableMetricEditedWebhookEvent} for more details.
      #
      #   Issued when a billable metric is edited.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param billable_metric [Orb::Models::BillableMetric] The Metric resource represents a calculation of a quantity based on events.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param properties [Orb::Models::BillableMetricEditedWebhookEvent::Properties]
      #
      #   @param type [Symbol, Orb::Models::BillableMetricEditedWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::BillableMetricEditedWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute previous_attributes
        #   metadata values are non-null on the wire, as on the price event.
        #
        #   @return [Orb::Models::BillableMetricEditedWebhookEvent::Properties::PreviousAttributes]
        required :previous_attributes,
                 -> { Orb::BillableMetricEditedWebhookEvent::Properties::PreviousAttributes }

        # @!method initialize(previous_attributes:)
        #   @param previous_attributes [Orb::Models::BillableMetricEditedWebhookEvent::Properties::PreviousAttributes] metadata values are non-null on the wire, as on the price event.

        # @see Orb::Models::BillableMetricEditedWebhookEvent::Properties#previous_attributes
        class PreviousAttributes < Orb::Internal::Type::BaseModel
          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!attribute metadata
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :metadata, Orb::Internal::Type::HashOf[String], nil?: true

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String, nil?: true

          # @!method initialize(description: nil, metadata: nil, name: nil)
          #   metadata values are non-null on the wire, as on the price event.
          #
          #   @param description [String, nil]
          #   @param metadata [Hash{Symbol=>String}, nil]
          #   @param name [String, nil]
        end
      end

      # The event this payload describes.
      #
      # @see Orb::Models::BillableMetricEditedWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        BILLABLE_METRIC_EDITED = :"billable_metric.edited"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
