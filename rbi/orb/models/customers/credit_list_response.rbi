# typed: strong

module Orb
  module Models
    module Customers
      class CreditListResponse < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Models::Customers::CreditListResponse,
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
          returns(T::Array[Orb::Models::Customers::CreditListResponse::Filter])
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
            Orb::Models::Customers::CreditListResponse::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig do
          params(
            id: String,
            balance: Float,
            effective_date: T.nilable(Time),
            expiry_date: T.nilable(Time),
            filters:
              T::Array[
                Orb::Models::Customers::CreditListResponse::Filter::OrHash
              ],
            maximum_initial_balance: T.nilable(Float),
            metadata: T::Hash[Symbol, String],
            per_unit_cost_basis: T.nilable(String),
            status: Orb::Models::Customers::CreditListResponse::Status::OrSymbol
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
                T::Array[Orb::Models::Customers::CreditListResponse::Filter],
              maximum_initial_balance: T.nilable(Float),
              metadata: T::Hash[Symbol, String],
              per_unit_cost_basis: T.nilable(String),
              status:
                Orb::Models::Customers::CreditListResponse::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class Filter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Models::Customers::CreditListResponse::Filter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price the block applies to. Only item_id is supported.
          sig do
            returns(
              Orb::Models::Customers::CreditListResponse::Filter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Models::Customers::CreditListResponse::Filter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          # A PriceFilter that only allows item_id field for block filters.
          sig do
            params(
              field:
                Orb::Models::Customers::CreditListResponse::Filter::Field::OrSymbol,
              operator:
                Orb::Models::Customers::CreditListResponse::Filter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price the block applies to. Only item_id is supported.
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
                  Orb::Models::Customers::CreditListResponse::Filter::Field::TaggedSymbol,
                operator:
                  Orb::Models::Customers::CreditListResponse::Filter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price the block applies to. Only item_id is supported.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Models::Customers::CreditListResponse::Filter::Field
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ITEM_ID =
              T.let(
                :item_id,
                Orb::Models::Customers::CreditListResponse::Filter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Models::Customers::CreditListResponse::Filter::Field::TaggedSymbol
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
                  Orb::Models::Customers::CreditListResponse::Filter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Models::Customers::CreditListResponse::Filter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Models::Customers::CreditListResponse::Filter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Models::Customers::CreditListResponse::Filter::Operator::TaggedSymbol
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
              T.all(Symbol, Orb::Models::Customers::CreditListResponse::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              Orb::Models::Customers::CreditListResponse::Status::TaggedSymbol
            )
          PENDING_PAYMENT =
            T.let(
              :pending_payment,
              Orb::Models::Customers::CreditListResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Models::Customers::CreditListResponse::Status::TaggedSymbol
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
