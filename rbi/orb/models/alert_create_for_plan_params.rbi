# typed: strong

module Orb
  module Models
    class AlertCreateForPlanParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::AlertCreateForPlanParams, Orb::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :plan_id

      # The thresholds that define the values at which the alert will be triggered.
      sig { returns(T::Array[Orb::Threshold]) }
      attr_accessor :thresholds

      # The type of alert to create. This must be a valid alert type.
      sig { returns(Orb::AlertCreateForPlanParams::Type::OrSymbol) }
      attr_accessor :type

      # The case sensitive currency or custom pricing unit the alert is denominated in.
      # Required for spend_exceeded alerts and when grouping_keys is set.
      sig { returns(T.nilable(String)) }
      attr_accessor :currency

      # The property keys to group cost alerts by. Only applicable for cost_exceeded
      # alerts.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :grouping_keys

      # The metric to track usage for.
      sig { returns(T.nilable(String)) }
      attr_accessor :metric_id

      # The plan version to create alerts for. If not specified, the default will be the
      # plan's active plan version.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :plan_version

      # Filters to scope which prices are included in alert evaluation. Supports
      # filtering by price_id, item_id, or price_type with includes/excludes operators.
      # Only applicable to spend_exceeded alerts and to cost_exceeded alerts with
      # grouping_keys set.
      sig do
        returns(T.nilable(T::Array[Orb::AlertCreateForPlanParams::PriceFilter]))
      end
      attr_accessor :price_filters

      sig do
        params(
          plan_id: String,
          thresholds: T::Array[Orb::Threshold::OrHash],
          type: Orb::AlertCreateForPlanParams::Type::OrSymbol,
          currency: T.nilable(String),
          grouping_keys: T.nilable(T::Array[String]),
          metric_id: T.nilable(String),
          plan_version: T.nilable(Integer),
          price_filters:
            T.nilable(
              T::Array[Orb::AlertCreateForPlanParams::PriceFilter::OrHash]
            ),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        plan_id:,
        # The thresholds that define the values at which the alert will be triggered.
        thresholds:,
        # The type of alert to create. This must be a valid alert type.
        type:,
        # The case sensitive currency or custom pricing unit the alert is denominated in.
        # Required for spend_exceeded alerts and when grouping_keys is set.
        currency: nil,
        # The property keys to group cost alerts by. Only applicable for cost_exceeded
        # alerts.
        grouping_keys: nil,
        # The metric to track usage for.
        metric_id: nil,
        # The plan version to create alerts for. If not specified, the default will be the
        # plan's active plan version.
        plan_version: nil,
        # Filters to scope which prices are included in alert evaluation. Supports
        # filtering by price_id, item_id, or price_type with includes/excludes operators.
        # Only applicable to spend_exceeded alerts and to cost_exceeded alerts with
        # grouping_keys set.
        price_filters: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            plan_id: String,
            thresholds: T::Array[Orb::Threshold],
            type: Orb::AlertCreateForPlanParams::Type::OrSymbol,
            currency: T.nilable(String),
            grouping_keys: T.nilable(T::Array[String]),
            metric_id: T.nilable(String),
            plan_version: T.nilable(Integer),
            price_filters:
              T.nilable(T::Array[Orb::AlertCreateForPlanParams::PriceFilter]),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The type of alert to create. This must be a valid alert type.
      module Type
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::AlertCreateForPlanParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USAGE_EXCEEDED =
          T.let(
            :usage_exceeded,
            Orb::AlertCreateForPlanParams::Type::TaggedSymbol
          )
        COST_EXCEEDED =
          T.let(
            :cost_exceeded,
            Orb::AlertCreateForPlanParams::Type::TaggedSymbol
          )
        SPEND_EXCEEDED =
          T.let(
            :spend_exceeded,
            Orb::AlertCreateForPlanParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::AlertCreateForPlanParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class PriceFilter < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::AlertCreateForPlanParams::PriceFilter,
              Orb::Internal::AnyHash
            )
          end

        # The property of the price to filter on.
        sig do
          returns(Orb::AlertCreateForPlanParams::PriceFilter::Field::OrSymbol)
        end
        attr_accessor :field

        # Should prices that match the filter be included or excluded.
        sig do
          returns(
            Orb::AlertCreateForPlanParams::PriceFilter::Operator::OrSymbol
          )
        end
        attr_accessor :operator

        # The IDs or values that match this filter.
        sig { returns(T::Array[String]) }
        attr_accessor :values

        sig do
          params(
            field: Orb::AlertCreateForPlanParams::PriceFilter::Field::OrSymbol,
            operator:
              Orb::AlertCreateForPlanParams::PriceFilter::Operator::OrSymbol,
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
              field:
                Orb::AlertCreateForPlanParams::PriceFilter::Field::OrSymbol,
              operator:
                Orb::AlertCreateForPlanParams::PriceFilter::Operator::OrSymbol,
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
            T.type_alias do
              T.all(Symbol, Orb::AlertCreateForPlanParams::PriceFilter::Field)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRICE_ID =
            T.let(
              :price_id,
              Orb::AlertCreateForPlanParams::PriceFilter::Field::TaggedSymbol
            )
          ITEM_ID =
            T.let(
              :item_id,
              Orb::AlertCreateForPlanParams::PriceFilter::Field::TaggedSymbol
            )
          PRICE_TYPE =
            T.let(
              :price_type,
              Orb::AlertCreateForPlanParams::PriceFilter::Field::TaggedSymbol
            )
          CURRENCY =
            T.let(
              :currency,
              Orb::AlertCreateForPlanParams::PriceFilter::Field::TaggedSymbol
            )
          PRICING_UNIT_ID =
            T.let(
              :pricing_unit_id,
              Orb::AlertCreateForPlanParams::PriceFilter::Field::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::AlertCreateForPlanParams::PriceFilter::Field::TaggedSymbol
              ]
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
              T.all(
                Symbol,
                Orb::AlertCreateForPlanParams::PriceFilter::Operator
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCLUDES =
            T.let(
              :includes,
              Orb::AlertCreateForPlanParams::PriceFilter::Operator::TaggedSymbol
            )
          EXCLUDES =
            T.let(
              :excludes,
              Orb::AlertCreateForPlanParams::PriceFilter::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::AlertCreateForPlanParams::PriceFilter::Operator::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
