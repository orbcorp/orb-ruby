require 'model'

module Models
    class UsageUpdateResponse < Model

            # @!attribute [rw] duplicate
            required :duplicate, ArrayOf.new(String)
            # @!attribute [rw] ingested
            required :ingested, ArrayOf.new(String)

    end
end