# typed: strong

module Orb
  module Models
    class SubscriptionUsage < Orb::Union
      abstract!

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

        sig { params(data: T::Array[Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data]).void }
        def initialize(data:)
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
              .void
          end
          def initialize(billable_metric:, usage:, view_mode:)
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

            sig { params(id: String, name: String).void }
            def initialize(id:, name:)
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

            sig { params(quantity: Float, timeframe_end: Time, timeframe_start: Time).void }
            def initialize(quantity:, timeframe_end:, timeframe_start:)
            end

            sig { override.returns({quantity: Float, timeframe_end: Time, timeframe_start: Time}) }
            def to_hash
            end
          end

          class ViewMode < Orb::Enum
            abstract!

            PERIODIC = :periodic
            CUMULATIVE = :cumulative

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
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
            .void
        end
        def initialize(data:, pagination_metadata: nil)
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
              .void
          end
          def initialize(billable_metric:, metric_group:, usage:, view_mode:)
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

            sig { params(id: String, name: String).void }
            def initialize(id:, name:)
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

            sig { params(property_key: String, property_value: String).void }
            def initialize(property_key:, property_value:)
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

            sig { params(quantity: Float, timeframe_end: Time, timeframe_start: Time).void }
            def initialize(quantity:, timeframe_end:, timeframe_start:)
            end

            sig { override.returns({quantity: Float, timeframe_end: Time, timeframe_start: Time}) }
            def to_hash
            end
          end

          class ViewMode < Orb::Enum
            abstract!

            PERIODIC = :periodic
            CUMULATIVE = :cumulative

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end
      end

      class << self
        sig do
          override
            .returns(
              [[NilClass, Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage], [NilClass, Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage]]
            )
        end
        private def variants
        end
      end
    end
  end
end
