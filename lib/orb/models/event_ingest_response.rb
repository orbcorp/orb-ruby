# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Events#ingest
    class EventIngestResponse < Orb::Internal::Type::BaseModel
      # @!attribute validation_failed
      #   Contains all failing validation events. In the case of a 200, this array will
      #     always be empty. This field will always be present.
      #
      #   @return [Array<Orb::Models::EventIngestResponse::ValidationFailed>]
      required :validation_failed,
               -> { Orb::Internal::Type::ArrayOf[Orb::Models::EventIngestResponse::ValidationFailed] }

      # @!attribute debug
      #   Optional debug information (only present when debug=true is passed to the
      #     endpoint). Contains ingested and duplicate event idempotency keys.
      #
      #   @return [Orb::Models::EventIngestResponse::Debug, nil]
      optional :debug, -> { Orb::Models::EventIngestResponse::Debug }, nil?: true

      # @!parse
      #   # @param validation_failed [Array<Orb::Models::EventIngestResponse::ValidationFailed>]
      #   # @param debug [Orb::Models::EventIngestResponse::Debug, nil]
      #   #
      #   def initialize(validation_failed:, debug: nil, **) = super

      # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void

      class ValidationFailed < Orb::Internal::Type::BaseModel
        # @!attribute idempotency_key
        #   The passed idempotency_key corresponding to the validation_errors
        #
        #   @return [String]
        required :idempotency_key, String

        # @!attribute validation_errors
        #   An array of strings corresponding to validation failures for this
        #     idempotency_key.
        #
        #   @return [Array<String>]
        required :validation_errors, Orb::Internal::Type::ArrayOf[String]

        # @!parse
        #   # @param idempotency_key [String]
        #   # @param validation_errors [Array<String>]
        #   #
        #   def initialize(idempotency_key:, validation_errors:, **) = super

        # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void
      end

      # @see Orb::Models::EventIngestResponse#debug
      class Debug < Orb::Internal::Type::BaseModel
        # @!attribute duplicate
        #
        #   @return [Array<String>]
        required :duplicate, Orb::Internal::Type::ArrayOf[String]

        # @!attribute ingested
        #
        #   @return [Array<String>]
        required :ingested, Orb::Internal::Type::ArrayOf[String]

        # @!parse
        #   # Optional debug information (only present when debug=true is passed to the
        #   #   endpoint). Contains ingested and duplicate event idempotency keys.
        #   #
        #   # @param duplicate [Array<String>]
        #   # @param ingested [Array<String>]
        #   #
        #   def initialize(duplicate:, ingested:, **) = super

        # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void
      end
    end
  end
end
