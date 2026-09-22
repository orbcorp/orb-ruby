# typed: strong

module Orb
  module Models
    class CreditBlockAccountingSyncFailedWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::CreditBlockAccountingSyncFailedWebhookEvent,
            Orb::Internal::AnyHash
          )
        end

      # The ID of this webhook event.
      sig { returns(String) }
      attr_accessor :id

      sig do
        returns(
          Orb::CreditBlockAccountingSyncFailedWebhookEvent::AccountingSyncRecord
        )
      end
      attr_reader :accounting_sync_record

      sig do
        params(
          accounting_sync_record:
            Orb::CreditBlockAccountingSyncFailedWebhookEvent::AccountingSyncRecord::OrHash
        ).void
      end
      attr_writer :accounting_sync_record

      # The Credit Block resource models prepaid credits within Orb.
      sig { returns(Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block) }
      attr_reader :block

      sig do
        params(
          block: Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::OrHash
        ).void
      end
      attr_writer :block

      # The time at which this event was created, to the second.
      sig { returns(Time) }
      attr_accessor :created_at

      sig do
        returns(Orb::CreditBlockAccountingSyncFailedWebhookEvent::Properties)
      end
      attr_reader :properties

      sig do
        params(
          properties:
            Orb::CreditBlockAccountingSyncFailedWebhookEvent::Properties::OrHash
        ).void
      end
      attr_writer :properties

      # The event this payload describes.
      sig do
        returns(
          Orb::CreditBlockAccountingSyncFailedWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # Issued when a credit block accounting sync fails.
      sig do
        params(
          id: String,
          accounting_sync_record:
            Orb::CreditBlockAccountingSyncFailedWebhookEvent::AccountingSyncRecord::OrHash,
          block:
            Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::OrHash,
          created_at: Time,
          properties:
            Orb::CreditBlockAccountingSyncFailedWebhookEvent::Properties::OrHash,
          type: Orb::CreditBlockAccountingSyncFailedWebhookEvent::Type::OrSymbol
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
              Orb::CreditBlockAccountingSyncFailedWebhookEvent::AccountingSyncRecord,
            block: Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block,
            created_at: Time,
            properties:
              Orb::CreditBlockAccountingSyncFailedWebhookEvent::Properties,
            type:
              Orb::CreditBlockAccountingSyncFailedWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class AccountingSyncRecord < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::CreditBlockAccountingSyncFailedWebhookEvent::AccountingSyncRecord,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :customer_id

        sig do
          returns(
            Orb::CreditBlockAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
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
              Orb::CreditBlockAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::OrSymbol,
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
                Orb::CreditBlockAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol,
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
                Orb::CreditBlockAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CUSTOMER =
            T.let(
              :customer,
              Orb::CreditBlockAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          INVOICE =
            T.let(
              :invoice,
              Orb::CreditBlockAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          TRANSACTION =
            T.let(
              :transaction,
              Orb::CreditBlockAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          CUSTOMER_BALANCE_TRANSACTION =
            T.let(
              :customer_balance_transaction,
              Orb::CreditBlockAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          CREDIT_NOTE =
            T.let(
              :credit_note,
              Orb::CreditBlockAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          SUBSCRIPTION =
            T.let(
              :subscription,
              Orb::CreditBlockAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          SALES_ORDER =
            T.let(
              :sales_order,
              Orb::CreditBlockAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          BLOCK =
            T.let(
              :block,
              Orb::CreditBlockAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::CreditBlockAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
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
              Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block,
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
            Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditBlockSource::TaggedSymbol
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
              Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::Filter
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

        sig do
          returns(
            Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # The credit allocation that funded a block. Extends the allocation resource
        # serialized on prices with the catalog-item attribution of the funding price.
        sig do
          returns(
            T.nilable(
              Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditAllocation
            )
          )
        end
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation:
              T.nilable(
                Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditAllocation::OrHash
              )
          ).void
        end
        attr_writer :credit_allocation

        # The subscription commitment whose true-up rolled forward into this credit block.
        # Present only when `credit_block_source` is `commitment`.
        sig do
          returns(
            T.nilable(
              Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditCommitment
            )
          )
        end
        attr_reader :credit_commitment

        sig do
          params(
            credit_commitment:
              T.nilable(
                Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditCommitment::OrHash
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
              Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditBlockSource::OrSymbol,
            effective_date: T.nilable(Time),
            expiry_date: T.nilable(Time),
            filters:
              T::Array[
                Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::Filter::OrHash
              ],
            maximum_initial_balance: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            per_unit_cost_basis: T.nilable(String),
            status:
              Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::Status::OrSymbol,
            credit_allocation:
              T.nilable(
                Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditAllocation::OrHash
              ),
            credit_commitment:
              T.nilable(
                Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditCommitment::OrHash
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
                Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditBlockSource::TaggedSymbol,
              effective_date: T.nilable(Time),
              expiry_date: T.nilable(Time),
              filters:
                T::Array[
                  Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::Filter
                ],
              maximum_initial_balance: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              per_unit_cost_basis: T.nilable(String),
              status:
                Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::Status::TaggedSymbol,
              credit_allocation:
                T.nilable(
                  Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditAllocation
                ),
              credit_commitment:
                T.nilable(
                  Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditCommitment
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
                Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditBlockSource
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALLOCATION =
            T.let(
              :allocation,
              Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditBlockSource::TaggedSymbol
            )
          TOP_UP =
            T.let(
              :top_up,
              Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditBlockSource::TaggedSymbol
            )
          COMMITMENT =
            T.let(
              :commitment,
              Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditBlockSource::TaggedSymbol
            )
          MANUAL =
            T.let(
              :manual,
              Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditBlockSource::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditBlockSource::TaggedSymbol
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
                Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::Filter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::Filter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::Filter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field:
                Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::Filter::Field::OrSymbol,
              operator:
                Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::Filter::Operator::OrSymbol,
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
                  Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::Filter::Field::TaggedSymbol,
                operator:
                  Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::Filter::Operator::TaggedSymbol,
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
                  Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::Filter::Field
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::Filter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::Filter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::Filter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::Filter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::Filter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::Filter::Field::TaggedSymbol
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
                  Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::Filter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::Filter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::Filter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::Filter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Status
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::Status::TaggedSymbol
            )
          PENDING_PAYMENT =
            T.let(
              :pending_payment,
              Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::Status::TaggedSymbol
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
                Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditAllocation,
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
                  Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditAllocation::Filter
                ]
              )
            )
          end
          attr_reader :filters

          sig do
            params(
              filters:
                T::Array[
                  Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditAllocation::Filter::OrHash
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
                  Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditAllocation::Filter::OrHash
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
                    Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditAllocation::Filter
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
                  Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditAllocation::Filter,
                  Orb::Internal::AnyHash
                )
              end

            # The property of the price to filter on.
            sig do
              returns(
                Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditAllocation::Filter::Field::TaggedSymbol
              )
            end
            attr_accessor :field

            # Should prices that match the filter be included or excluded.
            sig do
              returns(
                Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditAllocation::Filter::Operator::TaggedSymbol
              )
            end
            attr_accessor :operator

            # The IDs or values that match this filter.
            sig { returns(T::Array[String]) }
            attr_accessor :values

            sig do
              params(
                field:
                  Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditAllocation::Filter::Field::OrSymbol,
                operator:
                  Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditAllocation::Filter::Operator::OrSymbol,
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
                    Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditAllocation::Filter::Field::TaggedSymbol,
                  operator:
                    Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditAllocation::Filter::Operator::TaggedSymbol,
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
                    Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditAllocation::Filter::Field
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PRICE_ID =
                T.let(
                  :price_id,
                  Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditAllocation::Filter::Field::TaggedSymbol
                )
              ITEM_ID =
                T.let(
                  :item_id,
                  Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditAllocation::Filter::Field::TaggedSymbol
                )
              PRICE_TYPE =
                T.let(
                  :price_type,
                  Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditAllocation::Filter::Field::TaggedSymbol
                )
              CURRENCY =
                T.let(
                  :currency,
                  Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditAllocation::Filter::Field::TaggedSymbol
                )
              PRICING_UNIT_ID =
                T.let(
                  :pricing_unit_id,
                  Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditAllocation::Filter::Field::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditAllocation::Filter::Field::TaggedSymbol
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
                    Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditAllocation::Filter::Operator
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INCLUDES =
                T.let(
                  :includes,
                  Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditAllocation::Filter::Operator::TaggedSymbol
                )
              EXCLUDES =
                T.let(
                  :excludes,
                  Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditAllocation::Filter::Operator::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditAllocation::Filter::Operator::TaggedSymbol
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
                Orb::CreditBlockAccountingSyncFailedWebhookEvent::Block::CreditCommitment,
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
            override.returns({ id: String, subscription_id: T.nilable(String) })
          end
          def to_hash
          end
        end
      end

      class Properties < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::CreditBlockAccountingSyncFailedWebhookEvent::Properties,
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
          override.returns({ connection_type: String, failure_reason: String })
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
              Orb::CreditBlockAccountingSyncFailedWebhookEvent::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT_BLOCK_ACCOUNTING_SYNC_FAILED =
          T.let(
            :"credit_block.accounting_sync_failed",
            Orb::CreditBlockAccountingSyncFailedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::CreditBlockAccountingSyncFailedWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
