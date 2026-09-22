# typed: strong

module Orb
  module Models
    class DataExportsTransferErrorWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::DataExportsTransferErrorWebhookEvent,
            Orb::Internal::AnyHash
          )
        end

      # The ID of this webhook event.
      sig { returns(String) }
      attr_accessor :id

      # The time at which this event was created, to the second.
      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Orb::DataExportsTransferErrorWebhookEvent::Properties) }
      attr_reader :properties

      sig do
        params(
          properties:
            Orb::DataExportsTransferErrorWebhookEvent::Properties::OrHash
        ).void
      end
      attr_writer :properties

      # The event this payload describes.
      sig do
        returns(Orb::DataExportsTransferErrorWebhookEvent::Type::TaggedSymbol)
      end
      attr_accessor :type

      # Issued when a data export transfer fails.
      sig do
        params(
          id: String,
          created_at: Time,
          properties:
            Orb::DataExportsTransferErrorWebhookEvent::Properties::OrHash,
          type: Orb::DataExportsTransferErrorWebhookEvent::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of this webhook event.
        id:,
        # The time at which this event was created, to the second.
        created_at:,
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
            properties: Orb::DataExportsTransferErrorWebhookEvent::Properties,
            type: Orb::DataExportsTransferErrorWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Properties < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::DataExportsTransferErrorWebhookEvent::Properties,
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

        sig { returns(String) }
        attr_accessor :transfer_blamed_party

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
            transfer_blamed_party: String,
            transfer_ended_at: Time,
            transfer_started_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          description:,
          destination_name:,
          resources:,
          rows_transferred:,
          transfer_blamed_party:,
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
              transfer_blamed_party: String,
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
            T.all(Symbol, Orb::DataExportsTransferErrorWebhookEvent::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DATA_EXPORTS_TRANSFER_ERROR =
          T.let(
            :"data_exports.transfer_error",
            Orb::DataExportsTransferErrorWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::DataExportsTransferErrorWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
