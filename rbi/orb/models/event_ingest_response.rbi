# typed: strong

module Orb
  module Models
    class EventIngestResponse < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::Models::EventIngestResponse, Orb::Internal::AnyHash)
        end

      # Contains all failing validation events. In the case of a 200, this array will
      # always be empty. This field will always be present.
      sig do
        returns(T::Array[Orb::Models::EventIngestResponse::ValidationFailed])
      end
      attr_accessor :validation_failed

      sig do
        params(
          validation_failed:
            T::Array[Orb::Models::EventIngestResponse::ValidationFailed::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        # Contains all failing validation events. In the case of a 200, this array will
        # always be empty. This field will always be present.
        validation_failed:
      )
      end

      sig do
        override.returns(
          {
            validation_failed:
              T::Array[Orb::Models::EventIngestResponse::ValidationFailed]
          }
        )
      end
      def to_hash
      end

      class ValidationFailed < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Models::EventIngestResponse::ValidationFailed,
              Orb::Internal::AnyHash
            )
          end

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
    end
  end
end
