# typed: strong

module Orb
  module Models
    module SubscriptionUsage
      extend Orb::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Orb::SubscriptionUsage::UngroupedSubscriptionUsage,
            Orb::SubscriptionUsage::GroupedSubscriptionUsage
          )
        end

      class UngroupedSubscriptionUsage < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::SubscriptionUsage::UngroupedSubscriptionUsage,
              Orb::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data]
          )
        end
        attr_accessor :data

        sig do
          params(
            data:
              T::Array[
                Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[
                  Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data
                ]
            }
          )
        end
        def to_hash
        end

        class Data < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data,
                Orb::Internal::AnyHash
              )
            end

          sig do
            returns(
              Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data::BillableMetric
            )
          end
          attr_reader :billable_metric

          sig do
            params(
              billable_metric:
                Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data::BillableMetric::OrHash
            ).void
          end
          attr_writer :billable_metric

          sig do
            returns(
              T::Array[
                Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data::Usage
              ]
            )
          end
          attr_accessor :usage

          sig do
            returns(
              Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data::ViewMode::TaggedSymbol
            )
          end
          attr_accessor :view_mode

          sig do
            params(
              billable_metric:
                Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data::BillableMetric::OrHash,
              usage:
                T::Array[
                  Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data::Usage::OrHash
                ],
              view_mode:
                Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data::ViewMode::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(billable_metric:, usage:, view_mode:)
          end

          sig do
            override.returns(
              {
                billable_metric:
                  Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data::BillableMetric,
                usage:
                  T::Array[
                    Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data::Usage
                  ],
                view_mode:
                  Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data::ViewMode::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          class BillableMetric < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data::BillableMetric,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(String) }
            attr_accessor :name

            sig { params(id: String, name: String).returns(T.attached_class) }
            def self.new(id:, name:)
            end

            sig { override.returns({ id: String, name: String }) }
            def to_hash
            end
          end

          class Usage < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data::Usage,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(Float) }
            attr_accessor :quantity

            sig { returns(Time) }
            attr_accessor :timeframe_end

            sig { returns(Time) }
            attr_accessor :timeframe_start

            sig do
              params(
                quantity: Float,
                timeframe_end: Time,
                timeframe_start: Time
              ).returns(T.attached_class)
            end
            def self.new(quantity:, timeframe_end:, timeframe_start:)
            end

            sig do
              override.returns(
                { quantity: Float, timeframe_end: Time, timeframe_start: Time }
              )
            end
            def to_hash
            end
          end

          module ViewMode
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data::ViewMode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PERIODIC =
              T.let(
                :periodic,
                Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data::ViewMode::TaggedSymbol
              )
            CUMULATIVE =
              T.let(
                :cumulative,
                Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data::ViewMode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::SubscriptionUsage::UngroupedSubscriptionUsage::Data::ViewMode::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      class GroupedSubscriptionUsage < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::SubscriptionUsage::GroupedSubscriptionUsage,
              Orb::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data]
          )
        end
        attr_accessor :data

        sig { returns(T.nilable(Orb::PaginationMetadata)) }
        attr_reader :pagination_metadata

        sig do
          params(
            pagination_metadata: T.nilable(Orb::PaginationMetadata::OrHash)
          ).void
        end
        attr_writer :pagination_metadata

        sig do
          params(
            data:
              T::Array[
                Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::OrHash
              ],
            pagination_metadata: T.nilable(Orb::PaginationMetadata::OrHash)
          ).returns(T.attached_class)
        end
        def self.new(data:, pagination_metadata: nil)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[
                  Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data
                ],
              pagination_metadata: T.nilable(Orb::PaginationMetadata)
            }
          )
        end
        def to_hash
        end

        class Data < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data,
                Orb::Internal::AnyHash
              )
            end

          sig do
            returns(
              Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::BillableMetric
            )
          end
          attr_reader :billable_metric

          sig do
            params(
              billable_metric:
                Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::BillableMetric::OrHash
            ).void
          end
          attr_writer :billable_metric

          sig do
            returns(
              Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::MetricGroup
            )
          end
          attr_reader :metric_group

          sig do
            params(
              metric_group:
                Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::MetricGroup::OrHash
            ).void
          end
          attr_writer :metric_group

          sig do
            returns(
              T::Array[
                Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::Usage
              ]
            )
          end
          attr_accessor :usage

          sig do
            returns(
              Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::ViewMode::TaggedSymbol
            )
          end
          attr_accessor :view_mode

          sig do
            params(
              billable_metric:
                Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::BillableMetric::OrHash,
              metric_group:
                Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::MetricGroup::OrHash,
              usage:
                T::Array[
                  Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::Usage::OrHash
                ],
              view_mode:
                Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::ViewMode::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(billable_metric:, metric_group:, usage:, view_mode:)
          end

          sig do
            override.returns(
              {
                billable_metric:
                  Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::BillableMetric,
                metric_group:
                  Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::MetricGroup,
                usage:
                  T::Array[
                    Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::Usage
                  ],
                view_mode:
                  Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::ViewMode::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          class BillableMetric < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::BillableMetric,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(String) }
            attr_accessor :name

            sig { params(id: String, name: String).returns(T.attached_class) }
            def self.new(id:, name:)
            end

            sig { override.returns({ id: String, name: String }) }
            def to_hash
            end
          end

          class MetricGroup < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::MetricGroup,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :property_key

            sig { returns(String) }
            attr_accessor :property_value

            sig do
              params(property_key: String, property_value: String).returns(
                T.attached_class
              )
            end
            def self.new(property_key:, property_value:)
            end

            sig do
              override.returns({ property_key: String, property_value: String })
            end
            def to_hash
            end
          end

          class Usage < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::Usage,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(Float) }
            attr_accessor :quantity

            sig { returns(Time) }
            attr_accessor :timeframe_end

            sig { returns(Time) }
            attr_accessor :timeframe_start

            sig do
              params(
                quantity: Float,
                timeframe_end: Time,
                timeframe_start: Time
              ).returns(T.attached_class)
            end
            def self.new(quantity:, timeframe_end:, timeframe_start:)
            end

            sig do
              override.returns(
                { quantity: Float, timeframe_end: Time, timeframe_start: Time }
              )
            end
            def to_hash
            end
          end

          module ViewMode
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::ViewMode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PERIODIC =
              T.let(
                :periodic,
                Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::ViewMode::TaggedSymbol
              )
            CUMULATIVE =
              T.let(
                :cumulative,
                Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::ViewMode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::SubscriptionUsage::GroupedSubscriptionUsage::Data::ViewMode::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      sig { override.returns(T::Array[Orb::SubscriptionUsage::Variants]) }
      def self.variants
      end
    end
  end
end
