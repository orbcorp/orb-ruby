require 'model'

module Models
    class EventIngestResponse < Model

            class ValidationFailed < Model

                    # @!attribute [rw] idempotency_key
                    required :idempotency_key, String
                    # @!attribute [rw] validation_errors
                    required :validation_errors, ArrayOf.new(String)

            end
            class Debug < Model

                    # @!attribute [rw] duplicate
                    required :duplicate, ArrayOf.new(String)
                    # @!attribute [rw] ingested
                    required :ingested, ArrayOf.new(String)

            end
            # @!attribute [rw] validation_failed
            required :validation_failed, ArrayOf.new(ValidationFailed)
            # @!attribute [rw] debug
            optional :debug, Debug

    end
end