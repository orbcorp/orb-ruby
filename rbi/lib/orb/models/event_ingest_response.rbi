# typed: strong

module Orb
  module Models
    class EventIngestResponse < Orb::BaseModel
      Shape = T.type_alias do
        {
          validation_failed: T::Array[Orb::Models::EventIngestResponse::ValidationFailed],
          debug: T.nilable(Orb::Models::EventIngestResponse::Debug)
        }
      end

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

      sig { returns(Orb::Models::EventIngestResponse::Shape) }
      def to_h; end

      class ValidationFailed < Orb::BaseModel
        Shape = T.type_alias { {idempotency_key: String, validation_errors: T::Array[String]} }

        sig { returns(String) }
        attr_accessor :idempotency_key

        sig { returns(T::Array[String]) }
        attr_accessor :validation_errors

        sig { params(idempotency_key: String, validation_errors: T::Array[String]).void }
        def initialize(idempotency_key:, validation_errors:); end

        sig { returns(Orb::Models::EventIngestResponse::ValidationFailed::Shape) }
        def to_h; end
      end

      class Debug < Orb::BaseModel
        Shape = T.type_alias { {duplicate: T::Array[String], ingested: T::Array[String]} }

        sig { returns(T::Array[String]) }
        attr_accessor :duplicate

        sig { returns(T::Array[String]) }
        attr_accessor :ingested

        sig { params(duplicate: T::Array[String], ingested: T::Array[String]).void }
        def initialize(duplicate:, ingested:); end

        sig { returns(Orb::Models::EventIngestResponse::Debug::Shape) }
        def to_h; end
      end
    end
  end
end
