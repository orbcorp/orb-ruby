# frozen_string_literal: true

module Orb
  module Models
    class PackageConfigModel < Orb::BaseModel
      # @!attribute package_amount
      #   A currency amount to rate usage by
      #
      #   @return [String]
      required :package_amount, String

      # @!attribute package_size
      #   An integer amount to represent package size. For example, 1000 here would divide
      #     usage by 1000 before multiplying by package_amount in rating
      #
      #   @return [Integer]
      required :package_size, Integer

      # @!parse
      #   # @param package_amount [String]
      #   # @param package_size [Integer]
      #   #
      #   def initialize(package_amount:, package_size:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
