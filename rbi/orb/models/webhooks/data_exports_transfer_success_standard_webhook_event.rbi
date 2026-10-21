# typed: strong

module Orb
  module Models
    module Webhooks
      class DataExportsTransferSuccessStandardWebhookEvent < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Webhooks::DataExportsTransferSuccessStandardWebhookEvent,
              Orb::Internal::AnyHash
            )
          end

        # The ID of this webhook event.
        sig { returns(String) }
        attr_accessor :id

        # The time at which this event was created, to the second.
        sig { returns(Time) }
        attr_accessor :created_at

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        sig do
          returns(
            Orb::Webhooks::DataExportsTransferSuccessStandardWebhookEvent::PayloadStyle::TaggedSymbol
          )
        end
        attr_accessor :payload_style

        sig do
          returns(
            Orb::Webhooks::DataExportsTransferSuccessStandardWebhookEvent::Properties
          )
        end
        attr_reader :properties

        sig do
          params(
            properties:
              Orb::Webhooks::DataExportsTransferSuccessStandardWebhookEvent::Properties::OrHash
          ).void
        end
        attr_writer :properties

        # The event this payload describes.
        sig do
          returns(
            Orb::Webhooks::DataExportsTransferSuccessStandardWebhookEvent::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # Issued when a data export transfer succeeds.
        sig do
          params(
            id: String,
            created_at: Time,
            payload_style:
              Orb::Webhooks::DataExportsTransferSuccessStandardWebhookEvent::PayloadStyle::OrSymbol,
            properties:
              Orb::Webhooks::DataExportsTransferSuccessStandardWebhookEvent::Properties::OrHash,
            type:
              Orb::Webhooks::DataExportsTransferSuccessStandardWebhookEvent::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of this webhook event.
          id:,
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
              created_at: Time,
              payload_style:
                Orb::Webhooks::DataExportsTransferSuccessStandardWebhookEvent::PayloadStyle::TaggedSymbol,
              properties:
                Orb::Webhooks::DataExportsTransferSuccessStandardWebhookEvent::Properties,
              type:
                Orb::Webhooks::DataExportsTransferSuccessStandardWebhookEvent::Type::TaggedSymbol
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
                Orb::Webhooks::DataExportsTransferSuccessStandardWebhookEvent::PayloadStyle
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXPANDED =
            T.let(
              :expanded,
              Orb::Webhooks::DataExportsTransferSuccessStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )
          STANDARD =
            T.let(
              :standard,
              Orb::Webhooks::DataExportsTransferSuccessStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::DataExportsTransferSuccessStandardWebhookEvent::PayloadStyle::TaggedSymbol
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
                Orb::Webhooks::DataExportsTransferSuccessStandardWebhookEvent::Properties,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :description

          sig { returns(String) }
          attr_accessor :destination_name

          sig { returns(T::Array[String]) }
          attr_accessor :resources

          sig { returns(Integer) }
          attr_accessor :rows_transferred

          sig { returns(Time) }
          attr_accessor :transfer_ended_at

          sig { returns(Time) }
          attr_accessor :transfer_started_at

          sig do
            params(
              description: String,
              destination_name: String,
              resources: T::Array[String],
              rows_transferred: Integer,
              transfer_ended_at: Time,
              transfer_started_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            description:,
            destination_name:,
            resources:,
            rows_transferred:,
            transfer_ended_at:,
            transfer_started_at:
          )
          end

          sig do
            override.returns(
              {
                description: String,
                destination_name: String,
                resources: T::Array[String],
                rows_transferred: Integer,
                transfer_ended_at: Time,
                transfer_started_at: Time
              }
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
                Orb::Webhooks::DataExportsTransferSuccessStandardWebhookEvent::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DATA_EXPORTS_TRANSFER_SUCCESS =
            T.let(
              :"data_exports.transfer_success",
              Orb::Webhooks::DataExportsTransferSuccessStandardWebhookEvent::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::DataExportsTransferSuccessStandardWebhookEvent::Type::TaggedSymbol
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
