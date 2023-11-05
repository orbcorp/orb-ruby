require "orb/model"
module Orb
  module Models
    class EventDeprecateResponse < Orb::Model
      # @!attribute [rw] deprecated
      required :deprecated, String
    end
  end
end
