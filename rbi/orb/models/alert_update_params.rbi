# typed: strong

module Orb
  module Models
    class AlertUpdateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Orb::AlertUpdateParams, Orb::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :alert_configuration_id

      # The thresholds that define the values at which the alert will be triggered.
      sig { returns(T::Array[Orb::Threshold]) }
      attr_accessor :thresholds

      # Replaces the price filters on a grouped cost alert; an empty list clears them.
      # Only applicable to cost alerts with grouping_keys. Omit to leave unchanged.
      sig { returns(T.nilable(T::Array[Orb::AlertUpdateParams::PriceFilter])) }
      attr_accessor :price_filters

      # Replaces the per-group threshold overrides on a grouped cost alert; an empty
      # list clears them. Only applicable to cost alerts with grouping_keys. Omit to
      # leave unchanged.
      sig do
        returns(T.nilable(T::Array[Orb::AlertUpdateParams::ThresholdOverride]))
      end
      attr_accessor :threshold_overrides

      sig do
        params(
          alert_configuration_id: String,
          thresholds: T::Array[Orb::Threshold::OrHash],
          price_filters:
            T.nilable(T::Array[Orb::AlertUpdateParams::PriceFilter::OrHash]),
          threshold_overrides:
            T.nilable(
              T::Array[Orb::AlertUpdateParams::ThresholdOverride::OrHash]
            ),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        alert_configuration_id:,
        # The thresholds that define the values at which the alert will be triggered.
        thresholds:,
        # Replaces the price filters on a grouped cost alert; an empty list clears them.
        # Only applicable to cost alerts with grouping_keys. Omit to leave unchanged.
        price_filters: nil,
        # Replaces the per-group threshold overrides on a grouped cost alert; an empty
        # list clears them. Only applicable to cost alerts with grouping_keys. Omit to
        # leave unchanged.
        threshold_overrides: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            alert_configuration_id: String,
            thresholds: T::Array[Orb::Threshold],
            price_filters:
              T.nilable(T::Array[Orb::AlertUpdateParams::PriceFilter]),
            threshold_overrides:
              T.nilable(T::Array[Orb::AlertUpdateParams::ThresholdOverride]),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      class PriceFilter < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::AlertUpdateParams::PriceFilter, Orb::Internal::AnyHash)
          end

        # The property of the price to filter on.
        sig { returns(Orb::AlertUpdateParams::PriceFilter::Field::OrSymbol) }
        attr_accessor :field

        # Should prices that match the filter be included or excluded.
        sig { returns(Orb::AlertUpdateParams::PriceFilter::Operator::OrSymbol) }
        attr_accessor :operator

        # The IDs or values that match this filter.
        sig { returns(T::Array[String]) }
        attr_accessor :values

        sig do
          params(
            field: Orb::AlertUpdateParams::PriceFilter::Field::OrSymbol,
            operator: Orb::AlertUpdateParams::PriceFilter::Operator::OrSymbol,
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
              field: Orb::AlertUpdateParams::PriceFilter::Field::OrSymbol,
              operator: Orb::AlertUpdateParams::PriceFilter::Operator::OrSymbol,
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
              T.all(Symbol, Orb::AlertUpdateParams::PriceFilter::Field)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRICE_ID =
            T.let(
              :price_id,
              Orb::AlertUpdateParams::PriceFilter::Field::TaggedSymbol
            )
          ITEM_ID =
            T.let(
              :item_id,
              Orb::AlertUpdateParams::PriceFilter::Field::TaggedSymbol
            )
          PRICE_TYPE =
            T.let(
              :price_type,
              Orb::AlertUpdateParams::PriceFilter::Field::TaggedSymbol
            )
          CURRENCY =
            T.let(
              :currency,
              Orb::AlertUpdateParams::PriceFilter::Field::TaggedSymbol
            )
          PRICING_UNIT_ID =
            T.let(
              :pricing_unit_id,
              Orb::AlertUpdateParams::PriceFilter::Field::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::AlertUpdateParams::PriceFilter::Field::TaggedSymbol]
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
              T.all(Symbol, Orb::AlertUpdateParams::PriceFilter::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCLUDES =
            T.let(
              :includes,
              Orb::AlertUpdateParams::PriceFilter::Operator::TaggedSymbol
            )
          EXCLUDES =
            T.let(
              :excludes,
              Orb::AlertUpdateParams::PriceFilter::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::AlertUpdateParams::PriceFilter::Operator::TaggedSymbol
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
              Orb::AlertUpdateParams::ThresholdOverride,
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
