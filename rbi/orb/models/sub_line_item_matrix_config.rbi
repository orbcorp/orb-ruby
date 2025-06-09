# typed: strong

module Orb
  module Models
    class SubLineItemMatrixConfig < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::SubLineItemMatrixConfig, Orb::Internal::AnyHash)
        end

      # The ordered dimension values for this line item.
      sig { returns(T::Array[T.nilable(String)]) }
      attr_accessor :dimension_values

      sig do
        params(dimension_values: T::Array[T.nilable(String)]).returns(
          T.attached_class
        )
      end
      def self.new(
        # The ordered dimension values for this line item.
        dimension_values:
      )
      end

      sig do
        override.returns({ dimension_values: T::Array[T.nilable(String)] })
      end
      def to_hash
      end
    end
  end
end
