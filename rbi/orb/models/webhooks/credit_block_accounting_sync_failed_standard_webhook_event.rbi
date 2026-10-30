# typed: strong

module Orb
  module Models
    module Webhooks
      class CreditBlockAccountingSyncFailedStandardWebhookEvent < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent,
              Orb::Internal::AnyHash
            )
          end

        # The ID of this webhook event.
        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(
            Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord
          )
        end
        attr_reader :accounting_sync_record

        sig do
          params(
            accounting_sync_record:
              Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::OrHash
          ).void
        end
        attr_writer :accounting_sync_record

        # The Credit Block resource models prepaid credits within Orb.
        sig do
          returns(
            Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block
          )
        end
        attr_reader :block

        sig do
          params(
            block:
              Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::OrHash
          ).void
        end
        attr_writer :block

        # The time at which this event was created, to the second.
        sig { returns(Time) }
        attr_accessor :created_at

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        sig do
          returns(
            Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::PayloadStyle::TaggedSymbol
          )
        end
        attr_accessor :payload_style

        sig do
          returns(
            Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Properties
          )
        end
        attr_reader :properties

        sig do
          params(
            properties:
              Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Properties::OrHash
          ).void
        end
        attr_writer :properties

        # The event this payload describes.
        sig do
          returns(
            Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # Issued when a credit block accounting sync fails.
        sig do
          params(
            id: String,
            accounting_sync_record:
              Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::OrHash,
            block:
              Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::OrHash,
            created_at: Time,
            payload_style:
              Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::PayloadStyle::OrSymbol,
            properties:
              Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Properties::OrHash,
            type:
              Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of this webhook event.
          id:,
          accounting_sync_record:,
          # The Credit Block resource models prepaid credits within Orb.
          block:,
          # The time at which this event was created, to the second.
          created_at:,
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
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord,
              block:
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block,
              created_at: Time,
              payload_style:
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::PayloadStyle::TaggedSymbol,
              properties:
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Properties,
              type:
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class AccountingSyncRecord < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :customer_id

          sig do
            returns(
              Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          end
          attr_accessor :record_type

          sig { returns(T.nilable(String)) }
          attr_accessor :block_id

          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_accessor :error_details

          sig { returns(T.nilable(String)) }
          attr_accessor :invoice_id

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
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::OrSymbol,
              block_id: T.nilable(String),
              error_details: T.nilable(T::Hash[Symbol, T.anything]),
              invoice_id: T.nilable(String),
              provider_customer_id: T.nilable(String),
              status: T.nilable(String),
              sync_action: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            customer_id:,
            record_type:,
            block_id: nil,
            error_details: nil,
            invoice_id: nil,
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
                  Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol,
                block_id: T.nilable(String),
                error_details: T.nilable(T::Hash[Symbol, T.anything]),
                invoice_id: T.nilable(String),
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
                  Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CUSTOMER =
              T.let(
                :customer,
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            INVOICE =
              T.let(
                :invoice,
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            TRANSACTION =
              T.let(
                :transaction,
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            CUSTOMER_BALANCE_TRANSACTION =
              T.let(
                :customer_balance_transaction,
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            CREDIT_NOTE =
              T.let(
                :credit_note,
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            SUBSCRIPTION =
              T.let(
                :subscription,
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            SALES_ORDER =
              T.let(
                :sales_order,
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            BLOCK =
              T.let(
                :block,
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Block < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :balance

          # How this credit block was created: `allocation` (a subscription's recurring
          # credit allocation), `top_up` (an automatic balance-threshold top-up),
          # `commitment` (a subscription commitment true-up rolled forward as credit), or
          # `manual` (a manual credit ledger increment, including credits voided or expired
          # off another block).
          sig do
            returns(
              Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditBlockSource::TaggedSymbol
            )
          end
          attr_accessor :credit_block_source

          sig { returns(T.nilable(Time)) }
          attr_accessor :effective_date

          sig { returns(T.nilable(Time)) }
          attr_accessor :expiry_date

          sig do
            returns(
              T::Array[
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::Filter
              ]
            )
          end
          attr_accessor :filters

          sig { returns(T.nilable(String)) }
          attr_accessor :maximum_initial_balance

          # User specified key-value pairs for the resource. If not present, this defaults
          # to an empty dictionary. Individual keys can be removed by setting the value to
          # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          # `null`.
          sig { returns(T::Hash[Symbol, String]) }
          attr_accessor :metadata

          sig { returns(T.nilable(String)) }
          attr_accessor :per_unit_cost_basis

          # `void` means the credit block was deleted. A voided block's `balance` is
          # always 0.
          sig do
            returns(
              Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # The credit allocation that funded a block. Extends the allocation resource
          # serialized on prices with the catalog-item attribution of the funding price.
          sig do
            returns(
              T.nilable(
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditAllocation
              )
            )
          end
          attr_reader :credit_allocation

          sig do
            params(
              credit_allocation:
                T.nilable(
                  Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditAllocation::OrHash
                )
            ).void
          end
          attr_writer :credit_allocation

          # The subscription commitment whose true-up rolled forward into this credit block.
          # Present only when `credit_block_source` is `commitment`.
          sig do
            returns(
              T.nilable(
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditCommitment
              )
            )
          end
          attr_reader :credit_commitment

          sig do
            params(
              credit_commitment:
                T.nilable(
                  Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditCommitment::OrHash
                )
            ).void
          end
          attr_writer :credit_commitment

          # The Credit Block resource models prepaid credits within Orb.
          sig do
            params(
              id: String,
              balance: String,
              credit_block_source:
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditBlockSource::OrSymbol,
              effective_date: T.nilable(Time),
              expiry_date: T.nilable(Time),
              filters:
                T::Array[
                  Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::Filter::OrHash
                ],
              maximum_initial_balance: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              per_unit_cost_basis: T.nilable(String),
              status:
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::Status::OrSymbol,
              credit_allocation:
                T.nilable(
                  Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditAllocation::OrHash
                ),
              credit_commitment:
                T.nilable(
                  Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditCommitment::OrHash
                )
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            balance:,
            # How this credit block was created: `allocation` (a subscription's recurring
            # credit allocation), `top_up` (an automatic balance-threshold top-up),
            # `commitment` (a subscription commitment true-up rolled forward as credit), or
            # `manual` (a manual credit ledger increment, including credits voided or expired
            # off another block).
            credit_block_source:,
            effective_date:,
            expiry_date:,
            filters:,
            maximum_initial_balance:,
            # User specified key-value pairs for the resource. If not present, this defaults
            # to an empty dictionary. Individual keys can be removed by setting the value to
            # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
            # `null`.
            metadata:,
            per_unit_cost_basis:,
            # `void` means the credit block was deleted. A voided block's `balance` is
            # always 0.
            status:,
            # The credit allocation that funded a block. Extends the allocation resource
            # serialized on prices with the catalog-item attribution of the funding price.
            credit_allocation: nil,
            # The subscription commitment whose true-up rolled forward into this credit block.
            # Present only when `credit_block_source` is `commitment`.
            credit_commitment: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                balance: String,
                credit_block_source:
                  Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditBlockSource::TaggedSymbol,
                effective_date: T.nilable(Time),
                expiry_date: T.nilable(Time),
                filters:
                  T::Array[
                    Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::Filter
                  ],
                maximum_initial_balance: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                per_unit_cost_basis: T.nilable(String),
                status:
                  Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::Status::TaggedSymbol,
                credit_allocation:
                  T.nilable(
                    Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditAllocation
                  ),
                credit_commitment:
                  T.nilable(
                    Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditCommitment
                  )
              }
            )
          end
          def to_hash
          end

          # How this credit block was created: `allocation` (a subscription's recurring
          # credit allocation), `top_up` (an automatic balance-threshold top-up),
          # `commitment` (a subscription commitment true-up rolled forward as credit), or
          # `manual` (a manual credit ledger increment, including credits voided or expired
          # off another block).
          module CreditBlockSource
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditBlockSource
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ALLOCATION =
              T.let(
                :allocation,
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditBlockSource::TaggedSymbol
              )
            TOP_UP =
              T.let(
                :top_up,
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditBlockSource::TaggedSymbol
              )
            COMMITMENT =
              T.let(
                :commitment,
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditBlockSource::TaggedSymbol
              )
            MANUAL =
              T.let(
                :manual,
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditBlockSource::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditBlockSource::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Filter < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::Filter,
                  Orb::Internal::AnyHash
                )
              end

            # The property of the price to filter on.
            sig do
              returns(
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::Filter::Field::TaggedSymbol
              )
            end
            attr_accessor :field

            # Should prices that match the filter be included or excluded.
            sig do
              returns(
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::Filter::Operator::TaggedSymbol
              )
            end
            attr_accessor :operator

            # The IDs or values that match this filter.
            sig { returns(T::Array[String]) }
            attr_accessor :values

            sig do
              params(
                field:
                  Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::Filter::Field::OrSymbol,
                operator:
                  Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::Filter::Operator::OrSymbol,
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
                    Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::Filter::Field::TaggedSymbol,
                  operator:
                    Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::Filter::Operator::TaggedSymbol,
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
                    Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::Filter::Field
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PRICE_ID =
                T.let(
                  :price_id,
                  Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::Filter::Field::TaggedSymbol
                )
              ITEM_ID =
                T.let(
                  :item_id,
                  Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::Filter::Field::TaggedSymbol
                )
              PRICE_TYPE =
                T.let(
                  :price_type,
                  Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::Filter::Field::TaggedSymbol
                )
              CURRENCY =
                T.let(
                  :currency,
                  Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::Filter::Field::TaggedSymbol
                )
              PRICING_UNIT_ID =
                T.let(
                  :pricing_unit_id,
                  Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::Filter::Field::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::Filter::Field::TaggedSymbol
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
                    Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::Filter::Operator
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INCLUDES =
                T.let(
                  :includes,
                  Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::Filter::Operator::TaggedSymbol
                )
              EXCLUDES =
                T.let(
                  :excludes,
                  Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::Filter::Operator::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::Filter::Operator::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          # `void` means the credit block was deleted. A voided block's `balance` is
          # always 0.
          module Status
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::Status::TaggedSymbol
              )
            PENDING_PAYMENT =
              T.let(
                :pending_payment,
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::Status::TaggedSymbol
              )
            VOID =
              T.let(
                :void,
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class CreditAllocation < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditAllocation,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(T::Boolean) }
            attr_accessor :allows_rollover

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(T.nilable(Orb::CustomExpiration)) }
            attr_reader :custom_expiration

            sig do
              params(
                custom_expiration: T.nilable(Orb::CustomExpiration::OrHash)
              ).void
            end
            attr_writer :custom_expiration

            # The ID of the catalog item this block was allocated from, derived from the
            # allocation's price.
            sig { returns(String) }
            attr_accessor :item_id

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditAllocation::Filter
                  ]
                )
              )
            end
            attr_reader :filters

            sig do
              params(
                filters:
                  T::Array[
                    Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditAllocation::Filter::OrHash
                  ]
              ).void
            end
            attr_writer :filters

            sig { returns(T.nilable(String)) }
            attr_accessor :license_type_id

            # The credit allocation that funded a block. Extends the allocation resource
            # serialized on prices with the catalog-item attribution of the funding price.
            sig do
              params(
                allows_rollover: T::Boolean,
                currency: String,
                custom_expiration: T.nilable(Orb::CustomExpiration::OrHash),
                item_id: String,
                filters:
                  T::Array[
                    Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditAllocation::Filter::OrHash
                  ],
                license_type_id: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              allows_rollover:,
              currency:,
              custom_expiration:,
              # The ID of the catalog item this block was allocated from, derived from the
              # allocation's price.
              item_id:,
              filters: nil,
              license_type_id: nil
            )
            end

            sig do
              override.returns(
                {
                  allows_rollover: T::Boolean,
                  currency: String,
                  custom_expiration: T.nilable(Orb::CustomExpiration),
                  item_id: String,
                  filters:
                    T::Array[
                      Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditAllocation::Filter
                    ],
                  license_type_id: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            class Filter < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditAllocation::Filter,
                    Orb::Internal::AnyHash
                  )
                end

              # The property of the price to filter on.
              sig do
                returns(
                  Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditAllocation::Filter::Field::TaggedSymbol
                )
              end
              attr_accessor :field

              # Should prices that match the filter be included or excluded.
              sig do
                returns(
                  Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditAllocation::Filter::Operator::TaggedSymbol
                )
              end
              attr_accessor :operator

              # The IDs or values that match this filter.
              sig { returns(T::Array[String]) }
              attr_accessor :values

              sig do
                params(
                  field:
                    Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditAllocation::Filter::Field::OrSymbol,
                  operator:
                    Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditAllocation::Filter::Operator::OrSymbol,
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
                      Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditAllocation::Filter::Field::TaggedSymbol,
                    operator:
                      Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditAllocation::Filter::Operator::TaggedSymbol,
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
                      Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditAllocation::Filter::Field
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PRICE_ID =
                  T.let(
                    :price_id,
                    Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditAllocation::Filter::Field::TaggedSymbol
                  )
                ITEM_ID =
                  T.let(
                    :item_id,
                    Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditAllocation::Filter::Field::TaggedSymbol
                  )
                PRICE_TYPE =
                  T.let(
                    :price_type,
                    Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditAllocation::Filter::Field::TaggedSymbol
                  )
                CURRENCY =
                  T.let(
                    :currency,
                    Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditAllocation::Filter::Field::TaggedSymbol
                  )
                PRICING_UNIT_ID =
                  T.let(
                    :pricing_unit_id,
                    Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditAllocation::Filter::Field::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditAllocation::Filter::Field::TaggedSymbol
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
                      Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditAllocation::Filter::Operator
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INCLUDES =
                  T.let(
                    :includes,
                    Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditAllocation::Filter::Operator::TaggedSymbol
                  )
                EXCLUDES =
                  T.let(
                    :excludes,
                    Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditAllocation::Filter::Operator::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditAllocation::Filter::Operator::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class CreditCommitment < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Block::CreditCommitment,
                  Orb::Internal::AnyHash
                )
              end

            # The ID of the subscription commitment this block was rolled forward from.
            sig { returns(String) }
            attr_accessor :id

            # The subscription the commitment belongs to.
            sig { returns(T.nilable(String)) }
            attr_accessor :subscription_id

            # The subscription commitment whose true-up rolled forward into this credit block.
            # Present only when `credit_block_source` is `commitment`.
            sig do
              params(id: String, subscription_id: T.nilable(String)).returns(
                T.attached_class
              )
            end
            def self.new(
              # The ID of the subscription commitment this block was rolled forward from.
              id:,
              # The subscription the commitment belongs to.
              subscription_id: nil
            )
            end

            sig do
              override.returns(
                { id: String, subscription_id: T.nilable(String) }
              )
            end
            def to_hash
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
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::PayloadStyle
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXPANDED =
            T.let(
              :expanded,
              Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )
          STANDARD =
            T.let(
              :standard,
              Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::PayloadStyle::TaggedSymbol
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
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Properties,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :connection_type

          sig { returns(String) }
          attr_accessor :failure_reason

          sig do
            params(connection_type: String, failure_reason: String).returns(
              T.attached_class
            )
          end
          def self.new(connection_type:, failure_reason:)
          end

          sig do
            override.returns(
              { connection_type: String, failure_reason: String }
            )
          end
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
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREDIT_BLOCK_ACCOUNTING_SYNC_FAILED =
            T.let(
              :"credit_block.accounting_sync_failed",
              Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent::Type::TaggedSymbol
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
