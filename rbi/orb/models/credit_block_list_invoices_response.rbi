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

        # The Credit Block resource models prepaid credits within Orb.
        sig do
          params(
            id: String,
            balance: Float,
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
              Orb::Models::CreditBlockListInvoicesResponse::Block::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          balance:,
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
          status:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              balance: Float,
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
                Orb::Models::CreditBlockListInvoicesResponse::Block::Status::TaggedSymbol
            }
          )
        end
        def to_hash
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
