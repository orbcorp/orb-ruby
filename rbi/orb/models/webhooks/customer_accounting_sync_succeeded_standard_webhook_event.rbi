# typed: strong

module Orb
  module Models
    module Webhooks
      class CustomerAccountingSyncSucceededStandardWebhookEvent < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent,
              Orb::Internal::AnyHash
            )
          end

        # The ID of this webhook event.
        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(
            Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::AccountingSyncRecord
          )
        end
        attr_reader :accounting_sync_record

        sig do
          params(
            accounting_sync_record:
              Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::AccountingSyncRecord::OrHash
          ).void
        end
        attr_writer :accounting_sync_record

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

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        sig do
          returns(
            Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::PayloadStyle::TaggedSymbol
          )
        end
        attr_accessor :payload_style

        sig do
          returns(
            Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::Properties
          )
        end
        attr_reader :properties

        sig do
          params(
            properties:
              Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::Properties::OrHash
          ).void
        end
        attr_writer :properties

        # The event this payload describes.
        sig do
          returns(
            Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # Issued when a customer accounting sync succeeds.
        sig do
          params(
            id: String,
            accounting_sync_record:
              Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::AccountingSyncRecord::OrHash,
            created_at: Time,
            customer: Orb::Customer::OrHash,
            payload_style:
              Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::PayloadStyle::OrSymbol,
            properties:
              Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::Properties::OrHash,
            type:
              Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of this webhook event.
          id:,
          accounting_sync_record:,
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
          # The serialization style this payload was rendered in, as configured on the
          # endpoint.
          payload_style:,
          properties:,
          # The event this payload describes.
          type:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              accounting_sync_record:
                Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::AccountingSyncRecord,
              created_at: Time,
              customer: Orb::Customer,
              payload_style:
                Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::PayloadStyle::TaggedSymbol,
              properties:
                Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::Properties,
              type:
                Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class AccountingSyncRecord < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::AccountingSyncRecord,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :customer_id

          sig do
            returns(
              Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          end
          attr_accessor :record_type

          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_accessor :error_details

          sig { returns(T.nilable(String)) }
          attr_accessor :provider_customer_id

          sig { returns(T.nilable(String)) }
          attr_accessor :status

          sig { returns(T.nilable(String)) }
          attr_accessor :sync_action

          sig do
            params(
              id: String,
              customer_id: String,
              record_type:
                Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::AccountingSyncRecord::RecordType::OrSymbol,
              error_details: T.nilable(T::Hash[Symbol, T.anything]),
              provider_customer_id: T.nilable(String),
              status: T.nilable(String),
              sync_action: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            customer_id:,
            record_type:,
            error_details: nil,
            provider_customer_id: nil,
            status: nil,
            sync_action: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                customer_id: String,
                record_type:
                  Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol,
                error_details: T.nilable(T::Hash[Symbol, T.anything]),
                provider_customer_id: T.nilable(String),
                status: T.nilable(String),
                sync_action: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          module RecordType
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::AccountingSyncRecord::RecordType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CUSTOMER =
              T.let(
                :customer,
                Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            INVOICE =
              T.let(
                :invoice,
                Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            TRANSACTION =
              T.let(
                :transaction,
                Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            CUSTOMER_BALANCE_TRANSACTION =
              T.let(
                :customer_balance_transaction,
                Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            CREDIT_NOTE =
              T.let(
                :credit_note,
                Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            SUBSCRIPTION =
              T.let(
                :subscription,
                Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            SALES_ORDER =
              T.let(
                :sales_order,
                Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            BLOCK =
              T.let(
                :block,
                Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        module PayloadStyle
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::PayloadStyle
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXPANDED =
            T.let(
              :expanded,
              Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )
          STANDARD =
            T.let(
              :standard,
              Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::PayloadStyle::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Properties < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::Properties,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :connection_type

          sig { params(connection_type: String).returns(T.attached_class) }
          def self.new(connection_type:)
          end

          sig { override.returns({ connection_type: String }) }
          def to_hash
          end
        end

        # The event this payload describes.
        module Type
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CUSTOMER_ACCOUNTING_SYNC_SUCCEEDED =
            T.let(
              :"customer.accounting_sync_succeeded",
              Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
