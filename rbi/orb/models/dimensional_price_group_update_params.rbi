# typed: strong

module Orb
  module Models
    class DimensionalPriceGroupUpdateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::DimensionalPriceGroupUpdateParams, Orb::Internal::AnyHash)
        end

      # An optional user-defined ID for this dimensional price group resource, used
      # throughout the system as an alias for this dimensional price group. Use this
      # field to identify a dimensional price group by an existing identifier in your
      # system.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_dimensional_price_group_id

      # User-specified key/value pairs for the resource. Individual keys can be removed
      # by setting the value to `null`, and the entire metadata mapping can be cleared
      # by setting `metadata` to `null`.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      sig do
        params(
          external_dimensional_price_group_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # An optional user-defined ID for this dimensional price group resource, used
        # throughout the system as an alias for this dimensional price group. Use this
        # field to identify a dimensional price group by an existing identifier in your
        # system.
        external_dimensional_price_group_id: nil,
        # User-specified key/value pairs for the resource. Individual keys can be removed
        # by setting the value to `null`, and the entire metadata mapping can be cleared
        # by setting `metadata` to `null`.
        metadata: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            external_dimensional_price_group_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
