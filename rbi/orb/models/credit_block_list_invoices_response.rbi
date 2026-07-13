# typed: strong

module Orb
  module Models
    class CreditBlockListInvoicesResponse < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::Models::CreditBlockListInvoicesResponse,
            Orb::Internal::AnyHash
          )
        end

      # The Credit Block resource models prepaid credits within Orb.
      sig { returns(Orb::Models::CreditBlockListInvoicesResponse::Block) }
      attr_reader :block

      sig do
        params(
          block: Orb::Models::CreditBlockListInvoicesResponse::Block::OrHash
        ).void
      end
      attr_writer :block

      sig do
        returns(T::Array[Orb::Models::CreditBlockListInvoicesResponse::Invoice])
      end
      attr_accessor :invoices

      sig do
        params(
          block: Orb::Models::CreditBlockListInvoicesResponse::Block::OrHash,
          invoices:
            T::Array[
              Orb::Models::CreditBlockListInvoicesResponse::Invoice::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(
        # The Credit Block resource models prepaid credits within Orb.
        block:,
        invoices:
      )
      end

      sig do
        override.returns(
          {
            block: Orb::Models::CreditBlockListInvoicesResponse::Block,
            invoices:
              T::Array[Orb::Models::CreditBlockListInvoicesResponse::Invoice]
          }
        )
      end
      def to_hash
      end

      class Block < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Models::CreditBlockListInvoicesResponse::Block,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Float) }
        attr_accessor :balance

        # How this credit block was created: `allocation` (a subscription's recurring
        # credit allocation), `top_up` (an automatic balance-threshold top-up),
        # `commitment` (a subscription commitment true-up rolled forward as credit), or
        # `manual` (a manual credit ledger increment, including credits voided or expired
        # off another block).
        sig do
          returns(
            Orb::Models::CreditBlockListInvoicesResponse::Block::CreditBlockSource::TaggedSymbol
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
              Orb::Models::CreditBlockListInvoicesResponse::Block::Filter
            ]
          )
        end
        attr_accessor :filters

        sig { returns(T.nilable(Float)) }
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
            Orb::Models::CreditBlockListInvoicesResponse::Block::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # The credit allocation that funded a block. Extends the allocation resource
        # serialized on prices with the catalog-item attribution of the funding price.
        sig do
          returns(
            T.nilable(
              Orb::Models::CreditBlockListInvoicesResponse::Block::CreditAllocation
            )
          )
        end
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation:
              T.nilable(
                Orb::Models::CreditBlockListInvoicesResponse::Block::CreditAllocation::OrHash
              )
          ).void
        end
        attr_writer :credit_allocation

        # The subscription commitment whose true-up rolled forward into this credit block.
        # Present only when `credit_block_source` is `commitment`.
        sig do
          returns(
            T.nilable(
              Orb::Models::CreditBlockListInvoicesResponse::Block::CreditCommitment
            )
          )
        end
        attr_reader :credit_commitment

        sig do
          params(
            credit_commitment:
              T.nilable(
                Orb::Models::CreditBlockListInvoicesResponse::Block::CreditCommitment::OrHash
              )
          ).void
        end
        attr_writer :credit_commitment

        # The Credit Block resource models prepaid credits within Orb.
        sig do
          params(
            id: String,
            balance: Float,
            credit_block_source:
              Orb::Models::CreditBlockListInvoicesResponse::Block::CreditBlockSource::OrSymbol,
            effective_date: T.nilable(Time),
            expiry_date: T.nilable(Time),
            filters:
              T::Array[
                Orb::Models::CreditBlockListInvoicesResponse::Block::Filter::OrHash
              ],
            maximum_initial_balance: T.nilable(Float),
            metadata: T::Hash[Symbol, String],
            per_unit_cost_basis: T.nilable(String),
            status:
              Orb::Models::CreditBlockListInvoicesResponse::Block::Status::OrSymbol,
            credit_allocation:
              T.nilable(
                Orb::Models::CreditBlockListInvoicesResponse::Block::CreditAllocation::OrHash
              ),
            credit_commitment:
              T.nilable(
                Orb::Models::CreditBlockListInvoicesResponse::Block::CreditCommitment::OrHash
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
              balance: Float,
              credit_block_source:
                Orb::Models::CreditBlockListInvoicesResponse::Block::CreditBlockSource::TaggedSymbol,
              effective_date: T.nilable(Time),
              expiry_date: T.nilable(Time),
              filters:
                T::Array[
                  Orb::Models::CreditBlockListInvoicesResponse::Block::Filter
                ],
              maximum_initial_balance: T.nilable(Float),
              metadata: T::Hash[Symbol, String],
              per_unit_cost_basis: T.nilable(String),
              status:
                Orb::Models::CreditBlockListInvoicesResponse::Block::Status::TaggedSymbol,
              credit_allocation:
                T.nilable(
                  Orb::Models::CreditBlockListInvoicesResponse::Block::CreditAllocation
                ),
              credit_commitment:
                T.nilable(
                  Orb::Models::CreditBlockListInvoicesResponse::Block::CreditCommitment
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
                Orb::Models::CreditBlockListInvoicesResponse::Block::CreditBlockSource
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALLOCATION =
            T.let(
              :allocation,
              Orb::Models::CreditBlockListInvoicesResponse::Block::CreditBlockSource::TaggedSymbol
            )
          TOP_UP =
            T.let(
              :top_up,
              Orb::Models::CreditBlockListInvoicesResponse::Block::CreditBlockSource::TaggedSymbol
            )
          COMMITMENT =
            T.let(
              :commitment,
              Orb::Models::CreditBlockListInvoicesResponse::Block::CreditBlockSource::TaggedSymbol
            )
          MANUAL =
            T.let(
              :manual,
              Orb::Models::CreditBlockListInvoicesResponse::Block::CreditBlockSource::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Models::CreditBlockListInvoicesResponse::Block::CreditBlockSource::TaggedSymbol
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
                Orb::Models::CreditBlockListInvoicesResponse::Block::Filter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::Models::CreditBlockListInvoicesResponse::Block::Filter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Models::CreditBlockListInvoicesResponse::Block::Filter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field:
                Orb::Models::CreditBlockListInvoicesResponse::Block::Filter::Field::OrSymbol,
              operator:
                Orb::Models::CreditBlockListInvoicesResponse::Block::Filter::Operator::OrSymbol,
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
                  Orb::Models::CreditBlockListInvoicesResponse::Block::Filter::Field::TaggedSymbol,
                operator:
                  Orb::Models::CreditBlockListInvoicesResponse::Block::Filter::Operator::TaggedSymbol,
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
                  Orb::Models::CreditBlockListInvoicesResponse::Block::Filter::Field
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Models::CreditBlockListInvoicesResponse::Block::Filter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Models::CreditBlockListInvoicesResponse::Block::Filter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Models::CreditBlockListInvoicesResponse::Block::Filter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Models::CreditBlockListInvoicesResponse::Block::Filter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Models::CreditBlockListInvoicesResponse::Block::Filter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Models::CreditBlockListInvoicesResponse::Block::Filter::Field::TaggedSymbol
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
                  Orb::Models::CreditBlockListInvoicesResponse::Block::Filter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Models::CreditBlockListInvoicesResponse::Block::Filter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Models::CreditBlockListInvoicesResponse::Block::Filter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Models::CreditBlockListInvoicesResponse::Block::Filter::Operator::TaggedSymbol
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
                Orb::Models::CreditBlockListInvoicesResponse::Block::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              Orb::Models::CreditBlockListInvoicesResponse::Block::Status::TaggedSymbol
            )
          PENDING_PAYMENT =
            T.let(
              :pending_payment,
              Orb::Models::CreditBlockListInvoicesResponse::Block::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Models::CreditBlockListInvoicesResponse::Block::Status::TaggedSymbol
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
                Orb::Models::CreditBlockListInvoicesResponse::Block::CreditAllocation,
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
                  Orb::Models::CreditBlockListInvoicesResponse::Block::CreditAllocation::Filter
                ]
              )
            )
          end
          attr_reader :filters

          sig do
            params(
              filters:
                T::Array[
                  Orb::Models::CreditBlockListInvoicesResponse::Block::CreditAllocation::Filter::OrHash
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
                  Orb::Models::CreditBlockListInvoicesResponse::Block::CreditAllocation::Filter::OrHash
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
                    Orb::Models::CreditBlockListInvoicesResponse::Block::CreditAllocation::Filter
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
                  Orb::Models::CreditBlockListInvoicesResponse::Block::CreditAllocation::Filter,
                  Orb::Internal::AnyHash
                )
              end

            # The property of the price to filter on.
            sig do
              returns(
                Orb::Models::CreditBlockListInvoicesResponse::Block::CreditAllocation::Filter::Field::TaggedSymbol
              )
            end
            attr_accessor :field

            # Should prices that match the filter be included or excluded.
            sig do
              returns(
                Orb::Models::CreditBlockListInvoicesResponse::Block::CreditAllocation::Filter::Operator::TaggedSymbol
              )
            end
            attr_accessor :operator

            # The IDs or values that match this filter.
            sig { returns(T::Array[String]) }
            attr_accessor :values

            sig do
              params(
                field:
                  Orb::Models::CreditBlockListInvoicesResponse::Block::CreditAllocation::Filter::Field::OrSymbol,
                operator:
                  Orb::Models::CreditBlockListInvoicesResponse::Block::CreditAllocation::Filter::Operator::OrSymbol,
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
                    Orb::Models::CreditBlockListInvoicesResponse::Block::CreditAllocation::Filter::Field::TaggedSymbol,
                  operator:
                    Orb::Models::CreditBlockListInvoicesResponse::Block::CreditAllocation::Filter::Operator::TaggedSymbol,
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
                    Orb::Models::CreditBlockListInvoicesResponse::Block::CreditAllocation::Filter::Field
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PRICE_ID =
                T.let(
                  :price_id,
                  Orb::Models::CreditBlockListInvoicesResponse::Block::CreditAllocation::Filter::Field::TaggedSymbol
                )
              ITEM_ID =
                T.let(
                  :item_id,
                  Orb::Models::CreditBlockListInvoicesResponse::Block::CreditAllocation::Filter::Field::TaggedSymbol
                )
              PRICE_TYPE =
                T.let(
                  :price_type,
                  Orb::Models::CreditBlockListInvoicesResponse::Block::CreditAllocation::Filter::Field::TaggedSymbol
                )
              CURRENCY =
                T.let(
                  :currency,
                  Orb::Models::CreditBlockListInvoicesResponse::Block::CreditAllocation::Filter::Field::TaggedSymbol
                )
              PRICING_UNIT_ID =
                T.let(
                  :pricing_unit_id,
                  Orb::Models::CreditBlockListInvoicesResponse::Block::CreditAllocation::Filter::Field::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::Models::CreditBlockListInvoicesResponse::Block::CreditAllocation::Filter::Field::TaggedSymbol
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
                    Orb::Models::CreditBlockListInvoicesResponse::Block::CreditAllocation::Filter::Operator
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INCLUDES =
                T.let(
                  :includes,
                  Orb::Models::CreditBlockListInvoicesResponse::Block::CreditAllocation::Filter::Operator::TaggedSymbol
                )
              EXCLUDES =
                T.let(
                  :excludes,
                  Orb::Models::CreditBlockListInvoicesResponse::Block::CreditAllocation::Filter::Operator::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::Models::CreditBlockListInvoicesResponse::Block::CreditAllocation::Filter::Operator::TaggedSymbol
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
                Orb::Models::CreditBlockListInvoicesResponse::Block::CreditCommitment,
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

      class Invoice < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Models::CreditBlockListInvoicesResponse::Invoice,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Orb::CustomerMinified) }
        attr_reader :customer

        sig { params(customer: Orb::CustomerMinified::OrHash).void }
        attr_writer :customer

        sig { returns(String) }
        attr_accessor :invoice_number

        sig do
          returns(
            Orb::Models::CreditBlockListInvoicesResponse::Invoice::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig { returns(T.nilable(Orb::SubscriptionMinified)) }
        attr_reader :subscription

        sig do
          params(
            subscription: T.nilable(Orb::SubscriptionMinified::OrHash)
          ).void
        end
        attr_writer :subscription

        sig do
          params(
            id: String,
            customer: Orb::CustomerMinified::OrHash,
            invoice_number: String,
            status:
              Orb::Models::CreditBlockListInvoicesResponse::Invoice::Status::OrSymbol,
            subscription: T.nilable(Orb::SubscriptionMinified::OrHash)
          ).returns(T.attached_class)
        end
        def self.new(id:, customer:, invoice_number:, status:, subscription:)
        end

        sig do
          override.returns(
            {
              id: String,
              customer: Orb::CustomerMinified,
              invoice_number: String,
              status:
                Orb::Models::CreditBlockListInvoicesResponse::Invoice::Status::TaggedSymbol,
              subscription: T.nilable(Orb::SubscriptionMinified)
            }
          )
        end
        def to_hash
        end

        module Status
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Models::CreditBlockListInvoicesResponse::Invoice::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ISSUED =
            T.let(
              :issued,
              Orb::Models::CreditBlockListInvoicesResponse::Invoice::Status::TaggedSymbol
            )
          PAID =
            T.let(
              :paid,
              Orb::Models::CreditBlockListInvoicesResponse::Invoice::Status::TaggedSymbol
            )
          SYNCED =
            T.let(
              :synced,
              Orb::Models::CreditBlockListInvoicesResponse::Invoice::Status::TaggedSymbol
            )
          VOID =
            T.let(
              :void,
              Orb::Models::CreditBlockListInvoicesResponse::Invoice::Status::TaggedSymbol
            )
          DRAFT =
            T.let(
              :draft,
              Orb::Models::CreditBlockListInvoicesResponse::Invoice::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Models::CreditBlockListInvoicesResponse::Invoice::Status::TaggedSymbol
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
