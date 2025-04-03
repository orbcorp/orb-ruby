# typed: strong

module Orb
  module Models
    module SubscriptionUsage
      extend Orb::Union

      class UngroupedSubscriptionUsage < Orb::BaseModel
        sig { returns(T::Array[Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data]) }
        attr_accessor :data

        sig do
          params(
            data: T::Array[T.any(Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data, Orb::Internal::Util::AnyHash)]
          )
            .returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig { override.returns({data: T::Array[Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data]}) }
        def to_hash
        end

        class Data < Orb::BaseModel
          sig { returns(Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::BillableMetric) }
          attr_reader :billable_metric

          sig do
            params(
              billable_metric: T.any(
                Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::BillableMetric,
                Orb::Internal::Util::AnyHash
              )
            )
              .void
          end
          attr_writer :billable_metric

          sig { returns(T::Array[Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::Usage]) }
          attr_accessor :usage

          sig { returns(Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::ViewMode::TaggedSymbol) }
          attr_accessor :view_mode

          sig do
            params(
              billable_metric: T.any(
                Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::BillableMetric,
                Orb::Internal::Util::AnyHash
              ),
              usage: T::Array[
              T.any(
                Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::Usage,
                Orb::Internal::Util::AnyHash
              )
              ],
              view_mode: Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::ViewMode::OrSymbol
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
                  view_mode: Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::ViewMode::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          class BillableMetric < Orb::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(String) }
            attr_accessor :name

            sig { params(id: String, name: String).returns(T.attached_class) }
            def self.new(id:, name:)
            end

            sig { override.returns({id: String, name: String}) }
            def to_hash
            end
          end

          class Usage < Orb::BaseModel
            sig { returns(Float) }
            attr_accessor :quantity

            sig { returns(Time) }
            attr_accessor :timeframe_end

            sig { returns(Time) }
            attr_accessor :timeframe_start

            sig do
              params(quantity: Float, timeframe_end: Time, timeframe_start: Time).returns(T.attached_class)
            end
            def self.new(quantity:, timeframe_end:, timeframe_start:)
            end

            sig { override.returns({quantity: Float, timeframe_end: Time, timeframe_start: Time}) }
            def to_hash
            end
          end

          module ViewMode
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::ViewMode) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::ViewMode::TaggedSymbol
                )
              end

            PERIODIC =
              T.let(:periodic, Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::ViewMode::TaggedSymbol)
            CUMULATIVE =
              T.let(
                :cumulative,
                Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::ViewMode::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage::Data::ViewMode::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end
      end

      class GroupedSubscriptionUsage < Orb::BaseModel
        sig { returns(T::Array[Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data]) }
        attr_accessor :data

        sig { returns(T.nilable(Orb::Models::PaginationMetadata)) }
        attr_reader :pagination_metadata

        sig do
          params(
            pagination_metadata: T.nilable(T.any(Orb::Models::PaginationMetadata, Orb::Internal::Util::AnyHash))
          )
            .void
        end
        attr_writer :pagination_metadata

        sig do
          params(
            data: T::Array[T.any(Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data, Orb::Internal::Util::AnyHash)],
            pagination_metadata: T.nilable(T.any(Orb::Models::PaginationMetadata, Orb::Internal::Util::AnyHash))
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
          attr_reader :billable_metric

          sig do
            params(
              billable_metric: T.any(
                Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::BillableMetric,
                Orb::Internal::Util::AnyHash
              )
            )
              .void
          end
          attr_writer :billable_metric

          sig { returns(Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::MetricGroup) }
          attr_reader :metric_group

          sig do
            params(
              metric_group: T.any(
                Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::MetricGroup,
                Orb::Internal::Util::AnyHash
              )
            )
              .void
          end
          attr_writer :metric_group

          sig { returns(T::Array[Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::Usage]) }
          attr_accessor :usage

          sig { returns(Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::ViewMode::TaggedSymbol) }
          attr_accessor :view_mode

          sig do
            params(
              billable_metric: T.any(
                Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::BillableMetric,
                Orb::Internal::Util::AnyHash
              ),
              metric_group: T.any(
                Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::MetricGroup,
                Orb::Internal::Util::AnyHash
              ),
              usage: T::Array[T.any(Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::Usage, Orb::Internal::Util::AnyHash)],
              view_mode: Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::ViewMode::OrSymbol
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
                  view_mode: Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::ViewMode::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          class BillableMetric < Orb::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(String) }
            attr_accessor :name

            sig { params(id: String, name: String).returns(T.attached_class) }
            def self.new(id:, name:)
            end

            sig { override.returns({id: String, name: String}) }
            def to_hash
            end
          end

          class MetricGroup < Orb::BaseModel
            sig { returns(String) }
            attr_accessor :property_key

            sig { returns(String) }
            attr_accessor :property_value

            sig { params(property_key: String, property_value: String).returns(T.attached_class) }
            def self.new(property_key:, property_value:)
            end

            sig { override.returns({property_key: String, property_value: String}) }
            def to_hash
            end
          end

          class Usage < Orb::BaseModel
            sig { returns(Float) }
            attr_accessor :quantity

            sig { returns(Time) }
            attr_accessor :timeframe_end

            sig { returns(Time) }
            attr_accessor :timeframe_start

            sig do
              params(quantity: Float, timeframe_end: Time, timeframe_start: Time).returns(T.attached_class)
            end
            def self.new(quantity:, timeframe_end:, timeframe_start:)
            end

            sig { override.returns({quantity: Float, timeframe_end: Time, timeframe_start: Time}) }
            def to_hash
            end
          end

          module ViewMode
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::ViewMode) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::ViewMode::TaggedSymbol
                )
              end

            PERIODIC =
              T.let(:periodic, Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::ViewMode::TaggedSymbol)
            CUMULATIVE =
              T.let(:cumulative, Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::ViewMode::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage::Data::ViewMode::TaggedSymbol])
            end
            def self.values
            end
          end
        end
      end

      sig do
        override
          .returns(
            [Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage, Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage]
          )
      end
      def self.variants
      end
    end
  end
end
