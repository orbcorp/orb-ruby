# typed: strong

module Orb
  module Resources
    class Events
      sig { returns(Orb::Resources::Events::Backfills) }
      attr_reader :backfills

      sig { returns(Orb::Resources::Events::Volume) }
      attr_reader :volume

      sig do
        params(
          event_id: String,
          event_name: String,
          properties: T.anything,
          timestamp: Time,
          customer_id: T.nilable(String),
          external_customer_id: T.nilable(String),
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Orb::Models::EventUpdateResponse)
      end
      def update(
        event_id,
        event_name:,
        properties:,
        timestamp:,
        customer_id: nil,
        external_customer_id: nil,
        request_options: {}
      ); end

      sig do
        params(
          event_id: String,
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Orb::Models::EventDeprecateResponse)
      end
      def deprecate(event_id, request_options: {}); end

      sig do
        params(
          events: T::Array[Orb::Models::EventIngestParams::Event],
          backfill_id: T.nilable(String),
          debug: T::Boolean,
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Orb::Models::EventIngestResponse)
      end
      def ingest(events:, backfill_id: nil, debug: nil, request_options: {}); end

      sig do
        params(
          event_ids: T::Array[String],
          timeframe_end: T.nilable(Time),
          timeframe_start: T.nilable(Time),
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Orb::Models::EventSearchResponse)
      end
      def search(event_ids:, timeframe_end: nil, timeframe_start: nil, request_options: {}); end

      sig { params(client: Orb::Client).void }
      def initialize(client:); end
    end
  end
end
