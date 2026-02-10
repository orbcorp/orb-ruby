# typed: strong

module Orb
  module Models
    class Allocation < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::Allocation, Orb::Internal::AnyHash) }

      sig { returns(T::Boolean) }
      attr_accessor :allows_rollover

      sig { returns(String) }
      attr_accessor :currency

      sig { returns(T.nilable(Orb::CustomExpiration)) }
      attr_reader :custom_expiration

      sig do
        params(custom_expiration: T.nilable(Orb::CustomExpiration::OrHash)).void
      end
      attr_writer :custom_expiration

      sig { returns(T.nilable(T::Array[Orb::Allocation::Filter])) }
      attr_reader :filters

      sig { params(filters: T::Array[Orb::Allocation::Filter::OrHash]).void }
      attr_writer :filters

      sig { returns(T.nilable(String)) }
      attr_accessor :license_type_id

      sig do
        params(
          allows_rollover: T::Boolean,
          currency: String,
          custom_expiration: T.nilable(Orb::CustomExpiration::OrHash),
          filters: T::Array[Orb::Allocation::Filter::OrHash],
          license_type_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        allows_rollover:,
        currency:,
        custom_expiration:,
        filters: nil,
        license_type_id: nil
      )
      end

      sig do
        override.returns(
          {
            allows_rollover: T::Boolean,
            currency: String,
            custom_expiration: T.nilable(Orb::CustomExpiration),
            filters: T::Array[Orb::Allocation::Filter],
            license_type_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class Filter < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Allocation::Filter, Orb::Internal::AnyHash)
          end

        # The property of the price to filter on.
        sig { returns(Orb::Allocation::Filter::Field::TaggedSymbol) }
        attr_accessor :field

        # Should prices that match the filter be included or excluded.
        sig { returns(Orb::Allocation::Filter::Operator::TaggedSymbol) }
        attr_accessor :operator

        # The IDs or values that match this filter.
        sig { returns(T::Array[String]) }
        attr_accessor :values

        sig do
          params(
            field: Orb::Allocation::Filter::Field::OrSymbol,
            operator: Orb::Allocation::Filter::Operator::OrSymbol,
            values: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # The property of the price to filter on.
          field:,
          # Should prices that match the filter be included or excluded.
          operator:,
          # The IDs or values that match this filter.
          values:
        )
        end

        sig do
          override.returns(
            {
              field: Orb::Allocation::Filter::Field::TaggedSymbol,
              operator: Orb::Allocation::Filter::Operator::TaggedSymbol,
              values: T::Array[String]
            }
          )
        end
        def to_hash
        end

        # The property of the price to filter on.
        module Field
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Allocation::Filter::Field) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRICE_ID =
            T.let(:price_id, Orb::Allocation::Filter::Field::TaggedSymbol)
          ITEM_ID =
            T.let(:item_id, Orb::Allocation::Filter::Field::TaggedSymbol)
          PRICE_TYPE =
            T.let(:price_type, Orb::Allocation::Filter::Field::TaggedSymbol)
          CURRENCY =
            T.let(:currency, Orb::Allocation::Filter::Field::TaggedSymbol)
          PRICING_UNIT_ID =
            T.let(
              :pricing_unit_id,
              Orb::Allocation::Filter::Field::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Allocation::Filter::Field::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # Should prices that match the filter be included or excluded.
        module Operator
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Allocation::Filter::Operator) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCLUDES =
            T.let(:includes, Orb::Allocation::Filter::Operator::TaggedSymbol)
          EXCLUDES =
            T.let(:excludes, Orb::Allocation::Filter::Operator::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Allocation::Filter::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
