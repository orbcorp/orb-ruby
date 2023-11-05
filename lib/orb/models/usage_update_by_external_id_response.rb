require "orb/model"
module Orb
  module Models
    class UsageUpdateByExternalIDResponse < Orb::Model
      # @!attribute [rw] duplicate
      required :duplicate, Orb::ArrayOf.new(String)
      # @!attribute [rw] ingested
      required :ingested, Orb::ArrayOf.new(String)
    end
  end
end
