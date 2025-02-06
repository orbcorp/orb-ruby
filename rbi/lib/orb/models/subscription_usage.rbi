# typed: strong

module Orb
  module Models
    class SubscriptionUsage < Orb::Union
      abstract!

      Variants = T.type_alias do
        T.any(
          Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage,
          Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage
        )
      end

      class UngroupedSubscriptionUsage < Orb::BaseModel
        Shape = T.type_alias do
          {data: T::Array[Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data]}
        end

        sig { returns(T::Array[Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data]) }
        attr_accessor :data

        sig { params(data: T::Array[Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data]).void }
        def initialize(data:); end

        sig { returns(Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Shape) }
        def to_h; end

        class Data < Orb::BaseModel
          Shape = T.type_alias do
            {
              billable_metric: Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::BillableMetric,
              usage: T::Array[Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::Usage],
              view_mode: Symbol
            }
          end

          sig { returns(Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::BillableMetric) }
          attr_accessor :billable_metric

          sig { returns(T::Array[Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::Usage]) }
          attr_accessor :usage

          sig { returns(Symbol) }
          attr_accessor :view_mode

          sig do
            params(
              billable_metric: Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::BillableMetric,
              usage: T::Array[Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::Usage],
              view_mode: Symbol
            ).void
          end
          def initialize(billable_metric:, usage:, view_mode:); end

          sig { returns(Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::Shape) }
          def to_h; end

          class BillableMetric < Orb::BaseModel
            Shape = T.type_alias { {id: String, name: String} }

            sig { returns(String) }
            attr_accessor :id

            sig { returns(String) }
            attr_accessor :name

            sig { params(id: String, name: String).void }
            def initialize(id:, name:); end

            sig do
              returns(Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::BillableMetric::Shape)
            end
            def to_h; end
          end

          class Usage < Orb::BaseModel
            Shape = T.type_alias { {quantity: Float, timeframe_end: Time, timeframe_start: Time} }

            sig { returns(Float) }
            attr_accessor :quantity

            sig { returns(Time) }
            attr_accessor :timeframe_end

            sig { returns(Time) }
            attr_accessor :timeframe_start

            sig { params(quantity: Float, timeframe_end: Time, timeframe_start: Time).void }
            def initialize(quantity:, timeframe_end:, timeframe_start:); end

            sig { returns(Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::Usage::Shape) }
            def to_h; end
          end

          class ViewMode < Orb::Enum
            abstract!

            PERIODIC = :periodic
            CUMULATIVE = :cumulative

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end
        end
      end

      class GroupedSubscriptionUsage < Orb::BaseModel
        Shape = T.type_alias do
          {
            data: T::Array[Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data],
            pagination_metadata: T.nilable(Orb::Models::PaginationMetadata)
          }
        end

        sig { returns(T::Array[Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data]) }
        attr_accessor :data

        sig { returns(T.nilable(Orb::Models::PaginationMetadata)) }
        attr_accessor :pagination_metadata

        sig do
          params(
            data: T::Array[Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data],
            pagination_metadata: T.nilable(Orb::Models::PaginationMetadata)
          ).void
        end
        def initialize(data:, pagination_metadata: nil); end

        sig { returns(Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Shape) }
        def to_h; end

        class Data < Orb::BaseModel
          Shape = T.type_alias do
            {
              billable_metric: Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::BillableMetric,
              metric_group: Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::MetricGroup,
              usage: T::Array[Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::Usage],
              view_mode: Symbol
            }
          end

          sig { returns(Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::BillableMetric) }
          attr_accessor :billable_metric

          sig { returns(Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::MetricGroup) }
          attr_accessor :metric_group

          sig { returns(T::Array[Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::Usage]) }
          attr_accessor :usage

          sig { returns(Symbol) }
          attr_accessor :view_mode

          sig do
            params(
              billable_metric: Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::BillableMetric,
              metric_group: Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::MetricGroup,
              usage: T::Array[Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::Usage],
              view_mode: Symbol
            ).void
          end
          def initialize(billable_metric:, metric_group:, usage:, view_mode:); end

          sig { returns(Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::Shape) }
          def to_h; end

          class BillableMetric < Orb::BaseModel
            Shape = T.type_alias { {id: String, name: String} }

            sig { returns(String) }
            attr_accessor :id

            sig { returns(String) }
            attr_accessor :name

            sig { params(id: String, name: String).void }
            def initialize(id:, name:); end

            sig do
              returns(Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::BillableMetric::Shape)
            end
            def to_h; end
          end

          class MetricGroup < Orb::BaseModel
            Shape = T.type_alias { {property_key: String, property_value: String} }

            sig { returns(String) }
            attr_accessor :property_key

            sig { returns(String) }
            attr_accessor :property_value

            sig { params(property_key: String, property_value: String).void }
            def initialize(property_key:, property_value:); end

            sig do
              returns(Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::MetricGroup::Shape)
            end
            def to_h; end
          end

          class Usage < Orb::BaseModel
            Shape = T.type_alias { {quantity: Float, timeframe_end: Time, timeframe_start: Time} }

            sig { returns(Float) }
            attr_accessor :quantity

            sig { returns(Time) }
            attr_accessor :timeframe_end

            sig { returns(Time) }
            attr_accessor :timeframe_start

            sig { params(quantity: Float, timeframe_end: Time, timeframe_start: Time).void }
            def initialize(quantity:, timeframe_end:, timeframe_start:); end

            sig { returns(Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::Usage::Shape) }
            def to_h; end
          end

          class ViewMode < Orb::Enum
            abstract!

            PERIODIC = :periodic
            CUMULATIVE = :cumulative

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end
        end
      end

      sig do
        override.returns(
          [
            [NilClass, Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage],
            [NilClass, Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage]
          ]
        )
      end
      private_class_method def self.variants; end
    end
  end
end
