# typed: strong

module Orb
  module Models
    module Webhooks
      class BillableMetricEditedStandardWebhookEvent < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Webhooks::BillableMetricEditedStandardWebhookEvent,
              Orb::Internal::AnyHash
            )
          end

        # The ID of this webhook event.
        sig { returns(String) }
        attr_accessor :id

        # The Metric resource represents a calculation of a quantity based on events.
        # Metrics are defined by the query that transforms raw usage events into
        # meaningful values for your customers.
        sig { returns(Orb::BillableMetric) }
        attr_reader :billable_metric

        sig { params(billable_metric: Orb::BillableMetric::OrHash).void }
        attr_writer :billable_metric

        # The time at which this event was created, to the second.
        sig { returns(Time) }
        attr_accessor :created_at

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        sig do
          returns(
            Orb::Webhooks::BillableMetricEditedStandardWebhookEvent::PayloadStyle::TaggedSymbol
          )
        end
        attr_accessor :payload_style

        sig do
          returns(
            Orb::Webhooks::BillableMetricEditedStandardWebhookEvent::Properties
          )
        end
        attr_reader :properties

        sig do
          params(
            properties:
              Orb::Webhooks::BillableMetricEditedStandardWebhookEvent::Properties::OrHash
          ).void
        end
        attr_writer :properties

        # The event this payload describes.
        sig do
          returns(
            Orb::Webhooks::BillableMetricEditedStandardWebhookEvent::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # Issued when a billable metric is edited.
        sig do
          params(
            id: String,
            billable_metric: Orb::BillableMetric::OrHash,
            created_at: Time,
            payload_style:
              Orb::Webhooks::BillableMetricEditedStandardWebhookEvent::PayloadStyle::OrSymbol,
            properties:
              Orb::Webhooks::BillableMetricEditedStandardWebhookEvent::Properties::OrHash,
            type:
              Orb::Webhooks::BillableMetricEditedStandardWebhookEvent::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of this webhook event.
          id:,
          # The Metric resource represents a calculation of a quantity based on events.
          # Metrics are defined by the query that transforms raw usage events into
          # meaningful values for your customers.
          billable_metric:,
          # The time at which this event was created, to the second.
          created_at:,
          # The serialization style this payload was rendered in, as configured on the
          # endpoint.
          payload_style:,
          properties:,
          # The event this payload describes.
          type:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: Orb::BillableMetric,
              created_at: Time,
              payload_style:
                Orb::Webhooks::BillableMetricEditedStandardWebhookEvent::PayloadStyle::TaggedSymbol,
              properties:
                Orb::Webhooks::BillableMetricEditedStandardWebhookEvent::Properties,
              type:
                Orb::Webhooks::BillableMetricEditedStandardWebhookEvent::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        module PayloadStyle
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Webhooks::BillableMetricEditedStandardWebhookEvent::PayloadStyle
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXPANDED =
            T.let(
              :expanded,
              Orb::Webhooks::BillableMetricEditedStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )
          STANDARD =
            T.let(
              :standard,
              Orb::Webhooks::BillableMetricEditedStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::BillableMetricEditedStandardWebhookEvent::PayloadStyle::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Properties < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Webhooks::BillableMetricEditedStandardWebhookEvent::Properties,
                Orb::Internal::AnyHash
              )
            end

          # metadata values are non-null on the wire, as on the price event.
          sig do
            returns(
              Orb::Webhooks::BillableMetricEditedStandardWebhookEvent::Properties::PreviousAttributes
            )
          end
          attr_reader :previous_attributes

          sig do
            params(
              previous_attributes:
                Orb::Webhooks::BillableMetricEditedStandardWebhookEvent::Properties::PreviousAttributes::OrHash
            ).void
          end
          attr_writer :previous_attributes

          sig do
            params(
              previous_attributes:
                Orb::Webhooks::BillableMetricEditedStandardWebhookEvent::Properties::PreviousAttributes::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # metadata values are non-null on the wire, as on the price event.
            previous_attributes:
          )
          end

          sig do
            override.returns(
              {
                previous_attributes:
                  Orb::Webhooks::BillableMetricEditedStandardWebhookEvent::Properties::PreviousAttributes
              }
            )
          end
          def to_hash
          end

          class PreviousAttributes < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Webhooks::BillableMetricEditedStandardWebhookEvent::Properties::PreviousAttributes,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_accessor :description

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :name

            # metadata values are non-null on the wire, as on the price event.
            sig do
              params(
                description: T.nilable(String),
                metadata: T.nilable(T::Hash[Symbol, String]),
                name: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(description: nil, metadata: nil, name: nil)
            end

            sig do
              override.returns(
                {
                  description: T.nilable(String),
                  metadata: T.nilable(T::Hash[Symbol, String]),
                  name: T.nilable(String)
                }
              )
            end
            def to_hash
            end
          end
        end

        # The event this payload describes.
        module Type
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Webhooks::BillableMetricEditedStandardWebhookEvent::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BILLABLE_METRIC_EDITED =
            T.let(
              :"billable_metric.edited",
              Orb::Webhooks::BillableMetricEditedStandardWebhookEvent::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::BillableMetricEditedStandardWebhookEvent::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
