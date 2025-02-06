# frozen_string_literal: true

module Orb
  module Models
    # @example
    # ```ruby
    # event_deprecate_response => {
    #   deprecated: String
    # }
    # ```
    class EventDeprecateResponse < Orb::BaseModel
      # @!attribute deprecated
      #   event_id of the deprecated event, if successfully updated
      #
      #   @return [String]
      required :deprecated, String

      # @!parse
      #   # @param deprecated [String]
      #   #
      #   def initialize(deprecated:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
