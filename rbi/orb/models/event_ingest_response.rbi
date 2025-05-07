# typed: strong

module Orb
  module Models
    class EventIngestResponse < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(T.self_type, Orb::Internal::AnyHash) }

      # Contains all failing validation events. In the case of a 200, this array will
      # always be empty. This field will always be present.
      sig do
        returns(T::Array[Orb::Models::EventIngestResponse::ValidationFailed])
      end
      attr_accessor :validation_failed

      # Optional debug information (only present when debug=true is passed to the
      # endpoint). Contains ingested and duplicate event idempotency keys.
      sig { returns(T.nilable(Orb::Models::EventIngestResponse::Debug)) }
      attr_reader :debug

      sig do
        params(
          debug: T.nilable(Orb::Models::EventIngestResponse::Debug::OrHash)
        ).void
      end
      attr_writer :debug

      sig do
        params(
          validation_failed:
            T::Array[
              Orb::Models::EventIngestResponse::ValidationFailed::OrHash
            ],
          debug: T.nilable(Orb::Models::EventIngestResponse::Debug::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(
        # Contains all failing validation events. In the case of a 200, this array will
        # always be empty. This field will always be present.
        validation_failed:,
        # Optional debug information (only present when debug=true is passed to the
        # endpoint). Contains ingested and duplicate event idempotency keys.
        debug: nil
      )
      end

      sig do
        override.returns(
          {
            validation_failed:
              T::Array[Orb::Models::EventIngestResponse::ValidationFailed],
            debug: T.nilable(Orb::Models::EventIngestResponse::Debug)
          }
        )
      end
      def to_hash
      end

      class ValidationFailed < Orb::Internal::Type::BaseModel
        OrHash = T.type_alias { T.any(T.self_type, Orb::Internal::AnyHash) }

        # The passed idempotency_key corresponding to the validation_errors
        sig { returns(String) }
        attr_accessor :idempotency_key

        # An array of strings corresponding to validation failures for this
        # idempotency_key.
        sig { returns(T::Array[String]) }
        attr_accessor :validation_errors

        sig do
          params(
            idempotency_key: String,
            validation_errors: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # The passed idempotency_key corresponding to the validation_errors
          idempotency_key:,
          # An array of strings corresponding to validation failures for this
          # idempotency_key.
          validation_errors:
        )
        end

        sig do
          override.returns(
            { idempotency_key: String, validation_errors: T::Array[String] }
          )
        end
        def to_hash
        end
      end

      class Debug < Orb::Internal::Type::BaseModel
        OrHash = T.type_alias { T.any(T.self_type, Orb::Internal::AnyHash) }

        sig { returns(T::Array[String]) }
        attr_accessor :duplicate

        sig { returns(T::Array[String]) }
        attr_accessor :ingested

        # Optional debug information (only present when debug=true is passed to the
        # endpoint). Contains ingested and duplicate event idempotency keys.
        sig do
          params(
            duplicate: T::Array[String],
            ingested: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(duplicate:, ingested:)
        end

        sig do
          override.returns(
            { duplicate: T::Array[String], ingested: T::Array[String] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
