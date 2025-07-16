# typed: strong

module Orb
  module Models
    class PriceEvaluatePreviewEventsParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::PriceEvaluatePreviewEventsParams, Orb::Internal::AnyHash)
        end

      # The exclusive upper bound for event timestamps
      sig { returns(Time) }
      attr_accessor :timeframe_end

      # The inclusive lower bound for event timestamps
      sig { returns(Time) }
      attr_accessor :timeframe_start

      # The ID of the customer to which this evaluation is scoped.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_id

      # List of preview events to use instead of actual usage data
      sig do
        returns(
          T.nilable(T::Array[Orb::PriceEvaluatePreviewEventsParams::Event])
        )
      end
      attr_reader :events

      sig do
        params(
          events: T::Array[Orb::PriceEvaluatePreviewEventsParams::Event::OrHash]
        ).void
      end
      attr_writer :events

      # The external customer ID of the customer to which this evaluation is scoped.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_customer_id

      # List of prices to evaluate (max 100)
      sig do
        returns(
          T.nilable(
            T::Array[Orb::PriceEvaluatePreviewEventsParams::PriceEvaluation]
          )
        )
      end
      attr_reader :price_evaluations

      sig do
        params(
          price_evaluations:
            T::Array[
              Orb::PriceEvaluatePreviewEventsParams::PriceEvaluation::OrHash
            ]
        ).void
      end
      attr_writer :price_evaluations

      sig do
        params(
          timeframe_end: Time,
          timeframe_start: Time,
          customer_id: T.nilable(String),
          events:
            T::Array[Orb::PriceEvaluatePreviewEventsParams::Event::OrHash],
          external_customer_id: T.nilable(String),
          price_evaluations:
            T::Array[
              Orb::PriceEvaluatePreviewEventsParams::PriceEvaluation::OrHash
            ],
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The exclusive upper bound for event timestamps
        timeframe_end:,
        # The inclusive lower bound for event timestamps
        timeframe_start:,
        # The ID of the customer to which this evaluation is scoped.
        customer_id: nil,
        # List of preview events to use instead of actual usage data
        events: nil,
        # The external customer ID of the customer to which this evaluation is scoped.
        external_customer_id: nil,
        # List of prices to evaluate (max 100)
        price_evaluations: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            timeframe_end: Time,
            timeframe_start: Time,
            customer_id: T.nilable(String),
            events: T::Array[Orb::PriceEvaluatePreviewEventsParams::Event],
            external_customer_id: T.nilable(String),
            price_evaluations:
              T::Array[Orb::PriceEvaluatePreviewEventsParams::PriceEvaluation],
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Event < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PriceEvaluatePreviewEventsParams::Event,
              Orb::Internal::AnyHash
            )
          end

        # A name to meaningfully identify the action or event type.
        sig { returns(String) }
        attr_accessor :event_name

        # A dictionary of custom properties. Values in this dictionary must be numeric,
        # boolean, or strings. Nested dictionaries are disallowed.
        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :properties

        # An ISO 8601 format date with no timezone offset (i.e. UTC). This should
        # represent the time that usage was recorded, and is particularly important to
        # attribute usage to a given billing period.
        sig { returns(Time) }
        attr_accessor :timestamp

        # The Orb Customer identifier
        sig { returns(T.nilable(String)) }
        attr_accessor :customer_id

        # An alias for the Orb customer, whose mapping is specified when creating the
        # customer
        sig { returns(T.nilable(String)) }
        attr_accessor :external_customer_id

        sig do
          params(
            event_name: String,
            properties: T::Hash[Symbol, T.anything],
            timestamp: Time,
            customer_id: T.nilable(String),
            external_customer_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # A name to meaningfully identify the action or event type.
          event_name:,
          # A dictionary of custom properties. Values in this dictionary must be numeric,
          # boolean, or strings. Nested dictionaries are disallowed.
          properties:,
          # An ISO 8601 format date with no timezone offset (i.e. UTC). This should
          # represent the time that usage was recorded, and is particularly important to
          # attribute usage to a given billing period.
          timestamp:,
          # The Orb Customer identifier
          customer_id: nil,
          # An alias for the Orb customer, whose mapping is specified when creating the
          # customer
          external_customer_id: nil
        )
        end

        sig do
          override.returns(
            {
              event_name: String,
              properties: T::Hash[Symbol, T.anything],
              timestamp: Time,
              customer_id: T.nilable(String),
              external_customer_id: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class PriceEvaluation < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PriceEvaluatePreviewEventsParams::PriceEvaluation,
              Orb::Internal::AnyHash
            )
          end

        # The external ID of a price to evaluate that exists in your Orb account.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        # A boolean
        # [computed property](/extensibility/advanced-metrics#computed-properties) used to
        # filter the underlying billable metric
        sig { returns(T.nilable(String)) }
        attr_accessor :filter

        # Properties (or
        # [computed properties](/extensibility/advanced-metrics#computed-properties)) used
        # to group the underlying billable metric
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :grouping_keys

        sig { params(grouping_keys: T::Array[String]).void }
        attr_writer :grouping_keys

        # An inline price definition to evaluate, allowing you to test price
        # configurations before adding them to Orb.
        sig do
          returns(
            T.nilable(
              T.any(
                Orb::NewFloatingUnitPrice,
                Orb::NewFloatingPackagePrice,
                Orb::NewFloatingMatrixPrice,
                Orb::NewFloatingMatrixWithAllocationPrice,
                Orb::NewFloatingTieredPrice,
                Orb::NewFloatingTieredBPSPrice,
                Orb::NewFloatingBPSPrice,
                Orb::NewFloatingBulkBPSPrice,
                Orb::NewFloatingBulkPrice,
                Orb::NewFloatingThresholdTotalAmountPrice,
                Orb::NewFloatingTieredPackagePrice,
                Orb::NewFloatingGroupedTieredPrice,
                Orb::NewFloatingMaxGroupTieredPackagePrice,
                Orb::NewFloatingTieredWithMinimumPrice,
                Orb::NewFloatingPackageWithAllocationPrice,
                Orb::NewFloatingTieredPackageWithMinimumPrice,
                Orb::NewFloatingUnitWithPercentPrice,
                Orb::NewFloatingTieredWithProrationPrice,
                Orb::NewFloatingUnitWithProrationPrice,
                Orb::NewFloatingGroupedAllocationPrice,
                Orb::NewFloatingGroupedWithProratedMinimumPrice,
                Orb::NewFloatingGroupedWithMeteredMinimumPrice,
                Orb::NewFloatingMatrixWithDisplayNamePrice,
                Orb::NewFloatingBulkWithProrationPrice,
                Orb::NewFloatingGroupedTieredPackagePrice,
                Orb::NewFloatingScalableMatrixWithUnitPricingPrice,
                Orb::NewFloatingScalableMatrixWithTieredPricingPrice,
                Orb::NewFloatingCumulativeGroupedBulkPrice
              )
            )
          )
        end
        attr_accessor :price

        # The ID of a price to evaluate that exists in your Orb account.
        sig { returns(T.nilable(String)) }
        attr_accessor :price_id

        sig do
          params(
            external_price_id: T.nilable(String),
            filter: T.nilable(String),
            grouping_keys: T::Array[String],
            price:
              T.nilable(
                T.any(
                  Orb::NewFloatingUnitPrice::OrHash,
                  Orb::NewFloatingPackagePrice::OrHash,
                  Orb::NewFloatingMatrixPrice::OrHash,
                  Orb::NewFloatingMatrixWithAllocationPrice::OrHash,
                  Orb::NewFloatingTieredPrice::OrHash,
                  Orb::NewFloatingTieredBPSPrice::OrHash,
                  Orb::NewFloatingBPSPrice::OrHash,
                  Orb::NewFloatingBulkBPSPrice::OrHash,
                  Orb::NewFloatingBulkPrice::OrHash,
                  Orb::NewFloatingThresholdTotalAmountPrice::OrHash,
                  Orb::NewFloatingTieredPackagePrice::OrHash,
                  Orb::NewFloatingGroupedTieredPrice::OrHash,
                  Orb::NewFloatingMaxGroupTieredPackagePrice::OrHash,
                  Orb::NewFloatingTieredWithMinimumPrice::OrHash,
                  Orb::NewFloatingPackageWithAllocationPrice::OrHash,
                  Orb::NewFloatingTieredPackageWithMinimumPrice::OrHash,
                  Orb::NewFloatingUnitWithPercentPrice::OrHash,
                  Orb::NewFloatingTieredWithProrationPrice::OrHash,
                  Orb::NewFloatingUnitWithProrationPrice::OrHash,
                  Orb::NewFloatingGroupedAllocationPrice::OrHash,
                  Orb::NewFloatingGroupedWithProratedMinimumPrice::OrHash,
                  Orb::NewFloatingGroupedWithMeteredMinimumPrice::OrHash,
                  Orb::NewFloatingMatrixWithDisplayNamePrice::OrHash,
                  Orb::NewFloatingBulkWithProrationPrice::OrHash,
                  Orb::NewFloatingGroupedTieredPackagePrice::OrHash,
                  Orb::NewFloatingScalableMatrixWithUnitPricingPrice::OrHash,
                  Orb::NewFloatingScalableMatrixWithTieredPricingPrice::OrHash,
                  Orb::NewFloatingCumulativeGroupedBulkPrice::OrHash
                )
              ),
            price_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The external ID of a price to evaluate that exists in your Orb account.
          external_price_id: nil,
          # A boolean
          # [computed property](/extensibility/advanced-metrics#computed-properties) used to
          # filter the underlying billable metric
          filter: nil,
          # Properties (or
          # [computed properties](/extensibility/advanced-metrics#computed-properties)) used
          # to group the underlying billable metric
          grouping_keys: nil,
          # An inline price definition to evaluate, allowing you to test price
          # configurations before adding them to Orb.
          price: nil,
          # The ID of a price to evaluate that exists in your Orb account.
          price_id: nil
        )
        end

        sig do
          override.returns(
            {
              external_price_id: T.nilable(String),
              filter: T.nilable(String),
              grouping_keys: T::Array[String],
              price:
                T.nilable(
                  T.any(
                    Orb::NewFloatingUnitPrice,
                    Orb::NewFloatingPackagePrice,
                    Orb::NewFloatingMatrixPrice,
                    Orb::NewFloatingMatrixWithAllocationPrice,
                    Orb::NewFloatingTieredPrice,
                    Orb::NewFloatingTieredBPSPrice,
                    Orb::NewFloatingBPSPrice,
                    Orb::NewFloatingBulkBPSPrice,
                    Orb::NewFloatingBulkPrice,
                    Orb::NewFloatingThresholdTotalAmountPrice,
                    Orb::NewFloatingTieredPackagePrice,
                    Orb::NewFloatingGroupedTieredPrice,
                    Orb::NewFloatingMaxGroupTieredPackagePrice,
                    Orb::NewFloatingTieredWithMinimumPrice,
                    Orb::NewFloatingPackageWithAllocationPrice,
                    Orb::NewFloatingTieredPackageWithMinimumPrice,
                    Orb::NewFloatingUnitWithPercentPrice,
                    Orb::NewFloatingTieredWithProrationPrice,
                    Orb::NewFloatingUnitWithProrationPrice,
                    Orb::NewFloatingGroupedAllocationPrice,
                    Orb::NewFloatingGroupedWithProratedMinimumPrice,
                    Orb::NewFloatingGroupedWithMeteredMinimumPrice,
                    Orb::NewFloatingMatrixWithDisplayNamePrice,
                    Orb::NewFloatingBulkWithProrationPrice,
                    Orb::NewFloatingGroupedTieredPackagePrice,
                    Orb::NewFloatingScalableMatrixWithUnitPricingPrice,
                    Orb::NewFloatingScalableMatrixWithTieredPricingPrice,
                    Orb::NewFloatingCumulativeGroupedBulkPrice
                  )
                ),
              price_id: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # An inline price definition to evaluate, allowing you to test price
        # configurations before adding them to Orb.
        module Price
          extend Orb::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Orb::NewFloatingUnitPrice,
                Orb::NewFloatingPackagePrice,
                Orb::NewFloatingMatrixPrice,
                Orb::NewFloatingMatrixWithAllocationPrice,
                Orb::NewFloatingTieredPrice,
                Orb::NewFloatingTieredBPSPrice,
                Orb::NewFloatingBPSPrice,
                Orb::NewFloatingBulkBPSPrice,
                Orb::NewFloatingBulkPrice,
                Orb::NewFloatingThresholdTotalAmountPrice,
                Orb::NewFloatingTieredPackagePrice,
                Orb::NewFloatingGroupedTieredPrice,
                Orb::NewFloatingMaxGroupTieredPackagePrice,
                Orb::NewFloatingTieredWithMinimumPrice,
                Orb::NewFloatingPackageWithAllocationPrice,
                Orb::NewFloatingTieredPackageWithMinimumPrice,
                Orb::NewFloatingUnitWithPercentPrice,
                Orb::NewFloatingTieredWithProrationPrice,
                Orb::NewFloatingUnitWithProrationPrice,
                Orb::NewFloatingGroupedAllocationPrice,
                Orb::NewFloatingGroupedWithProratedMinimumPrice,
                Orb::NewFloatingGroupedWithMeteredMinimumPrice,
                Orb::NewFloatingMatrixWithDisplayNamePrice,
                Orb::NewFloatingBulkWithProrationPrice,
                Orb::NewFloatingGroupedTieredPackagePrice,
                Orb::NewFloatingScalableMatrixWithUnitPricingPrice,
                Orb::NewFloatingScalableMatrixWithTieredPricingPrice,
                Orb::NewFloatingCumulativeGroupedBulkPrice
              )
            end

          sig do
            override.returns(
              T::Array[
                Orb::PriceEvaluatePreviewEventsParams::PriceEvaluation::Price::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
