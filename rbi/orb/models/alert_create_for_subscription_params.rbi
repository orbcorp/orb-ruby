# typed: strong

module Orb
  module Models
    class AlertCreateForSubscriptionParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::AlertCreateForSubscriptionParams, Orb::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :subscription_id

      # The thresholds that define the values at which the alert will be triggered.
      sig { returns(T::Array[Orb::Threshold]) }
      attr_accessor :thresholds

      # The type of alert to create. This must be a valid alert type.
      sig { returns(Orb::AlertCreateForSubscriptionParams::Type::OrSymbol) }
      attr_accessor :type

      # The property keys to group cost alerts by. Only applicable for cost_exceeded
      # alerts.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :grouping_keys

      # The metric to track usage for.
      sig { returns(T.nilable(String)) }
      attr_accessor :metric_id

      # Filters to scope which prices are included in grouped cost alert evaluation.
      # Supports filtering by price_id, item_id, or price_type with includes/excludes
      # operators. Only applicable when grouping_keys is set.
      sig do
        returns(
          T.nilable(
            T::Array[Orb::AlertCreateForSubscriptionParams::PriceFilter]
          )
        )
      end
      attr_accessor :price_filters

      # The pricing unit to use for grouped cost alerts. Required when grouping_keys is
      # set.
      sig { returns(T.nilable(String)) }
      attr_accessor :pricing_unit_id

      # Per-group threshold overrides. Each override maps a specific combination of
      # grouping_keys values to a list of thresholds that fully replaces the default
      # thresholds for that group. An empty thresholds list silences the group. Groups
      # without an override use the default thresholds. Only applicable when
      # grouping_keys is set.
      sig do
        returns(
          T.nilable(
            T::Array[Orb::AlertCreateForSubscriptionParams::ThresholdOverride]
          )
        )
      end
      attr_accessor :threshold_overrides

      sig do
        params(
          subscription_id: String,
          thresholds: T::Array[Orb::Threshold::OrHash],
          type: Orb::AlertCreateForSubscriptionParams::Type::OrSymbol,
          grouping_keys: T.nilable(T::Array[String]),
          metric_id: T.nilable(String),
          price_filters:
            T.nilable(
              T::Array[
                Orb::AlertCreateForSubscriptionParams::PriceFilter::OrHash
              ]
            ),
          pricing_unit_id: T.nilable(String),
          threshold_overrides:
            T.nilable(
              T::Array[
                Orb::AlertCreateForSubscriptionParams::ThresholdOverride::OrHash
              ]
            ),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        subscription_id:,
        # The thresholds that define the values at which the alert will be triggered.
        thresholds:,
        # The type of alert to create. This must be a valid alert type.
        type:,
        # The property keys to group cost alerts by. Only applicable for cost_exceeded
        # alerts.
        grouping_keys: nil,
        # The metric to track usage for.
        metric_id: nil,
        # Filters to scope which prices are included in grouped cost alert evaluation.
        # Supports filtering by price_id, item_id, or price_type with includes/excludes
        # operators. Only applicable when grouping_keys is set.
        price_filters: nil,
        # The pricing unit to use for grouped cost alerts. Required when grouping_keys is
        # set.
        pricing_unit_id: nil,
        # Per-group threshold overrides. Each override maps a specific combination of
        # grouping_keys values to a list of thresholds that fully replaces the default
        # thresholds for that group. An empty thresholds list silences the group. Groups
        # without an override use the default thresholds. Only applicable when
        # grouping_keys is set.
        threshold_overrides: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            subscription_id: String,
            thresholds: T::Array[Orb::Threshold],
            type: Orb::AlertCreateForSubscriptionParams::Type::OrSymbol,
            grouping_keys: T.nilable(T::Array[String]),
            metric_id: T.nilable(String),
            price_filters:
              T.nilable(
                T::Array[Orb::AlertCreateForSubscriptionParams::PriceFilter]
              ),
            pricing_unit_id: T.nilable(String),
            threshold_overrides:
              T.nilable(
                T::Array[
                  Orb::AlertCreateForSubscriptionParams::ThresholdOverride
                ]
              ),
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
          T.type_alias do
            T.all(Symbol, Orb::AlertCreateForSubscriptionParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USAGE_EXCEEDED =
          T.let(
            :usage_exceeded,
            Orb::AlertCreateForSubscriptionParams::Type::TaggedSymbol
          )
        COST_EXCEEDED =
          T.let(
            :cost_exceeded,
            Orb::AlertCreateForSubscriptionParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::AlertCreateForSubscriptionParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class PriceFilter < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::AlertCreateForSubscriptionParams::PriceFilter,
              Orb::Internal::AnyHash
            )
          end

        # The property of the price to filter on.
        sig do
          returns(
            Orb::AlertCreateForSubscriptionParams::PriceFilter::Field::OrSymbol
          )
        end
        attr_accessor :field

        # Should prices that match the filter be included or excluded.
        sig do
          returns(
            Orb::AlertCreateForSubscriptionParams::PriceFilter::Operator::OrSymbol
          )
        end
        attr_accessor :operator

        # The IDs or values that match this filter.
        sig { returns(T::Array[String]) }
        attr_accessor :values

        sig do
          params(
            field:
              Orb::AlertCreateForSubscriptionParams::PriceFilter::Field::OrSymbol,
            operator:
              Orb::AlertCreateForSubscriptionParams::PriceFilter::Operator::OrSymbol,
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
                Orb::AlertCreateForSubscriptionParams::PriceFilter::Field::OrSymbol,
              operator:
                Orb::AlertCreateForSubscriptionParams::PriceFilter::Operator::OrSymbol,
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
              T.all(
                Symbol,
                Orb::AlertCreateForSubscriptionParams::PriceFilter::Field
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRICE_ID =
            T.let(
              :price_id,
              Orb::AlertCreateForSubscriptionParams::PriceFilter::Field::TaggedSymbol
            )
          ITEM_ID =
            T.let(
              :item_id,
              Orb::AlertCreateForSubscriptionParams::PriceFilter::Field::TaggedSymbol
            )
          PRICE_TYPE =
            T.let(
              :price_type,
              Orb::AlertCreateForSubscriptionParams::PriceFilter::Field::TaggedSymbol
            )
          CURRENCY =
            T.let(
              :currency,
              Orb::AlertCreateForSubscriptionParams::PriceFilter::Field::TaggedSymbol
            )
          PRICING_UNIT_ID =
            T.let(
              :pricing_unit_id,
              Orb::AlertCreateForSubscriptionParams::PriceFilter::Field::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::AlertCreateForSubscriptionParams::PriceFilter::Field::TaggedSymbol
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
                Orb::AlertCreateForSubscriptionParams::PriceFilter::Operator
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCLUDES =
            T.let(
              :includes,
              Orb::AlertCreateForSubscriptionParams::PriceFilter::Operator::TaggedSymbol
            )
          EXCLUDES =
            T.let(
              :excludes,
              Orb::AlertCreateForSubscriptionParams::PriceFilter::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::AlertCreateForSubscriptionParams::PriceFilter::Operator::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class ThresholdOverride < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::AlertCreateForSubscriptionParams::ThresholdOverride,
              Orb::Internal::AnyHash
            )
          end

        # The values of the grouping keys that identify this group. The list length must
        # match the alert's grouping_keys, and values appear in the same order as
        # grouping_keys.
        sig { returns(T::Array[String]) }
        attr_accessor :group_values

        # The thresholds to apply to this group. An empty list silences alerts for this
        # group. A non-empty list fully replaces the default thresholds for this group.
        sig { returns(T::Array[Orb::Threshold]) }
        attr_accessor :thresholds

        # Per-group threshold override on a grouped cost alert.
        #
        # - An empty `thresholds` list silences alerts for this group (never fires).
        # - A non-empty list fully replaces the default thresholds for this group.
        sig do
          params(
            group_values: T::Array[String],
            thresholds: T::Array[Orb::Threshold::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # The values of the grouping keys that identify this group. The list length must
          # match the alert's grouping_keys, and values appear in the same order as
          # grouping_keys.
          group_values:,
          # The thresholds to apply to this group. An empty list silences alerts for this
          # group. A non-empty list fully replaces the default thresholds for this group.
          thresholds:
        )
        end

        sig do
          override.returns(
            {
              group_values: T::Array[String],
              thresholds: T::Array[Orb::Threshold]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
