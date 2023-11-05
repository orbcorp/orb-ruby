require "orb/model"
module Orb
  module Models
    class UsageUpdateResponse < Orb::Model
      # @!attribute [rw] duplicate
      required :duplicate, Orb::ArrayOf.new(String)
      # @!attribute [rw] ingested
      required :ingested, Orb::ArrayOf.new(String)
    end
  end
end
