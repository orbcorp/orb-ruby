require 'orb/model'
module Orb
    module Models
        class EventIngestResponse < Orb::Model

                class ValidationFailed < Orb::Model

                        # @!attribute [rw] idempotency_key
                        required :idempotency_key, String
                        # @!attribute [rw] validation_errors
                        required :validation_errors, Orb::ArrayOf.new(String)

                end
                class Debug < Orb::Model

                        # @!attribute [rw] duplicate
                        required :duplicate, Orb::ArrayOf.new(String)
                        # @!attribute [rw] ingested
                        required :ingested, Orb::ArrayOf.new(String)

                end
                # @!attribute [rw] validation_failed
                required :validation_failed, Orb::ArrayOf.new(ValidationFailed)
                # @!attribute [rw] debug
                optional :debug, Debug

        end
    end
end