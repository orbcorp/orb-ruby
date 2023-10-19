require 'model'

module Models
end

class Models::UsageUpdateByExternalIDResponse < Model

        # @!attribute [rw] duplicate
        required :duplicate, ArrayOf.new(String)
        # @!attribute [rw] ingested
        required :ingested, ArrayOf.new(String)

end