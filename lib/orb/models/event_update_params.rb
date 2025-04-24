# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Events#update
    class EventUpdateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute event_name
      #   A name to meaningfully identify the action or event type.
      #
      #   @return [String]
      required :event_name, String

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

      # @!method initialize(event_name:, properties:, timestamp:, customer_id: nil, external_customer_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::EventUpdateParams} for more details.
      #
      #   @param event_name [String] A name to meaningfully identify the action or event type.
      #
      #   @param properties [Object] A dictionary of custom properties. Values in this dictionary must be numeric, bo
      #   ...
      #
      #   @param timestamp [Time] An ISO 8601 format date with no timezone offset (i.e. UTC). This should represen
      #   ...
      #
      #   @param customer_id [String, nil] The Orb Customer identifier
      #
      #   @param external_customer_id [String, nil] An alias for the Orb customer, whose mapping is specified when creating the cust
      #   ...
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
