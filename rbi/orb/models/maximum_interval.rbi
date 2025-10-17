# typed: strong

module Orb
  module Models
    class MaximumInterval < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::MaximumInterval, Orb::Internal::AnyHash) }

      # The price interval ids that this maximum interval applies to.
      sig { returns(T::Array[String]) }
      attr_accessor :applies_to_price_interval_ids

      # The end date of the maximum interval.
      sig { returns(T.nilable(Time)) }
      attr_accessor :end_date

      # The filters that determine which prices this maximum interval applies to.
      sig { returns(T::Array[Orb::MaximumInterval::Filter]) }
      attr_accessor :filters

      # The maximum amount to charge in a given billing period for the price intervals
      # this transform applies to.
      sig { returns(String) }
      attr_accessor :maximum_amount

      # The start date of the maximum interval.
      sig { returns(Time) }
      attr_accessor :start_date

      sig do
        params(
          applies_to_price_interval_ids: T::Array[String],
          end_date: T.nilable(Time),
          filters: T::Array[Orb::MaximumInterval::Filter::OrHash],
          maximum_amount: String,
          start_date: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # The price interval ids that this maximum interval applies to.
        applies_to_price_interval_ids:,
        # The end date of the maximum interval.
        end_date:,
        # The filters that determine which prices this maximum interval applies to.
        filters:,
        # The maximum amount to charge in a given billing period for the price intervals
        # this transform applies to.
        maximum_amount:,
        # The start date of the maximum interval.
        start_date:
      )
      end

      sig do
        override.returns(
          {
            applies_to_price_interval_ids: T::Array[String],
            end_date: T.nilable(Time),
            filters: T::Array[Orb::MaximumInterval::Filter],
            maximum_amount: String,
            start_date: Time
          }
        )
      end
      def to_hash
      end

      class Filter < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::MaximumInterval::Filter, Orb::Internal::AnyHash)
          end

        # The property of the price to filter on.
        sig { returns(Orb::MaximumInterval::Filter::Field::TaggedSymbol) }
        attr_accessor :field

        # Should prices that match the filter be included or excluded.
        sig { returns(Orb::MaximumInterval::Filter::Operator::TaggedSymbol) }
        attr_accessor :operator

        # The IDs or values that match this filter.
        sig { returns(T::Array[String]) }
        attr_accessor :values

        sig do
          params(
            field: Orb::MaximumInterval::Filter::Field::OrSymbol,
            operator: Orb::MaximumInterval::Filter::Operator::OrSymbol,
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
              field: Orb::MaximumInterval::Filter::Field::TaggedSymbol,
              operator: Orb::MaximumInterval::Filter::Operator::TaggedSymbol,
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
            T.type_alias { T.all(Symbol, Orb::MaximumInterval::Filter::Field) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRICE_ID =
            T.let(:price_id, Orb::MaximumInterval::Filter::Field::TaggedSymbol)
          ITEM_ID =
            T.let(:item_id, Orb::MaximumInterval::Filter::Field::TaggedSymbol)
          PRICE_TYPE =
            T.let(
              :price_type,
              Orb::MaximumInterval::Filter::Field::TaggedSymbol
            )
          CURRENCY =
            T.let(:currency, Orb::MaximumInterval::Filter::Field::TaggedSymbol)
          PRICING_UNIT_ID =
            T.let(
              :pricing_unit_id,
              Orb::MaximumInterval::Filter::Field::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::MaximumInterval::Filter::Field::TaggedSymbol]
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
              T.all(Symbol, Orb::MaximumInterval::Filter::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCLUDES =
            T.let(
              :includes,
              Orb::MaximumInterval::Filter::Operator::TaggedSymbol
            )
          EXCLUDES =
            T.let(
              :excludes,
              Orb::MaximumInterval::Filter::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::MaximumInterval::Filter::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
