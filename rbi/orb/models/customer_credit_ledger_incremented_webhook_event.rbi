# typed: strong

module Orb
  module Models
    class CustomerCreditLedgerIncrementedWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::CustomerCreditLedgerIncrementedWebhookEvent,
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

      sig do
        returns(Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties)
      end
      attr_reader :properties

      sig do
        params(
          properties:
            Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::OrHash
        ).void
      end
      attr_writer :properties

      # The event this payload describes.
      sig do
        returns(
          Orb::CustomerCreditLedgerIncrementedWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # Issued when a customer's credit ledger is incremented.
      sig do
        params(
          id: String,
          created_at: Time,
          customer: Orb::Customer::OrHash,
          properties:
            Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::OrHash,
          type: Orb::CustomerCreditLedgerIncrementedWebhookEvent::Type::OrSymbol
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
              Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties,
            type:
              Orb::CustomerCreditLedgerIncrementedWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Properties < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties,
              Orb::Internal::AnyHash
            )
          end

        # The Credit Block resource models prepaid credits within Orb.
        sig do
          returns(
            Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block
          )
        end
        attr_reader :block

        sig do
          params(
            block:
              Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::OrHash
          ).void
        end
        attr_writer :block

        # A currency or custom credit unit, as embedded in webhook payloads.
        sig do
          returns(
            Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::PricingUnit
          )
        end
        attr_reader :pricing_unit

        sig do
          params(
            pricing_unit:
              Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::PricingUnit::OrHash
          ).void
        end
        attr_writer :pricing_unit

        sig do
          params(
            block:
              Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::OrHash,
            pricing_unit:
              Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::PricingUnit::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The Credit Block resource models prepaid credits within Orb.
          block:,
          # A currency or custom credit unit, as embedded in webhook payloads.
          pricing_unit:
        )
        end

        sig do
          override.returns(
            {
              block:
                Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block,
              pricing_unit:
                Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::PricingUnit
            }
          )
        end
        def to_hash
        end

        class Block < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block,
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
              Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditBlockSource::TaggedSymbol
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
                Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Filter
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
              Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # The credit allocation that funded a block. Extends the allocation resource
          # serialized on prices with the catalog-item attribution of the funding price.
          sig do
            returns(
              T.nilable(
                Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation
              )
            )
          end
          attr_reader :credit_allocation

          sig do
            params(
              credit_allocation:
                T.nilable(
                  Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::OrHash
                )
            ).void
          end
          attr_writer :credit_allocation

          # The subscription commitment whose true-up rolled forward into this credit block.
          # Present only when `credit_block_source` is `commitment`.
          sig do
            returns(
              T.nilable(
                Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditCommitment
              )
            )
          end
          attr_reader :credit_commitment

          sig do
            params(
              credit_commitment:
                T.nilable(
                  Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditCommitment::OrHash
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
                Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditBlockSource::OrSymbol,
              effective_date: T.nilable(Time),
              expiry_date: T.nilable(Time),
              filters:
                T::Array[
                  Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Filter::OrHash
                ],
              maximum_initial_balance: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              per_unit_cost_basis: T.nilable(String),
              status:
                Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Status::OrSymbol,
              credit_allocation:
                T.nilable(
                  Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::OrHash
                ),
              credit_commitment:
                T.nilable(
                  Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditCommitment::OrHash
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
                  Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditBlockSource::TaggedSymbol,
                effective_date: T.nilable(Time),
                expiry_date: T.nilable(Time),
                filters:
                  T::Array[
                    Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Filter
                  ],
                maximum_initial_balance: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                per_unit_cost_basis: T.nilable(String),
                status:
                  Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Status::TaggedSymbol,
                credit_allocation:
                  T.nilable(
                    Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation
                  ),
                credit_commitment:
                  T.nilable(
                    Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditCommitment
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
                  Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditBlockSource
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ALLOCATION =
              T.let(
                :allocation,
                Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditBlockSource::TaggedSymbol
              )
            TOP_UP =
              T.let(
                :top_up,
                Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditBlockSource::TaggedSymbol
              )
            COMMITMENT =
              T.let(
                :commitment,
                Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditBlockSource::TaggedSymbol
              )
            MANUAL =
              T.let(
                :manual,
                Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditBlockSource::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditBlockSource::TaggedSymbol
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
                  Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Filter,
                  Orb::Internal::AnyHash
                )
              end

            # The property of the price to filter on.
            sig do
              returns(
                Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Filter::Field::TaggedSymbol
              )
            end
            attr_accessor :field

            # Should prices that match the filter be included or excluded.
            sig do
              returns(
                Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Filter::Operator::TaggedSymbol
              )
            end
            attr_accessor :operator

            # The IDs or values that match this filter.
            sig { returns(T::Array[String]) }
            attr_accessor :values

            sig do
              params(
                field:
                  Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Filter::Field::OrSymbol,
                operator:
                  Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Filter::Operator::OrSymbol,
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
                    Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Filter::Field::TaggedSymbol,
                  operator:
                    Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Filter::Operator::TaggedSymbol,
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
                    Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Filter::Field
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PRICE_ID =
                T.let(
                  :price_id,
                  Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Filter::Field::TaggedSymbol
                )
              ITEM_ID =
                T.let(
                  :item_id,
                  Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Filter::Field::TaggedSymbol
                )
              PRICE_TYPE =
                T.let(
                  :price_type,
                  Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Filter::Field::TaggedSymbol
                )
              CURRENCY =
                T.let(
                  :currency,
                  Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Filter::Field::TaggedSymbol
                )
              PRICING_UNIT_ID =
                T.let(
                  :pricing_unit_id,
                  Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Filter::Field::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Filter::Field::TaggedSymbol
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
                    Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Filter::Operator
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INCLUDES =
                T.let(
                  :includes,
                  Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Filter::Operator::TaggedSymbol
                )
              EXCLUDES =
                T.let(
                  :excludes,
                  Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Filter::Operator::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Filter::Operator::TaggedSymbol
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
                  Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Status::TaggedSymbol
              )
            PENDING_PAYMENT =
              T.let(
                :pending_payment,
                Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::Status::TaggedSymbol
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
                  Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation,
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
                    Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter
                  ]
                )
              )
            end
            attr_reader :filters

            sig do
              params(
                filters:
                  T::Array[
                    Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter::OrHash
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
                    Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter::OrHash
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
                      Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter
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
                    Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter,
                    Orb::Internal::AnyHash
                  )
                end

              # The property of the price to filter on.
              sig do
                returns(
                  Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter::Field::TaggedSymbol
                )
              end
              attr_accessor :field

              # Should prices that match the filter be included or excluded.
              sig do
                returns(
                  Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter::Operator::TaggedSymbol
                )
              end
              attr_accessor :operator

              # The IDs or values that match this filter.
              sig { returns(T::Array[String]) }
              attr_accessor :values

              sig do
                params(
                  field:
                    Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter::Field::OrSymbol,
                  operator:
                    Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter::Operator::OrSymbol,
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
                      Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter::Field::TaggedSymbol,
                    operator:
                      Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter::Operator::TaggedSymbol,
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
                      Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter::Field
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PRICE_ID =
                  T.let(
                    :price_id,
                    Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter::Field::TaggedSymbol
                  )
                ITEM_ID =
                  T.let(
                    :item_id,
                    Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter::Field::TaggedSymbol
                  )
                PRICE_TYPE =
                  T.let(
                    :price_type,
                    Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter::Field::TaggedSymbol
                  )
                CURRENCY =
                  T.let(
                    :currency,
                    Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter::Field::TaggedSymbol
                  )
                PRICING_UNIT_ID =
                  T.let(
                    :pricing_unit_id,
                    Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter::Field::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter::Field::TaggedSymbol
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
                      Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter::Operator
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INCLUDES =
                  T.let(
                    :includes,
                    Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter::Operator::TaggedSymbol
                  )
                EXCLUDES =
                  T.let(
                    :excludes,
                    Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter::Operator::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditAllocation::Filter::Operator::TaggedSymbol
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
                  Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::Block::CreditCommitment,
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

        class PricingUnit < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::CustomerCreditLedgerIncrementedWebhookEvent::Properties::PricingUnit,
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
            T.all(
              Symbol,
              Orb::CustomerCreditLedgerIncrementedWebhookEvent::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CUSTOMER_CREDIT_LEDGER_INCREMENTED =
          T.let(
            :"customer.credit_ledger_incremented",
            Orb::CustomerCreditLedgerIncrementedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::CustomerCreditLedgerIncrementedWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
