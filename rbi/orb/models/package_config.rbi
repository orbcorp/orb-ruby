# typed: strong

module Orb
  module Models
    class PackageConfig < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::PackageConfig, Orb::Internal::AnyHash) }

      # A currency amount to rate usage by
      sig { returns(String) }
      attr_accessor :package_amount

      # An integer amount to represent package size. For example, 1000 here would divide
      # usage by 1000 before multiplying by package_amount in rating
      sig { returns(Integer) }
      attr_accessor :package_size

      sig do
        params(package_amount: String, package_size: Integer).returns(
          T.attached_class
        )
      end
      def self.new(
        # A currency amount to rate usage by
        package_amount:,
        # An integer amount to represent package size. For example, 1000 here would divide
        # usage by 1000 before multiplying by package_amount in rating
        package_size:
      )
      end

      sig do
        override.returns({ package_amount: String, package_size: Integer })
      end
      def to_hash
      end
    end
  end
end
