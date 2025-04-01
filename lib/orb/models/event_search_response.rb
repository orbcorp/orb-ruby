# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Events#search
    class EventSearchResponse < Orb::BaseModel
      # @!attribute data
      #
      #   @return [Array<Orb::Models::EventSearchResponse::Data>]
      required :data, -> { Orb::ArrayOf[Orb::Models::EventSearchResponse::Data] }

      # @!parse
      #   # @param data [Array<Orb::Models::EventSearchResponse::Data>]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void

      class Data < Orb::BaseModel
        # @!attribute id
        #   A unique value, generated by the client, that is used to de-duplicate events.
        #     Exactly one event with a given idempotency key will be ingested, which allows
        #     for safe request retries.
        #
        #   @return [String]
        required :id, String

        # @!attribute customer_id
        #   The Orb Customer identifier
        #
        #   @return [String, nil]
        required :customer_id, String, nil?: true

        # @!attribute deprecated
        #   A boolean indicating whether the event is currently deprecated.
        #
        #   @return [Boolean]
        required :deprecated, Orb::BooleanModel

        # @!attribute event_name
        #   A name to meaningfully identify the action or event type.
        #
        #   @return [String]
        required :event_name, String

        # @!attribute external_customer_id
        #   An alias for the Orb customer, whose mapping is specified when creating the
        #     customer
        #
        #   @return [String, nil]
        required :external_customer_id, String, nil?: true

        # @!attribute properties
        #   A dictionary of custom properties. Values in this dictionary must be numeric,
        #     boolean, or strings. Nested dictionaries are disallowed.
        #
        #   @return [Object]
        required :properties, Orb::Unknown

        # @!attribute timestamp
        #   An ISO 8601 format date with no timezone offset (i.e. UTC). This should
        #     represent the time that usage was recorded, and is particularly important to
        #     attribute usage to a given billing period.
        #
        #   @return [Time]
        required :timestamp, Time

        # @!parse
        #   # The [Event](/core-concepts#event) resource represents a usage event that has
        #   #   been created for a customer. Events are the core of Orb's usage-based billing
        #   #   model, and are used to calculate the usage charges for a given billing period.
        #   #
        #   # @param id [String]
        #   # @param customer_id [String, nil]
        #   # @param deprecated [Boolean]
        #   # @param event_name [String]
        #   # @param external_customer_id [String, nil]
        #   # @param properties [Object]
        #   # @param timestamp [Time]
        #   #
        #   def initialize(id:, customer_id:, deprecated:, event_name:, external_customer_id:, properties:, timestamp:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end
    end
  end
end
