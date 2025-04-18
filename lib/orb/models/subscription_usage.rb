# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Subscriptions#fetch_usage
    module SubscriptionUsage
      extend Orb::Internal::Type::Union

      variant -> { Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage }

      variant -> { Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage }

      class UngroupedSubscriptionUsage < Orb::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data>]
        required :data,
                 -> { Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data] }

        # @!method initialize(data:)
        #   @param data [Array<Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data>]

        class Data < Orb::Internal::Type::BaseModel
          # @!attribute billable_metric
          #
          #   @return [Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::BillableMetric]
          required :billable_metric,
                   -> { Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::BillableMetric }

          # @!attribute usage
          #
          #   @return [Array<Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::Usage>]
          required :usage,
                   -> { Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::Usage] }

          # @!attribute view_mode
          #
          #   @return [Symbol, Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::ViewMode]
          required :view_mode,
                   enum: -> { Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::ViewMode }

          # @!method initialize(billable_metric:, usage:, view_mode:)
          #   @param billable_metric [Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::BillableMetric]
          #   @param usage [Array<Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::Usage>]
          #   @param view_mode [Symbol, Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::ViewMode]

          # @see Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data#billable_metric
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

          # @see Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data#view_mode
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
        #   @return [Array<Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data>]
        required :data,
                 -> { Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data] }

        # @!attribute pagination_metadata
        #
        #   @return [Orb::Models::PaginationMetadata, nil]
        optional :pagination_metadata, -> { Orb::Models::PaginationMetadata }, nil?: true

        # @!method initialize(data:, pagination_metadata: nil)
        #   @param data [Array<Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data>]
        #   @param pagination_metadata [Orb::Models::PaginationMetadata, nil]

        class Data < Orb::Internal::Type::BaseModel
          # @!attribute billable_metric
          #
          #   @return [Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::BillableMetric]
          required :billable_metric,
                   -> { Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::BillableMetric }

          # @!attribute metric_group
          #
          #   @return [Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::MetricGroup]
          required :metric_group, -> { Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::MetricGroup }

          # @!attribute usage
          #
          #   @return [Array<Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::Usage>]
          required :usage,
                   -> { Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::Usage] }

          # @!attribute view_mode
          #
          #   @return [Symbol, Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::ViewMode]
          required :view_mode, enum: -> { Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::ViewMode }

          # @!method initialize(billable_metric:, metric_group:, usage:, view_mode:)
          #   @param billable_metric [Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::BillableMetric]
          #   @param metric_group [Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::MetricGroup]
          #   @param usage [Array<Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::Usage>]
          #   @param view_mode [Symbol, Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::ViewMode]

          # @see Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data#billable_metric
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

          # @see Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data#metric_group
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

          # @see Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data#view_mode
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
      #   @return [Array(Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage, Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage)]
    end
  end
end
