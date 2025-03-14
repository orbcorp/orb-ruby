# frozen_string_literal: true

module Orb
  module Models
    # @abstract
    class SubscriptionUsage < Orb::Union
      variant -> { Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage }

      variant -> { Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage }

      class UngroupedSubscriptionUsage < Orb::BaseModel
        # @!attribute data
        #
        #   @return [Array<Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data>]
        required :data, -> { Orb::ArrayOf[Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data] }

        # @!parse
        #   # @param data [Array<Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data>]
        #   #
        #   def initialize(data:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void

        class Data < Orb::BaseModel
          # @!attribute billable_metric
          #
          #   @return [Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::BillableMetric]
          required :billable_metric,
                   -> { Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::BillableMetric }

          # @!attribute usage
          #
          #   @return [Array<Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::Usage>]
          required :usage,
                   -> { Orb::ArrayOf[Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::Usage] }

          # @!attribute view_mode
          #
          #   @return [Symbol, Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::ViewMode]
          required :view_mode,
                   enum: -> { Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::ViewMode }

          # @!parse
          #   # @param billable_metric [Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::BillableMetric]
          #   # @param usage [Array<Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::Usage>]
          #   # @param view_mode [Symbol, Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::ViewMode]
          #   #
          #   def initialize(billable_metric:, usage:, view_mode:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          class BillableMetric < Orb::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!parse
            #   # @param id [String]
            #   # @param name [String]
            #   #
            #   def initialize(id:, name:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void
          end

          class Usage < Orb::BaseModel
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

            # @!parse
            #   # @param quantity [Float]
            #   # @param timeframe_end [Time]
            #   # @param timeframe_start [Time]
            #   #
            #   def initialize(quantity:, timeframe_end:, timeframe_start:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void
          end

          # @abstract
          class ViewMode < Orb::Enum
            PERIODIC = :periodic
            CUMULATIVE = :cumulative

            finalize!
          end
        end
      end

      class GroupedSubscriptionUsage < Orb::BaseModel
        # @!attribute data
        #
        #   @return [Array<Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data>]
        required :data, -> { Orb::ArrayOf[Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data] }

        # @!attribute pagination_metadata
        #
        #   @return [Orb::Models::PaginationMetadata, nil]
        optional :pagination_metadata, -> { Orb::Models::PaginationMetadata }, nil?: true

        # @!parse
        #   # @param data [Array<Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data>]
        #   # @param pagination_metadata [Orb::Models::PaginationMetadata, nil]
        #   #
        #   def initialize(data:, pagination_metadata: nil, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void

        class Data < Orb::BaseModel
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
                   -> { Orb::ArrayOf[Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::Usage] }

          # @!attribute view_mode
          #
          #   @return [Symbol, Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::ViewMode]
          required :view_mode, enum: -> { Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::ViewMode }

          # @!parse
          #   # @param billable_metric [Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::BillableMetric]
          #   # @param metric_group [Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::MetricGroup]
          #   # @param usage [Array<Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::Usage>]
          #   # @param view_mode [Symbol, Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::ViewMode]
          #   #
          #   def initialize(billable_metric:, metric_group:, usage:, view_mode:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          class BillableMetric < Orb::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!parse
            #   # @param id [String]
            #   # @param name [String]
            #   #
            #   def initialize(id:, name:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void
          end

          class MetricGroup < Orb::BaseModel
            # @!attribute property_key
            #
            #   @return [String]
            required :property_key, String

            # @!attribute property_value
            #
            #   @return [String]
            required :property_value, String

            # @!parse
            #   # @param property_key [String]
            #   # @param property_value [String]
            #   #
            #   def initialize(property_key:, property_value:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void
          end

          class Usage < Orb::BaseModel
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

            # @!parse
            #   # @param quantity [Float]
            #   # @param timeframe_end [Time]
            #   # @param timeframe_start [Time]
            #   #
            #   def initialize(quantity:, timeframe_end:, timeframe_start:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void
          end

          # @abstract
          class ViewMode < Orb::Enum
            PERIODIC = :periodic
            CUMULATIVE = :cumulative

            finalize!
          end
        end
      end

      # @!parse
      #   class << self
      #     # @return [Array(Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage, Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage)]
      #     def variants; end
      #   end
    end
  end
end
