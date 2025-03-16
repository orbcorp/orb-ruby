# typed: strong

module Orb
  module Models
    class SubscriptionUsage < Orb::Union
      abstract!

      Variants = type_template(:out) do
        {
          fixed: T.any(
            Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage,
            Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage
          )
        }
      end

      class UngroupedSubscriptionUsage < Orb::BaseModel
        sig { returns(T::Array[Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data]) }
        def data
        end

        sig do
          params(_: T::Array[Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data])
            .returns(T::Array[Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data])
        end
        def data=(_)
        end

        sig do
          params(data: T::Array[Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data])
            .returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig { override.returns({data: T::Array[Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data]}) }
        def to_hash
        end

        class Data < Orb::BaseModel
          sig { returns(Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::BillableMetric) }
          def billable_metric
          end

          sig do
            params(_: Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::BillableMetric)
              .returns(Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::BillableMetric)
          end
          def billable_metric=(_)
          end

          sig { returns(T::Array[Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::Usage]) }
          def usage
          end

          sig do
            params(_: T::Array[Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::Usage])
              .returns(T::Array[Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::Usage])
          end
          def usage=(_)
          end

          sig { returns(Symbol) }
          def view_mode
          end

          sig { params(_: Symbol).returns(Symbol) }
          def view_mode=(_)
          end

          sig do
            params(
              billable_metric: Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::BillableMetric,
              usage: T::Array[Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::Usage],
              view_mode: Symbol
            )
              .returns(T.attached_class)
          end
          def self.new(billable_metric:, usage:, view_mode:)
          end

          sig do
            override
              .returns(
                {
                  billable_metric: Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::BillableMetric,
                  usage: T::Array[Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::Usage],
                  view_mode: Symbol
                }
              )
          end
          def to_hash
          end

          class BillableMetric < Orb::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { params(id: String, name: String).returns(T.attached_class) }
            def self.new(id:, name:)
            end

            sig { override.returns({id: String, name: String}) }
            def to_hash
            end
          end

          class Usage < Orb::BaseModel
            sig { returns(Float) }
            def quantity
            end

            sig { params(_: Float).returns(Float) }
            def quantity=(_)
            end

            sig { returns(Time) }
            def timeframe_end
            end

            sig { params(_: Time).returns(Time) }
            def timeframe_end=(_)
            end

            sig { returns(Time) }
            def timeframe_start
            end

            sig { params(_: Time).returns(Time) }
            def timeframe_start=(_)
            end

            sig do
              params(quantity: Float, timeframe_end: Time, timeframe_start: Time).returns(T.attached_class)
            end
            def self.new(quantity:, timeframe_end:, timeframe_start:)
            end

            sig { override.returns({quantity: Float, timeframe_end: Time, timeframe_start: Time}) }
            def to_hash
            end
          end

          class ViewMode < Orb::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            PERIODIC = :periodic
            CUMULATIVE = :cumulative
          end
        end
      end

      class GroupedSubscriptionUsage < Orb::BaseModel
        sig { returns(T::Array[Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data]) }
        def data
        end

        sig do
          params(_: T::Array[Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data])
            .returns(T::Array[Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data])
        end
        def data=(_)
        end

        sig { returns(T.nilable(Orb::Models::PaginationMetadata)) }
        def pagination_metadata
        end

        sig { params(_: T.nilable(Orb::Models::PaginationMetadata)).returns(T.nilable(Orb::Models::PaginationMetadata)) }
        def pagination_metadata=(_)
        end

        sig do
          params(
            data: T::Array[Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data],
            pagination_metadata: T.nilable(Orb::Models::PaginationMetadata)
          )
            .returns(T.attached_class)
        end
        def self.new(data:, pagination_metadata: nil)
        end

        sig do
          override
            .returns(
              {
                data: T::Array[Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data],
                pagination_metadata: T.nilable(Orb::Models::PaginationMetadata)
              }
            )
        end
        def to_hash
        end

        class Data < Orb::BaseModel
          sig { returns(Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::BillableMetric) }
          def billable_metric
          end

          sig do
            params(_: Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::BillableMetric)
              .returns(Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::BillableMetric)
          end
          def billable_metric=(_)
          end

          sig { returns(Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::MetricGroup) }
          def metric_group
          end

          sig do
            params(_: Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::MetricGroup)
              .returns(Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::MetricGroup)
          end
          def metric_group=(_)
          end

          sig { returns(T::Array[Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::Usage]) }
          def usage
          end

          sig do
            params(_: T::Array[Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::Usage])
              .returns(T::Array[Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::Usage])
          end
          def usage=(_)
          end

          sig { returns(Symbol) }
          def view_mode
          end

          sig { params(_: Symbol).returns(Symbol) }
          def view_mode=(_)
          end

          sig do
            params(
              billable_metric: Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::BillableMetric,
              metric_group: Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::MetricGroup,
              usage: T::Array[Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::Usage],
              view_mode: Symbol
            )
              .returns(T.attached_class)
          end
          def self.new(billable_metric:, metric_group:, usage:, view_mode:)
          end

          sig do
            override
              .returns(
                {
                  billable_metric: Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::BillableMetric,
                  metric_group: Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::MetricGroup,
                  usage: T::Array[Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::Usage],
                  view_mode: Symbol
                }
              )
          end
          def to_hash
          end

          class BillableMetric < Orb::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { params(id: String, name: String).returns(T.attached_class) }
            def self.new(id:, name:)
            end

            sig { override.returns({id: String, name: String}) }
            def to_hash
            end
          end

          class MetricGroup < Orb::BaseModel
            sig { returns(String) }
            def property_key
            end

            sig { params(_: String).returns(String) }
            def property_key=(_)
            end

            sig { returns(String) }
            def property_value
            end

            sig { params(_: String).returns(String) }
            def property_value=(_)
            end

            sig { params(property_key: String, property_value: String).returns(T.attached_class) }
            def self.new(property_key:, property_value:)
            end

            sig { override.returns({property_key: String, property_value: String}) }
            def to_hash
            end
          end

          class Usage < Orb::BaseModel
            sig { returns(Float) }
            def quantity
            end

            sig { params(_: Float).returns(Float) }
            def quantity=(_)
            end

            sig { returns(Time) }
            def timeframe_end
            end

            sig { params(_: Time).returns(Time) }
            def timeframe_end=(_)
            end

            sig { returns(Time) }
            def timeframe_start
            end

            sig { params(_: Time).returns(Time) }
            def timeframe_start=(_)
            end

            sig do
              params(quantity: Float, timeframe_end: Time, timeframe_start: Time).returns(T.attached_class)
            end
            def self.new(quantity:, timeframe_end:, timeframe_start:)
            end

            sig { override.returns({quantity: Float, timeframe_end: Time, timeframe_start: Time}) }
            def to_hash
            end
          end

          class ViewMode < Orb::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            PERIODIC = :periodic
            CUMULATIVE = :cumulative
          end
        end
      end
    end
  end
end
