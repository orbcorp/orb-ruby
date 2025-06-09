# typed: strong

module Orb
  module Models
    class NewReportingConfiguration < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::NewReportingConfiguration, Orb::Internal::AnyHash)
        end

      sig { returns(T::Boolean) }
      attr_accessor :exempt

      sig { params(exempt: T::Boolean).returns(T.attached_class) }
      def self.new(exempt:)
      end

      sig { override.returns({ exempt: T::Boolean }) }
      def to_hash
      end
    end
  end
end
