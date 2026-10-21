# frozen_string_literal: true

module Orb
  module Models
    module Webhooks
      class BillableMetricEditedStandardWebhookEvent < Orb::Internal::Type::BaseModel
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

        # @!attribute payload_style
        #   The serialization style this payload was rendered in, as configured on the
        #   endpoint.
        #
        #   @return [Symbol, Orb::Models::Webhooks::BillableMetricEditedStandardWebhookEvent::PayloadStyle]
        required :payload_style,
                 enum: -> { Orb::Webhooks::BillableMetricEditedStandardWebhookEvent::PayloadStyle }

        # @!attribute properties
        #
        #   @return [Orb::Models::Webhooks::BillableMetricEditedStandardWebhookEvent::Properties]
        required :properties, -> { Orb::Webhooks::BillableMetricEditedStandardWebhookEvent::Properties }

        # @!attribute type
        #   The event this payload describes.
        #
        #   @return [Symbol, Orb::Models::Webhooks::BillableMetricEditedStandardWebhookEvent::Type]
        required :type, enum: -> { Orb::Webhooks::BillableMetricEditedStandardWebhookEvent::Type }

        # @!method initialize(id:, billable_metric:, created_at:, payload_style:, properties:, type:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Webhooks::BillableMetricEditedStandardWebhookEvent} for more
        #   details.
        #
        #   Issued when a billable metric is edited.
        #
        #   @param id [String] The ID of this webhook event.
        #
        #   @param billable_metric [Orb::Models::BillableMetric] The Metric resource represents a calculation of a quantity based on events.
        #
        #   @param created_at [Time] The time at which this event was created, to the second.
        #
        #   @param payload_style [Symbol, Orb::Models::Webhooks::BillableMetricEditedStandardWebhookEvent::PayloadStyle] The serialization style this payload was rendered in, as configured on the endpo
        #
        #   @param properties [Orb::Models::Webhooks::BillableMetricEditedStandardWebhookEvent::Properties]
        #
        #   @param type [Symbol, Orb::Models::Webhooks::BillableMetricEditedStandardWebhookEvent::Type] The event this payload describes.

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        #
        # @see Orb::Models::Webhooks::BillableMetricEditedStandardWebhookEvent#payload_style
        module PayloadStyle
          extend Orb::Internal::Type::Enum

          EXPANDED = :expanded
          STANDARD = :standard

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Webhooks::BillableMetricEditedStandardWebhookEvent#properties
        class Properties < Orb::Internal::Type::BaseModel
          # @!attribute previous_attributes
          #   metadata values are non-null on the wire, as on the price event.
          #
          #   @return [Orb::Models::Webhooks::BillableMetricEditedStandardWebhookEvent::Properties::PreviousAttributes]
          required :previous_attributes,
                   -> { Orb::Webhooks::BillableMetricEditedStandardWebhookEvent::Properties::PreviousAttributes }

          # @!method initialize(previous_attributes:)
          #   @param previous_attributes [Orb::Models::Webhooks::BillableMetricEditedStandardWebhookEvent::Properties::PreviousAttributes] metadata values are non-null on the wire, as on the price event.

          # @see Orb::Models::Webhooks::BillableMetricEditedStandardWebhookEvent::Properties#previous_attributes
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
        # @see Orb::Models::Webhooks::BillableMetricEditedStandardWebhookEvent#type
        module Type
          extend Orb::Internal::Type::Enum

          BILLABLE_METRIC_EDITED = :"billable_metric.edited"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
