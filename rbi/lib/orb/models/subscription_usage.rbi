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
          sig { returns(Orb::Models::BillableMetricSimpleModel) }
          def billable_metric
          end

          sig { params(_: Orb::Models::BillableMetricSimpleModel).returns(Orb::Models::BillableMetricSimpleModel) }
          def billable_metric=(_)
          end

          sig { returns(T::Array[Orb::Models::UsageModel]) }
          def usage
          end

          sig { params(_: T::Array[Orb::Models::UsageModel]).returns(T::Array[Orb::Models::UsageModel]) }
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
              billable_metric: Orb::Models::BillableMetricSimpleModel,
              usage: T::Array[Orb::Models::UsageModel],
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
                  billable_metric: Orb::Models::BillableMetricSimpleModel,
                  usage: T::Array[Orb::Models::UsageModel],
                  view_mode: Symbol
                }
              )
          end
          def to_hash
          end

          class ViewMode < Orb::Enum
            abstract!

            PERIODIC = :periodic
            CUMULATIVE = :cumulative

            sig { override.returns(T::Array[Symbol]) }
            def self.values
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
          sig { returns(Orb::Models::BillableMetricSimpleModel) }
          def billable_metric
          end

          sig { params(_: Orb::Models::BillableMetricSimpleModel).returns(Orb::Models::BillableMetricSimpleModel) }
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

          sig { returns(T::Array[Orb::Models::UsageModel]) }
          def usage
          end

          sig { params(_: T::Array[Orb::Models::UsageModel]).returns(T::Array[Orb::Models::UsageModel]) }
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
              billable_metric: Orb::Models::BillableMetricSimpleModel,
              metric_group: Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::MetricGroup,
              usage: T::Array[Orb::Models::UsageModel],
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
                  billable_metric: Orb::Models::BillableMetricSimpleModel,
                  metric_group: Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::MetricGroup,
                  usage: T::Array[Orb::Models::UsageModel],
                  view_mode: Symbol
                }
              )
          end
          def to_hash
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

          class ViewMode < Orb::Enum
            abstract!

            PERIODIC = :periodic
            CUMULATIVE = :cumulative

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end
      end

      sig do
        override
          .returns(
            [[NilClass, Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage], [NilClass, Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage]]
          )
      end
      private_class_method def self.variants
      end
    end
  end
end
