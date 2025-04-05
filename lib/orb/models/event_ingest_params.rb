# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Events#ingest
    class EventIngestParams < Orb::Internal::Type::BaseModel
      # @!parse
      #   extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute events
      #
      #   @return [Array<Orb::Models::EventIngestParams::Event>]
      required :events, -> { Orb::Internal::Type::ArrayOf[Orb::Models::EventIngestParams::Event] }

      # @!attribute backfill_id
      #   If this ingestion request is part of a backfill, this parameter ties the
      #   ingested events to the backfill
      #
      #   @return [String, nil]
      optional :backfill_id, String, nil?: true

      # @!attribute [r] debug
      #   Flag to enable additional debug information in the endpoint response
      #
      #   @return [Boolean, nil]
      optional :debug, Orb::Internal::Type::Boolean

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :debug

      # @!parse
      #   # @param events [Array<Orb::Models::EventIngestParams::Event>]
      #   # @param backfill_id [String, nil]
      #   # @param debug [Boolean]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(events:, backfill_id: nil, debug: nil, request_options: {}, **) = super

      # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void

      class Event < Orb::Internal::Type::BaseModel
        # @!attribute event_name
        #   A name to meaningfully identify the action or event type.
        #
        #   @return [String]
        required :event_name, String

        # @!attribute idempotency_key
        #   A unique value, generated by the client, that is used to de-duplicate events.
        #   Exactly one event with a given idempotency key will be ingested, which allows
        #   for safe request retries.
        #
        #   @return [String]
        required :idempotency_key, String

        # @!attribute properties
        #   A dictionary of custom properties. Values in this dictionary must be numeric,
        #   boolean, or strings. Nested dictionaries are disallowed.
        #
        #   @return [Object]
        required :properties, Orb::Internal::Type::Unknown

        # @!attribute timestamp
        #   An ISO 8601 format date with no timezone offset (i.e. UTC). This should
        #   represent the time that usage was recorded, and is particularly important to
        #   attribute usage to a given billing period.
        #
        #   @return [Time]
        required :timestamp, Time

        # @!attribute customer_id
        #   The Orb Customer identifier
        #
        #   @return [String, nil]
        optional :customer_id, String, nil?: true

        # @!attribute external_customer_id
        #   An alias for the Orb customer, whose mapping is specified when creating the
        #   customer
        #
        #   @return [String, nil]
        optional :external_customer_id, String, nil?: true

        # @!parse
        #   # @param event_name [String]
        #   # @param idempotency_key [String]
        #   # @param properties [Object]
        #   # @param timestamp [Time]
        #   # @param customer_id [String, nil]
        #   # @param external_customer_id [String, nil]
        #   #
        #   def initialize(event_name:, idempotency_key:, properties:, timestamp:, customer_id: nil, external_customer_id: nil, **) = super

        # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void
      end
    end
  end
end
