# typed: strong

module Orb
  module Models
    class EventIngestResponse < Orb::Internal::Type::BaseModel
      # Contains all failing validation events. In the case of a 200, this array will
      #   always be empty. This field will always be present.
      sig { returns(T::Array[Orb::Models::EventIngestResponse::ValidationFailed]) }
      attr_accessor :validation_failed

      # Optional debug information (only present when debug=true is passed to the
      #   endpoint). Contains ingested and duplicate event idempotency keys.
      sig { returns(T.nilable(Orb::Models::EventIngestResponse::Debug)) }
      attr_reader :debug

      sig { params(debug: T.nilable(T.any(Orb::Models::EventIngestResponse::Debug, Orb::Internal::AnyHash))).void }
      attr_writer :debug

      sig do
        params(
          validation_failed: T::Array[T.any(Orb::Models::EventIngestResponse::ValidationFailed, Orb::Internal::AnyHash)],
          debug: T.nilable(T.any(Orb::Models::EventIngestResponse::Debug, Orb::Internal::AnyHash))
        )
          .returns(T.attached_class)
      end
      def self.new(validation_failed:, debug: nil); end

      sig do
        override
          .returns(
            {
              validation_failed: T::Array[Orb::Models::EventIngestResponse::ValidationFailed],
              debug: T.nilable(Orb::Models::EventIngestResponse::Debug)
            }
          )
      end
      def to_hash; end

      class ValidationFailed < Orb::Internal::Type::BaseModel
        # The passed idempotency_key corresponding to the validation_errors
        sig { returns(String) }
        attr_accessor :idempotency_key

        # An array of strings corresponding to validation failures for this
        #   idempotency_key.
        sig { returns(T::Array[String]) }
        attr_accessor :validation_errors

        sig { params(idempotency_key: String, validation_errors: T::Array[String]).returns(T.attached_class) }
        def self.new(idempotency_key:, validation_errors:); end

        sig { override.returns({idempotency_key: String, validation_errors: T::Array[String]}) }
        def to_hash; end
      end

      class Debug < Orb::Internal::Type::BaseModel
        sig { returns(T::Array[String]) }
        attr_accessor :duplicate

        sig { returns(T::Array[String]) }
        attr_accessor :ingested

        # Optional debug information (only present when debug=true is passed to the
        #   endpoint). Contains ingested and duplicate event idempotency keys.
        sig { params(duplicate: T::Array[String], ingested: T::Array[String]).returns(T.attached_class) }
        def self.new(duplicate:, ingested:); end

        sig { override.returns({duplicate: T::Array[String], ingested: T::Array[String]}) }
        def to_hash; end
      end
    end
  end
end
