# frozen_string_literal: true

module Orb
  module Models
    # @abstract
    #
    # @example
    # ```ruby
    # case subscription_usage
    # in Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage
    #   # ...
    # in Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage
    #   # ...
    # end
    # ```
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
          #   @return [Orb::Models::BillableMetricSimpleModel]
          required :billable_metric, -> { Orb::Models::BillableMetricSimpleModel }

          # @!attribute usage
          #
          #   @return [Array<Orb::Models::UsageModel>]
          required :usage, -> { Orb::ArrayOf[Orb::Models::UsageModel] }

          # @!attribute view_mode
          #
          #   @return [Symbol, Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::ViewMode]
          required :view_mode,
                   enum: -> { Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::ViewMode }

          # @!parse
          #   # @param billable_metric [Orb::Models::BillableMetricSimpleModel]
          #   # @param usage [Array<Orb::Models::UsageModel>]
          #   # @param view_mode [Symbol, Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::ViewMode]
          #   #
          #   def initialize(billable_metric:, usage:, view_mode:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case view_mode
          # in :periodic
          #   # ...
          # in :cumulative
          #   # ...
          # end
          # ```
          class ViewMode < Orb::Enum
            PERIODIC = :periodic
            CUMULATIVE = :cumulative

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
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
          #   @return [Orb::Models::BillableMetricSimpleModel]
          required :billable_metric, -> { Orb::Models::BillableMetricSimpleModel }

          # @!attribute metric_group
          #
          #   @return [Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::MetricGroup]
          required :metric_group, -> { Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::MetricGroup }

          # @!attribute usage
          #
          #   @return [Array<Orb::Models::UsageModel>]
          required :usage, -> { Orb::ArrayOf[Orb::Models::UsageModel] }

          # @!attribute view_mode
          #
          #   @return [Symbol, Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::ViewMode]
          required :view_mode, enum: -> { Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::ViewMode }

          # @!parse
          #   # @param billable_metric [Orb::Models::BillableMetricSimpleModel]
          #   # @param metric_group [Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::MetricGroup]
          #   # @param usage [Array<Orb::Models::UsageModel>]
          #   # @param view_mode [Symbol, Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::ViewMode]
          #   #
          #   def initialize(billable_metric:, metric_group:, usage:, view_mode:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

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

          # @abstract
          #
          # @example
          # ```ruby
          # case view_mode
          # in :periodic
          #   # ...
          # in :cumulative
          #   # ...
          # end
          # ```
          class ViewMode < Orb::Enum
            PERIODIC = :periodic
            CUMULATIVE = :cumulative

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end
      end
    end
  end
end
