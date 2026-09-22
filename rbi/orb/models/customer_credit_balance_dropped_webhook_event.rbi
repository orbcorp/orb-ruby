# typed: strong

module Orb
  module Models
    class CustomerCreditBalanceDroppedWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::CustomerCreditBalanceDroppedWebhookEvent,
            Orb::Internal::AnyHash
          )
        end

      # The ID of this webhook event.
      sig { returns(String) }
      attr_accessor :id

      # The time at which this event was created, to the second.
      sig { returns(Time) }
      attr_accessor :created_at

      # A customer is a buyer of your products, and the other party to the billing
      # relationship.
      #
      # In Orb, customers are assigned system generated identifiers automatically, but
      # it's often desirable to have these match existing identifiers in your system. To
      # avoid having to denormalize Orb ID information, you can pass in an
      # `external_customer_id` with your own identifier. See
      # [Customer ID Aliases](/events-and-metrics/customer-aliases) for further
      # information about how these aliases work in Orb.
      #
      # In addition to having an identifier in your system, a customer may exist in a
      # payment provider solution like Stripe. Use the `payment_provider_id` and the
      # `payment_provider` enum field to express this mapping.
      #
      # A customer also has a timezone (from the standard
      # [IANA timezone database](https://www.iana.org/time-zones)), which defaults to
      # your account's timezone. See [Timezone localization](/essentials/timezones) for
      # information on what this timezone parameter influences within Orb.
      sig { returns(Orb::Customer) }
      attr_reader :customer

      sig { params(customer: Orb::Customer::OrHash).void }
      attr_writer :customer

      sig { returns(Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties) }
      attr_reader :properties

      sig do
        params(
          properties:
            Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::OrHash
        ).void
      end
      attr_writer :properties

      # The event this payload describes.
      sig do
        returns(
          Orb::CustomerCreditBalanceDroppedWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # Issued when a customer's prepaid credits balance is depleted to a configured
      # threshold.
      sig do
        params(
          id: String,
          created_at: Time,
          customer: Orb::Customer::OrHash,
          properties:
            Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::OrHash,
          type: Orb::CustomerCreditBalanceDroppedWebhookEvent::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of this webhook event.
        id:,
        # The time at which this event was created, to the second.
        created_at:,
        # A customer is a buyer of your products, and the other party to the billing
        # relationship.
        #
        # In Orb, customers are assigned system generated identifiers automatically, but
        # it's often desirable to have these match existing identifiers in your system. To
        # avoid having to denormalize Orb ID information, you can pass in an
        # `external_customer_id` with your own identifier. See
        # [Customer ID Aliases](/events-and-metrics/customer-aliases) for further
        # information about how these aliases work in Orb.
        #
        # In addition to having an identifier in your system, a customer may exist in a
        # payment provider solution like Stripe. Use the `payment_provider_id` and the
        # `payment_provider` enum field to express this mapping.
        #
        # A customer also has a timezone (from the standard
        # [IANA timezone database](https://www.iana.org/time-zones)), which defaults to
        # your account's timezone. See [Timezone localization](/essentials/timezones) for
        # information on what this timezone parameter influences within Orb.
        customer:,
        properties:,
        # The event this payload describes.
        type:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            customer: Orb::Customer,
            properties:
              Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties,
            type:
              Orb::CustomerCreditBalanceDroppedWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Properties < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties,
              Orb::Internal::AnyHash
            )
          end

        # [Alerts within Orb](/product-catalog/configuring-alerts) monitor spending,
        # usage, or credit balance and trigger webhooks when a threshold is exceeded.
        #
        # Alerts created through the API can be scoped to either customers or
        # subscriptions.
        sig do
          returns(
            Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration
          )
        end
        attr_reader :alert_configuration

        sig do
          params(
            alert_configuration:
              Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::OrHash
          ).void
        end
        attr_writer :alert_configuration

        sig { returns(String) }
        attr_accessor :balance_threshold

        # A currency or custom credit unit, as embedded in webhook payloads.
        sig do
          returns(
            T.nilable(
              Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::PricingUnit
            )
          )
        end
        attr_reader :pricing_unit

        sig do
          params(
            pricing_unit:
              T.nilable(
                Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::PricingUnit::OrHash
              )
          ).void
        end
        attr_writer :pricing_unit

        sig do
          params(
            alert_configuration:
              Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::OrHash,
            balance_threshold: String,
            pricing_unit:
              T.nilable(
                Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::PricingUnit::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # [Alerts within Orb](/product-catalog/configuring-alerts) monitor spending,
          # usage, or credit balance and trigger webhooks when a threshold is exceeded.
          #
          # Alerts created through the API can be scoped to either customers or
          # subscriptions.
          alert_configuration:,
          balance_threshold:,
          # A currency or custom credit unit, as embedded in webhook payloads.
          pricing_unit:
        )
        end

        sig do
          override.returns(
            {
              alert_configuration:
                Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration,
              balance_threshold: String,
              pricing_unit:
                T.nilable(
                  Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::PricingUnit
                )
            }
          )
        end
        def to_hash
        end

        class AlertConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration,
                Orb::Internal::AnyHash
              )
            end

          # Also referred to as alert_id in this documentation.
          sig { returns(String) }
          attr_accessor :id

          # The creation time of the resource in Orb.
          sig { returns(Time) }
          attr_accessor :created_at

          # The name of the currency the credit balance or invoice cost is denominated in.
          sig { returns(T.nilable(String)) }
          attr_accessor :currency

          # The customer the alert applies to.
          sig { returns(T.nilable(Orb::CustomerMinified)) }
          attr_reader :customer

          sig do
            params(customer: T.nilable(Orb::CustomerMinified::OrHash)).void
          end
          attr_writer :customer

          # Whether the alert is enabled or disabled.
          sig { returns(T::Boolean) }
          attr_accessor :enabled

          # The metric the alert applies to.
          sig do
            returns(
              T.nilable(
                Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Metric
              )
            )
          end
          attr_reader :metric

          sig do
            params(
              metric:
                T.nilable(
                  Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Metric::OrHash
                )
            ).void
          end
          attr_writer :metric

          # The plan the alert applies to.
          sig do
            returns(
              T.nilable(
                Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Plan
              )
            )
          end
          attr_reader :plan

          sig do
            params(
              plan:
                T.nilable(
                  Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Plan::OrHash
                )
            ).void
          end
          attr_writer :plan

          # The subscription the alert applies to.
          sig { returns(T.nilable(Orb::SubscriptionMinified)) }
          attr_reader :subscription

          sig do
            params(
              subscription: T.nilable(Orb::SubscriptionMinified::OrHash)
            ).void
          end
          attr_writer :subscription

          # The thresholds that define the conditions under which the alert will be
          # triggered.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Threshold
                ]
              )
            )
          end
          attr_accessor :thresholds

          # The type of alert. This must be a valid alert type.
          sig do
            returns(
              Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          # The current status of the alert. This field is only present for credit balance
          # alerts.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::BalanceAlertStatus
                ]
              )
            )
          end
          attr_accessor :balance_alert_status

          # The property keys to group cost alerts by. Only present for cost alerts with
          # grouping enabled.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :grouping_keys

          # Minified license type for alert serialization.
          sig do
            returns(
              T.nilable(
                Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::LicenseType
              )
            )
          end
          attr_reader :license_type

          sig do
            params(
              license_type:
                T.nilable(
                  Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::LicenseType::OrHash
                )
            ).void
          end
          attr_writer :license_type

          # Filters scoping which prices are included in spend and grouped cost alert
          # evaluation. Alerts use the price_id, item_id, and price_type fields only; the
          # alert's pricing unit is reported by currency.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::PriceFilter
                ]
              )
            )
          end
          attr_accessor :price_filters

          # Per-group threshold overrides. Each override maps a specific combination of
          # grouping_keys values to a replacement threshold list. Only present for grouped
          # cost alerts that have at least one override.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::ThresholdOverride
                ]
              )
            )
          end
          attr_accessor :threshold_overrides

          # [Alerts within Orb](/product-catalog/configuring-alerts) monitor spending,
          # usage, or credit balance and trigger webhooks when a threshold is exceeded.
          #
          # Alerts created through the API can be scoped to either customers or
          # subscriptions.
          sig do
            params(
              id: String,
              created_at: Time,
              currency: T.nilable(String),
              customer: T.nilable(Orb::CustomerMinified::OrHash),
              enabled: T::Boolean,
              metric:
                T.nilable(
                  Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Metric::OrHash
                ),
              plan:
                T.nilable(
                  Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Plan::OrHash
                ),
              subscription: T.nilable(Orb::SubscriptionMinified::OrHash),
              thresholds:
                T.nilable(
                  T::Array[
                    Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Threshold::OrHash
                  ]
                ),
              type:
                Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Type::OrSymbol,
              balance_alert_status:
                T.nilable(
                  T::Array[
                    Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::BalanceAlertStatus::OrHash
                  ]
                ),
              grouping_keys: T.nilable(T::Array[String]),
              license_type:
                T.nilable(
                  Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::LicenseType::OrHash
                ),
              price_filters:
                T.nilable(
                  T::Array[
                    Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::PriceFilter::OrHash
                  ]
                ),
              threshold_overrides:
                T.nilable(
                  T::Array[
                    Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::ThresholdOverride::OrHash
                  ]
                )
            ).returns(T.attached_class)
          end
          def self.new(
            # Also referred to as alert_id in this documentation.
            id:,
            # The creation time of the resource in Orb.
            created_at:,
            # The name of the currency the credit balance or invoice cost is denominated in.
            currency:,
            # The customer the alert applies to.
            customer:,
            # Whether the alert is enabled or disabled.
            enabled:,
            # The metric the alert applies to.
            metric:,
            # The plan the alert applies to.
            plan:,
            # The subscription the alert applies to.
            subscription:,
            # The thresholds that define the conditions under which the alert will be
            # triggered.
            thresholds:,
            # The type of alert. This must be a valid alert type.
            type:,
            # The current status of the alert. This field is only present for credit balance
            # alerts.
            balance_alert_status: nil,
            # The property keys to group cost alerts by. Only present for cost alerts with
            # grouping enabled.
            grouping_keys: nil,
            # Minified license type for alert serialization.
            license_type: nil,
            # Filters scoping which prices are included in spend and grouped cost alert
            # evaluation. Alerts use the price_id, item_id, and price_type fields only; the
            # alert's pricing unit is reported by currency.
            price_filters: nil,
            # Per-group threshold overrides. Each override maps a specific combination of
            # grouping_keys values to a replacement threshold list. Only present for grouped
            # cost alerts that have at least one override.
            threshold_overrides: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                created_at: Time,
                currency: T.nilable(String),
                customer: T.nilable(Orb::CustomerMinified),
                enabled: T::Boolean,
                metric:
                  T.nilable(
                    Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Metric
                  ),
                plan:
                  T.nilable(
                    Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Plan
                  ),
                subscription: T.nilable(Orb::SubscriptionMinified),
                thresholds:
                  T.nilable(
                    T::Array[
                      Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Threshold
                    ]
                  ),
                type:
                  Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Type::TaggedSymbol,
                balance_alert_status:
                  T.nilable(
                    T::Array[
                      Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::BalanceAlertStatus
                    ]
                  ),
                grouping_keys: T.nilable(T::Array[String]),
                license_type:
                  T.nilable(
                    Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::LicenseType
                  ),
                price_filters:
                  T.nilable(
                    T::Array[
                      Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::PriceFilter
                    ]
                  ),
                threshold_overrides:
                  T.nilable(
                    T::Array[
                      Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::ThresholdOverride
                    ]
                  )
              }
            )
          end
          def to_hash
          end

          class Metric < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Metric,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            # The metric the alert applies to.
            sig { params(id: String).returns(T.attached_class) }
            def self.new(id:)
            end

            sig { override.returns({ id: String }) }
            def to_hash
            end
          end

          class Plan < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Plan,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_accessor :id

            # An optional user-defined ID for this plan resource, used throughout the system
            # as an alias for this Plan. Use this field to identify a plan by an existing
            # identifier in your system.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_plan_id

            sig { returns(T.nilable(String)) }
            attr_accessor :name

            sig { returns(String) }
            attr_accessor :plan_version

            # The plan the alert applies to.
            sig do
              params(
                id: T.nilable(String),
                external_plan_id: T.nilable(String),
                name: T.nilable(String),
                plan_version: String
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              # An optional user-defined ID for this plan resource, used throughout the system
              # as an alias for this Plan. Use this field to identify a plan by an existing
              # identifier in your system.
              external_plan_id:,
              name:,
              plan_version:
            )
            end

            sig do
              override.returns(
                {
                  id: T.nilable(String),
                  external_plan_id: T.nilable(String),
                  name: T.nilable(String),
                  plan_version: String
                }
              )
            end
            def to_hash
            end
          end

          class Threshold < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Threshold,
                  Orb::Internal::AnyHash
                )
              end

            # The value at which an alert will fire. For credit balance alerts, the alert will
            # fire at or below this value. For usage and cost alerts, the alert will fire at
            # or above this value.
            sig { returns(String) }
            attr_accessor :value

            # Thresholds are used to define the conditions under which an alert will be
            # triggered.
            sig { params(value: String).returns(T.attached_class) }
            def self.new(
              # The value at which an alert will fire. For credit balance alerts, the alert will
              # fire at or below this value. For usage and cost alerts, the alert will fire at
              # or above this value.
              value:
            )
            end

            sig { override.returns({ value: String }) }
            def to_hash
            end
          end

          # The type of alert. This must be a valid alert type.
          module Type
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREDIT_BALANCE_DEPLETED =
              T.let(
                :credit_balance_depleted,
                Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Type::TaggedSymbol
              )
            CREDIT_BALANCE_DROPPED =
              T.let(
                :credit_balance_dropped,
                Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Type::TaggedSymbol
              )
            CREDIT_BALANCE_RECOVERED =
              T.let(
                :credit_balance_recovered,
                Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Type::TaggedSymbol
              )
            USAGE_EXCEEDED =
              T.let(
                :usage_exceeded,
                Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Type::TaggedSymbol
              )
            COST_EXCEEDED =
              T.let(
                :cost_exceeded,
                Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Type::TaggedSymbol
              )
            SPEND_EXCEEDED =
              T.let(
                :spend_exceeded,
                Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Type::TaggedSymbol
              )
            LICENSE_BALANCE_THRESHOLD_REACHED =
              T.let(
                :license_balance_threshold_reached,
                Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class BalanceAlertStatus < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::BalanceAlertStatus,
                  Orb::Internal::AnyHash
                )
              end

            # Whether the alert is currently in-alert or not.
            sig { returns(T::Boolean) }
            attr_accessor :in_alert

            # The value of the threshold that defines the alert status.
            sig { returns(String) }
            attr_accessor :threshold_value

            # Alert status is used to determine if an alert is currently in-alert or not.
            sig do
              params(in_alert: T::Boolean, threshold_value: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # Whether the alert is currently in-alert or not.
              in_alert:,
              # The value of the threshold that defines the alert status.
              threshold_value:
            )
            end

            sig do
              override.returns(
                { in_alert: T::Boolean, threshold_value: String }
              )
            end
            def to_hash
            end
          end

          class LicenseType < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::LicenseType,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            # Minified license type for alert serialization.
            sig { params(id: String).returns(T.attached_class) }
            def self.new(id:)
            end

            sig { override.returns({ id: String }) }
            def to_hash
            end
          end

          class PriceFilter < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::PriceFilter,
                  Orb::Internal::AnyHash
                )
              end

            # The property of the price to filter on.
            sig do
              returns(
                Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::PriceFilter::Field::TaggedSymbol
              )
            end
            attr_accessor :field

            # Should prices that match the filter be included or excluded.
            sig do
              returns(
                Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::PriceFilter::Operator::TaggedSymbol
              )
            end
            attr_accessor :operator

            # The IDs or values that match this filter.
            sig { returns(T::Array[String]) }
            attr_accessor :values

            sig do
              params(
                field:
                  Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::PriceFilter::Field::OrSymbol,
                operator:
                  Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::PriceFilter::Operator::OrSymbol,
                values: T::Array[String]
              ).returns(T.attached_class)
            end
            def self.new(
              # The property of the price to filter on.
              field:,
              # Should prices that match the filter be included or excluded.
              operator:,
              # The IDs or values that match this filter.
              values:
            )
            end

            sig do
              override.returns(
                {
                  field:
                    Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::PriceFilter::Field::TaggedSymbol,
                  operator:
                    Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::PriceFilter::Operator::TaggedSymbol,
                  values: T::Array[String]
                }
              )
            end
            def to_hash
            end

            # The property of the price to filter on.
            module Field
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::PriceFilter::Field
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PRICE_ID =
                T.let(
                  :price_id,
                  Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::PriceFilter::Field::TaggedSymbol
                )
              ITEM_ID =
                T.let(
                  :item_id,
                  Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::PriceFilter::Field::TaggedSymbol
                )
              PRICE_TYPE =
                T.let(
                  :price_type,
                  Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::PriceFilter::Field::TaggedSymbol
                )
              CURRENCY =
                T.let(
                  :currency,
                  Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::PriceFilter::Field::TaggedSymbol
                )
              PRICING_UNIT_ID =
                T.let(
                  :pricing_unit_id,
                  Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::PriceFilter::Field::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::PriceFilter::Field::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Should prices that match the filter be included or excluded.
            module Operator
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::PriceFilter::Operator
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INCLUDES =
                T.let(
                  :includes,
                  Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::PriceFilter::Operator::TaggedSymbol
                )
              EXCLUDES =
                T.let(
                  :excludes,
                  Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::PriceFilter::Operator::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::PriceFilter::Operator::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class ThresholdOverride < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::ThresholdOverride,
                  Orb::Internal::AnyHash
                )
              end

            # The values identifying this group, ordered to match group_keys when set and the
            # alert's grouping_keys otherwise.
            sig { returns(T::Array[String]) }
            attr_accessor :group_values

            # The thresholds applied to this group. An empty list means the group is silenced.
            sig do
              returns(
                T::Array[
                  Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::ThresholdOverride::Threshold
                ]
              )
            end
            attr_accessor :thresholds

            # The subset of the alert's grouping_keys this override binds. Null when the
            # override targets one exact group across every grouping key.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :group_keys

            # A per-group threshold override on a grouped cost alert.
            #
            # An empty `thresholds` list means the group is silenced (never fires). A
            # non-empty list fully replaces the default thresholds for that group.
            sig do
              params(
                group_values: T::Array[String],
                thresholds:
                  T::Array[
                    Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::ThresholdOverride::Threshold::OrHash
                  ],
                group_keys: T.nilable(T::Array[String])
              ).returns(T.attached_class)
            end
            def self.new(
              # The values identifying this group, ordered to match group_keys when set and the
              # alert's grouping_keys otherwise.
              group_values:,
              # The thresholds applied to this group. An empty list means the group is silenced.
              thresholds:,
              # The subset of the alert's grouping_keys this override binds. Null when the
              # override targets one exact group across every grouping key.
              group_keys: nil
            )
            end

            sig do
              override.returns(
                {
                  group_values: T::Array[String],
                  thresholds:
                    T::Array[
                      Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::ThresholdOverride::Threshold
                    ],
                  group_keys: T.nilable(T::Array[String])
                }
              )
            end
            def to_hash
            end

            class Threshold < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::ThresholdOverride::Threshold,
                    Orb::Internal::AnyHash
                  )
                end

              # The value at which an alert will fire. For credit balance alerts, the alert will
              # fire at or below this value. For usage and cost alerts, the alert will fire at
              # or above this value.
              sig { returns(String) }
              attr_accessor :value

              # Thresholds are used to define the conditions under which an alert will be
              # triggered.
              sig { params(value: String).returns(T.attached_class) }
              def self.new(
                # The value at which an alert will fire. For credit balance alerts, the alert will
                # fire at or below this value. For usage and cost alerts, the alert will fire at
                # or above this value.
                value:
              )
              end

              sig { override.returns({ value: String }) }
              def to_hash
              end
            end
          end
        end

        class PricingUnit < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::PricingUnit,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(T.nilable(String)) }
          attr_accessor :display_name

          sig { returns(String) }
          attr_accessor :name

          sig { returns(T.nilable(String)) }
          attr_accessor :symbol

          # A currency or custom credit unit, as embedded in webhook payloads.
          sig do
            params(
              id: String,
              display_name: T.nilable(String),
              name: String,
              symbol: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(id:, display_name:, name:, symbol:)
          end

          sig do
            override.returns(
              {
                id: String,
                display_name: T.nilable(String),
                name: String,
                symbol: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end
      end

      # The event this payload describes.
      module Type
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::CustomerCreditBalanceDroppedWebhookEvent::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CUSTOMER_CREDIT_BALANCE_DROPPED =
          T.let(
            :"customer.credit_balance_dropped",
            Orb::CustomerCreditBalanceDroppedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::CustomerCreditBalanceDroppedWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
