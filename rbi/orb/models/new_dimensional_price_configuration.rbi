# typed: strong

module Orb
  module Models
    class NewDimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::NewDimensionalPriceConfiguration, Orb::Internal::AnyHash)
        end

      # The list of dimension values matching (in order) the dimensions of the price
      # group
      sig { returns(T::Array[String]) }
      attr_accessor :dimension_values

      # The id of the dimensional price group to include this price in
      sig { returns(T.nilable(String)) }
      attr_accessor :dimensional_price_group_id

      # The external id of the dimensional price group to include this price in
      sig { returns(T.nilable(String)) }
      attr_accessor :external_dimensional_price_group_id

      sig do
        params(
          dimension_values: T::Array[String],
          dimensional_price_group_id: T.nilable(String),
          external_dimensional_price_group_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The list of dimension values matching (in order) the dimensions of the price
        # group
        dimension_values:,
        # The id of the dimensional price group to include this price in
        dimensional_price_group_id: nil,
        # The external id of the dimensional price group to include this price in
        external_dimensional_price_group_id: nil
      )
      end

      sig do
        override.returns(
          {
            dimension_values: T::Array[String],
            dimensional_price_group_id: T.nilable(String),
            external_dimensional_price_group_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
