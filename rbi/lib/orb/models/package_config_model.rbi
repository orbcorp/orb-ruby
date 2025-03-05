# typed: strong

module Orb
  module Models
    class PackageConfigModel < Orb::BaseModel
      sig { returns(String) }
      def package_amount
      end

      sig { params(_: String).returns(String) }
      def package_amount=(_)
      end

      sig { returns(Integer) }
      def package_size
      end

      sig { params(_: Integer).returns(Integer) }
      def package_size=(_)
      end

      sig { params(package_amount: String, package_size: Integer).void }
      def initialize(package_amount:, package_size:)
      end

      sig { override.returns({package_amount: String, package_size: Integer}) }
      def to_hash
      end
    end
  end
end
