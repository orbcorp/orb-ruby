# typed: strong

module Orb
  module Models
    module Webhooks
      class InvoiceCostDataExportedStandardWebhookEvent < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Webhooks::InvoiceCostDataExportedStandardWebhookEvent,
              Orb::Internal::AnyHash
            )
          end

        # The ID of this webhook event.
        sig { returns(String) }
        attr_accessor :id

        # The time at which this event was created, to the second.
        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :invoice

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        sig do
          returns(
            Orb::Webhooks::InvoiceCostDataExportedStandardWebhookEvent::PayloadStyle::TaggedSymbol
          )
        end
        attr_accessor :payload_style

        sig do
          returns(
            Orb::Webhooks::InvoiceCostDataExportedStandardWebhookEvent::Properties
          )
        end
        attr_reader :properties

        sig do
          params(
            properties:
              Orb::Webhooks::InvoiceCostDataExportedStandardWebhookEvent::Properties::OrHash
          ).void
        end
        attr_writer :properties

        # The event this payload describes.
        sig do
          returns(
            Orb::Webhooks::InvoiceCostDataExportedStandardWebhookEvent::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # Issued when invoice cost data is exported.
        sig do
          params(
            id: String,
            created_at: Time,
            invoice: String,
            payload_style:
              Orb::Webhooks::InvoiceCostDataExportedStandardWebhookEvent::PayloadStyle::OrSymbol,
            properties:
              Orb::Webhooks::InvoiceCostDataExportedStandardWebhookEvent::Properties::OrHash,
            type:
              Orb::Webhooks::InvoiceCostDataExportedStandardWebhookEvent::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of this webhook event.
          id:,
          # The time at which this event was created, to the second.
          created_at:,
          invoice:,
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
              created_at: Time,
              invoice: String,
              payload_style:
                Orb::Webhooks::InvoiceCostDataExportedStandardWebhookEvent::PayloadStyle::TaggedSymbol,
              properties:
                Orb::Webhooks::InvoiceCostDataExportedStandardWebhookEvent::Properties,
              type:
                Orb::Webhooks::InvoiceCostDataExportedStandardWebhookEvent::Type::TaggedSymbol
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
                Orb::Webhooks::InvoiceCostDataExportedStandardWebhookEvent::PayloadStyle
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXPANDED =
            T.let(
              :expanded,
              Orb::Webhooks::InvoiceCostDataExportedStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )
          STANDARD =
            T.let(
              :standard,
              Orb::Webhooks::InvoiceCostDataExportedStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::InvoiceCostDataExportedStandardWebhookEvent::PayloadStyle::TaggedSymbol
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
                Orb::Webhooks::InvoiceCostDataExportedStandardWebhookEvent::Properties,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Time) }
          attr_accessor :exported_date

          sig { returns(String) }
          attr_accessor :s3_bucket

          sig { returns(String) }
          attr_accessor :s3_key

          sig do
            params(
              exported_date: Time,
              s3_bucket: String,
              s3_key: String
            ).returns(T.attached_class)
          end
          def self.new(exported_date:, s3_bucket:, s3_key:)
          end

          sig do
            override.returns(
              { exported_date: Time, s3_bucket: String, s3_key: String }
            )
          end
          def to_hash
          end
        end

        # The event this payload describes.
        module Type
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Webhooks::InvoiceCostDataExportedStandardWebhookEvent::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INVOICE_COST_DATA_EXPORTED =
            T.let(
              :"invoice.cost_data_exported",
              Orb::Webhooks::InvoiceCostDataExportedStandardWebhookEvent::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::InvoiceCostDataExportedStandardWebhookEvent::Type::TaggedSymbol
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
