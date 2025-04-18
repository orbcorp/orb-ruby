# frozen_string_literal: true

module Orb
  # @api private
  module Internal
    OMIT =
      Object.new.tap do
        _1.define_singleton_method(:inspect) { "#<#{Orb::Internal}::OMIT>" }
      end
        .freeze
  end
end
