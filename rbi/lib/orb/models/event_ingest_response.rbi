# typed: strong

module Orb
  module Models
    class EventIngestResponse < Orb::BaseModel
      sig { returns(T::Array[Orb::Models::EventIngestResponse::ValidationFailed]) }
      attr_accessor :validation_failed

      sig { returns(T.nilable(Orb::Models::EventIngestResponse::Debug)) }
      attr_accessor :debug

      sig do
        params(
          validation_failed: T::Array[Orb::Models::EventIngestResponse::ValidationFailed],
          debug: T.nilable(Orb::Models::EventIngestResponse::Debug)
        ).void
      end
      def initialize(validation_failed:, debug: nil); end

      sig do
        override.returns(
          {
            validation_failed: T::Array[Orb::Models::EventIngestResponse::ValidationFailed],
            debug: T.nilable(Orb::Models::EventIngestResponse::Debug)
          }
        )
      end
      def to_hash; end

      class ValidationFailed < Orb::BaseModel
        sig { returns(String) }
        attr_accessor :idempotency_key

        sig { returns(T::Array[String]) }
        attr_accessor :validation_errors

        sig { params(idempotency_key: String, validation_errors: T::Array[String]).void }
        def initialize(idempotency_key:, validation_errors:); end

        sig { override.returns({idempotency_key: String, validation_errors: T::Array[String]}) }
        def to_hash; end
      end

      class Debug < Orb::BaseModel
        sig { returns(T::Array[String]) }
        attr_accessor :duplicate

        sig { returns(T::Array[String]) }
        attr_accessor :ingested

        sig { params(duplicate: T::Array[String], ingested: T::Array[String]).void }
        def initialize(duplicate:, ingested:); end

        sig { override.returns({duplicate: T::Array[String], ingested: T::Array[String]}) }
        def to_hash; end
      end
    end
  end
end
