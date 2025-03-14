# typed: strong

module Orb
  module Models
    class EventIngestResponse < Orb::BaseModel
      # Contains all failing validation events. In the case of a 200, this array will
      #   always be empty. This field will always be present.
      sig { returns(T::Array[Orb::Models::EventIngestResponse::ValidationFailed]) }
      def validation_failed
      end

      sig do
        params(_: T::Array[Orb::Models::EventIngestResponse::ValidationFailed])
          .returns(T::Array[Orb::Models::EventIngestResponse::ValidationFailed])
      end
      def validation_failed=(_)
      end

      # Optional debug information (only present when debug=true is passed to the
      #   endpoint). Contains ingested and duplicate event idempotency keys.
      sig { returns(T.nilable(Orb::Models::EventIngestResponse::Debug)) }
      def debug
      end

      sig do
        params(_: T.nilable(Orb::Models::EventIngestResponse::Debug))
          .returns(T.nilable(Orb::Models::EventIngestResponse::Debug))
      end
      def debug=(_)
      end

      sig do
        params(
          validation_failed: T::Array[Orb::Models::EventIngestResponse::ValidationFailed],
          debug: T.nilable(Orb::Models::EventIngestResponse::Debug)
        )
          .returns(T.attached_class)
      end
      def self.new(validation_failed:, debug: nil)
      end

      sig do
        override
          .returns(
            {
              validation_failed: T::Array[Orb::Models::EventIngestResponse::ValidationFailed],
              debug: T.nilable(Orb::Models::EventIngestResponse::Debug)
            }
          )
      end
      def to_hash
      end

      class ValidationFailed < Orb::BaseModel
        # The passed idempotency_key corresponding to the validation_errors
        sig { returns(String) }
        def idempotency_key
        end

        sig { params(_: String).returns(String) }
        def idempotency_key=(_)
        end

        # An array of strings corresponding to validation failures for this
        #   idempotency_key.
        sig { returns(T::Array[String]) }
        def validation_errors
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def validation_errors=(_)
        end

        sig { params(idempotency_key: String, validation_errors: T::Array[String]).returns(T.attached_class) }
        def self.new(idempotency_key:, validation_errors:)
        end

        sig { override.returns({idempotency_key: String, validation_errors: T::Array[String]}) }
        def to_hash
        end
      end

      class Debug < Orb::BaseModel
        sig { returns(T::Array[String]) }
        def duplicate
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def duplicate=(_)
        end

        sig { returns(T::Array[String]) }
        def ingested
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def ingested=(_)
        end

        # Optional debug information (only present when debug=true is passed to the
        #   endpoint). Contains ingested and duplicate event idempotency keys.
        sig { params(duplicate: T::Array[String], ingested: T::Array[String]).returns(T.attached_class) }
        def self.new(duplicate:, ingested:)
        end

        sig { override.returns({duplicate: T::Array[String], ingested: T::Array[String]}) }
        def to_hash
        end
      end
    end
  end
end
