# typed: strong

module Orb
  module Models
    class MinimumInterval < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::MinimumInterval, Orb::Internal::AnyHash) }

      # The price interval ids that this minimum interval applies to.
      sig { returns(T::Array[String]) }
      attr_accessor :applies_to_price_interval_ids

      # The end date of the minimum interval.
      sig { returns(T.nilable(Time)) }
      attr_accessor :end_date

      # The filters that determine which prices this minimum interval applies to.
      sig { returns(T::Array[Orb::MinimumInterval::Filter]) }
      attr_accessor :filters

      # The minimum amount to charge in a given billing period for the price intervals
      # this minimum applies to.
      sig { returns(String) }
      attr_accessor :minimum_amount

      # The start date of the minimum interval.
      sig { returns(Time) }
      attr_accessor :start_date

      sig do
        params(
          applies_to_price_interval_ids: T::Array[String],
          end_date: T.nilable(Time),
          filters: T::Array[Orb::MinimumInterval::Filter::OrHash],
          minimum_amount: String,
          start_date: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # The price interval ids that this minimum interval applies to.
        applies_to_price_interval_ids:,
        # The end date of the minimum interval.
        end_date:,
        # The filters that determine which prices this minimum interval applies to.
        filters:,
        # The minimum amount to charge in a given billing period for the price intervals
        # this minimum applies to.
        minimum_amount:,
        # The start date of the minimum interval.
        start_date:
      )
      end

      sig do
        override.returns(
          {
            applies_to_price_interval_ids: T::Array[String],
            end_date: T.nilable(Time),
            filters: T::Array[Orb::MinimumInterval::Filter],
            minimum_amount: String,
            start_date: Time
          }
        )
      end
      def to_hash
      end

      class Filter < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::MinimumInterval::Filter, Orb::Internal::AnyHash)
          end

        # The property of the price to filter on.
        sig { returns(Orb::MinimumInterval::Filter::Field::TaggedSymbol) }
        attr_accessor :field

        # Should prices that match the filter be included or excluded.
        sig { returns(Orb::MinimumInterval::Filter::Operator::TaggedSymbol) }
        attr_accessor :operator

        # The IDs or values that match this filter.
        sig { returns(T::Array[String]) }
        attr_accessor :values

        sig do
          params(
            field: Orb::MinimumInterval::Filter::Field::OrSymbol,
            operator: Orb::MinimumInterval::Filter::Operator::OrSymbol,
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
              field: Orb::MinimumInterval::Filter::Field::TaggedSymbol,
              operator: Orb::MinimumInterval::Filter::Operator::TaggedSymbol,
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
            T.type_alias { T.all(Symbol, Orb::MinimumInterval::Filter::Field) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRICE_ID =
            T.let(:price_id, Orb::MinimumInterval::Filter::Field::TaggedSymbol)
          ITEM_ID =
            T.let(:item_id, Orb::MinimumInterval::Filter::Field::TaggedSymbol)
          PRICE_TYPE =
            T.let(
              :price_type,
              Orb::MinimumInterval::Filter::Field::TaggedSymbol
            )
          CURRENCY =
            T.let(:currency, Orb::MinimumInterval::Filter::Field::TaggedSymbol)
          PRICING_UNIT_ID =
            T.let(
              :pricing_unit_id,
              Orb::MinimumInterval::Filter::Field::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::MinimumInterval::Filter::Field::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # Should prices that match the filter be included or excluded.
        module Operator
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::MinimumInterval::Filter::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCLUDES =
            T.let(
              :includes,
              Orb::MinimumInterval::Filter::Operator::TaggedSymbol
            )
          EXCLUDES =
            T.let(
              :excludes,
              Orb::MinimumInterval::Filter::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::MinimumInterval::Filter::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
