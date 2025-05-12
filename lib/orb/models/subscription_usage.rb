# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Subscriptions#fetch_usage
    module SubscriptionUsage
      extend Orb::Internal::Type::Union

      variant -> { Orb::SubscriptionUsage::UngroupedSubscriptionUsage }

      variant -> { Orb::SubscriptionUsage::GroupedSubscriptionUsage }

      class UngroupedSubscriptionUsage < Orb::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data>]
        required :data,
                 -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data] }

        # @!method initialize(data:)
        #   @param data [Array<Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data>]

        class Data < Orb::Internal::Type::BaseModel
          # @!attribute billable_metric
          #
          #   @return [Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data::BillableMetric]
          required :billable_metric,
                   -> {
                     Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data::BillableMetric
                   }

          # @!attribute usage
          #
          #   @return [Array<Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data::Usage>]
          required :usage,
                   -> {
                     Orb::Internal::Type::ArrayOf[Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data::Usage]
                   }

          # @!attribute view_mode
          #
          #   @return [Symbol, Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data::ViewMode]
          required :view_mode, enum: -> { Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data::ViewMode }

          # @!method initialize(billable_metric:, usage:, view_mode:)
          #   @param billable_metric [Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data::BillableMetric]
          #   @param usage [Array<Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data::Usage>]
          #   @param view_mode [Symbol, Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data::ViewMode]

          # @see Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data#billable_metric
          class BillableMetric < Orb::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!method initialize(id:, name:)
            #   @param id [String]
            #   @param name [String]
          end

          class Usage < Orb::Internal::Type::BaseModel
            # @!attribute quantity
            #
            #   @return [Float]
            required :quantity, Float

            # @!attribute timeframe_end
            #
            #   @return [Time]
            required :timeframe_end, Time

            # @!attribute timeframe_start
            #
            #   @return [Time]
            required :timeframe_start, Time

            # @!method initialize(quantity:, timeframe_end:, timeframe_start:)
            #   @param quantity [Float]
            #   @param timeframe_end [Time]
            #   @param timeframe_start [Time]
          end

          # @see Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data#view_mode
          module ViewMode
            extend Orb::Internal::Type::Enum

            PERIODIC = :periodic
            CUMULATIVE = :cumulative

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      class GroupedSubscriptionUsage < Orb::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data>]
        required :data,
                 -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data] }

        # @!attribute pagination_metadata
        #
        #   @return [Orb::PaginationMetadata, nil]
        optional :pagination_metadata, -> { Orb::PaginationMetadata }, nil?: true

        # @!method initialize(data:, pagination_metadata: nil)
        #   @param data [Array<Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data>]
        #   @param pagination_metadata [Orb::PaginationMetadata, nil]

        class Data < Orb::Internal::Type::BaseModel
          # @!attribute billable_metric
          #
          #   @return [Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::BillableMetric]
          required :billable_metric,
                   -> {
                     Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::BillableMetric
                   }

          # @!attribute metric_group
          #
          #   @return [Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::MetricGroup]
          required :metric_group, -> { Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::MetricGroup }

          # @!attribute usage
          #
          #   @return [Array<Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::Usage>]
          required :usage,
                   -> {
                     Orb::Internal::Type::ArrayOf[Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::Usage]
                   }

          # @!attribute view_mode
          #
          #   @return [Symbol, Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::ViewMode]
          required :view_mode, enum: -> { Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::ViewMode }

          # @!method initialize(billable_metric:, metric_group:, usage:, view_mode:)
          #   @param billable_metric [Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::BillableMetric]
          #   @param metric_group [Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::MetricGroup]
          #   @param usage [Array<Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::Usage>]
          #   @param view_mode [Symbol, Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::ViewMode]

          # @see Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data#billable_metric
          class BillableMetric < Orb::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!method initialize(id:, name:)
            #   @param id [String]
            #   @param name [String]
          end

          # @see Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data#metric_group
          class MetricGroup < Orb::Internal::Type::BaseModel
            # @!attribute property_key
            #
            #   @return [String]
            required :property_key, String

            # @!attribute property_value
            #
            #   @return [String]
            required :property_value, String

            # @!method initialize(property_key:, property_value:)
            #   @param property_key [String]
            #   @param property_value [String]
          end

          class Usage < Orb::Internal::Type::BaseModel
            # @!attribute quantity
            #
            #   @return [Float]
            required :quantity, Float

            # @!attribute timeframe_end
            #
            #   @return [Time]
            required :timeframe_end, Time

            # @!attribute timeframe_start
            #
            #   @return [Time]
            required :timeframe_start, Time

            # @!method initialize(quantity:, timeframe_end:, timeframe_start:)
            #   @param quantity [Float]
            #   @param timeframe_end [Time]
            #   @param timeframe_start [Time]
          end

          # @see Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data#view_mode
          module ViewMode
            extend Orb::Internal::Type::Enum

            PERIODIC = :periodic
            CUMULATIVE = :cumulative

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      # @!method self.variants
      #   @return [Array(Orb::SubscriptionUsage::UngroupedSubscriptionUsage, Orb::SubscriptionUsage::GroupedSubscriptionUsage)]

      define_sorbet_constant!(:Variants) do
        T.type_alias do
          T.any(
            Orb::SubscriptionUsage::UngroupedSubscriptionUsage,
            Orb::SubscriptionUsage::GroupedSubscriptionUsage
          )
        end
      end
    end
  end
end
