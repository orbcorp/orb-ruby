require 'model'

module Models
end

class Models::UsageUpdateResponse < Model

        # @!attribute [rw] duplicate
        required :duplicate, ArrayOf.new(String)
        # @!attribute [rw] ingested
        required :ingested, ArrayOf.new(String)

end