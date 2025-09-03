# typed: strong

module Orb
  module Models
    class MatrixWithAllocationConfig < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::MatrixWithAllocationConfig, Orb::Internal::AnyHash)
        end

      # Usage allocation
      sig { returns(String) }
      attr_accessor :allocation

      # Default per unit rate for any usage not bucketed into a specified matrix_value
      sig { returns(String) }
      attr_accessor :default_unit_amount

      # One or two event property values to evaluate matrix groups by
      sig { returns(T::Array[T.nilable(String)]) }
      attr_accessor :dimensions

      # Matrix values configuration
      sig { returns(T::Array[Orb::MatrixWithAllocationConfig::MatrixValue]) }
      attr_accessor :matrix_values

      # Configuration for matrix pricing with usage allocation
      sig do
        params(
          allocation: String,
          default_unit_amount: String,
          dimensions: T::Array[T.nilable(String)],
          matrix_values:
            T::Array[Orb::MatrixWithAllocationConfig::MatrixValue::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        # Usage allocation
        allocation:,
        # Default per unit rate for any usage not bucketed into a specified matrix_value
        default_unit_amount:,
        # One or two event property values to evaluate matrix groups by
        dimensions:,
        # Matrix values configuration
        matrix_values:
      )
      end

      sig do
        override.returns(
          {
            allocation: String,
            default_unit_amount: String,
            dimensions: T::Array[T.nilable(String)],
            matrix_values:
              T::Array[Orb::MatrixWithAllocationConfig::MatrixValue]
          }
        )
      end
      def to_hash
      end

      class MatrixValue < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::MatrixWithAllocationConfig::MatrixValue,
              Orb::Internal::AnyHash
            )
          end

        # One or two matrix keys to filter usage to this Matrix value by. For example,
        # ["region", "tier"] could be used to filter cloud usage by a cloud region and an
        # instance tier.
        sig { returns(T::Array[T.nilable(String)]) }
        attr_accessor :dimension_values

        # Unit price for the specified dimension_values
        sig { returns(String) }
        attr_accessor :unit_amount

        # Configuration for a single matrix value
        sig do
          params(
            dimension_values: T::Array[T.nilable(String)],
            unit_amount: String
          ).returns(T.attached_class)
        end
        def self.new(
          # One or two matrix keys to filter usage to this Matrix value by. For example,
          # ["region", "tier"] could be used to filter cloud usage by a cloud region and an
          # instance tier.
          dimension_values:,
          # Unit price for the specified dimension_values
          unit_amount:
        )
        end

        sig do
          override.returns(
            {
              dimension_values: T::Array[T.nilable(String)],
              unit_amount: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
