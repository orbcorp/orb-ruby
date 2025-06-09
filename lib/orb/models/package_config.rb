# frozen_string_literal: true

module Orb
  module Models
    class PackageConfig < Orb::Internal::Type::BaseModel
      # @!attribute package_amount
      #   A currency amount to rate usage by
      #
      #   @return [String]
      required :package_amount, String

      # @!attribute package_size
      #   An integer amount to represent package size. For example, 1000 here would divide
      #   usage by 1000 before multiplying by package_amount in rating
      #
      #   @return [Integer]
      required :package_size, Integer

      # @!method initialize(package_amount:, package_size:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::PackageConfig} for more details.
      #
      #   @param package_amount [String] A currency amount to rate usage by
      #
      #   @param package_size [Integer] An integer amount to represent package size. For example, 1000 here would divide
    end
  end
end
