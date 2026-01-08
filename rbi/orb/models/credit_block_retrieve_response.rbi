# typed: strong

module Orb
  module Models
    class CreditBlockRetrieveResponse < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::Models::CreditBlockRetrieveResponse,
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
        returns(T::Array[Orb::Models::CreditBlockRetrieveResponse::Filter])
      end
      attr_accessor :filters

      sig { returns(T.nilable(Float)) }
      attr_accessor :maximum_initial_balance

      sig { returns(T.nilable(String)) }
      attr_accessor :per_unit_cost_basis

      sig do
        returns(Orb::Models::CreditBlockRetrieveResponse::Status::TaggedSymbol)
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
            T::Array[Orb::Models::CreditBlockRetrieveResponse::Filter::OrHash],
          maximum_initial_balance: T.nilable(Float),
          per_unit_cost_basis: T.nilable(String),
          status: Orb::Models::CreditBlockRetrieveResponse::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        balance:,
        effective_date:,
        expiry_date:,
        filters:,
        maximum_initial_balance:,
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
            filters: T::Array[Orb::Models::CreditBlockRetrieveResponse::Filter],
            maximum_initial_balance: T.nilable(Float),
            per_unit_cost_basis: T.nilable(String),
            status:
              Orb::Models::CreditBlockRetrieveResponse::Status::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Filter < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Models::CreditBlockRetrieveResponse::Filter,
              Orb::Internal::AnyHash
            )
          end

        # The property of the price to filter on.
        sig do
          returns(
            Orb::Models::CreditBlockRetrieveResponse::Filter::Field::TaggedSymbol
          )
        end
        attr_accessor :field

        # Should prices that match the filter be included or excluded.
        sig do
          returns(
            Orb::Models::CreditBlockRetrieveResponse::Filter::Operator::TaggedSymbol
          )
        end
        attr_accessor :operator

        # The IDs or values that match this filter.
        sig { returns(T::Array[String]) }
        attr_accessor :values

        sig do
          params(
            field:
              Orb::Models::CreditBlockRetrieveResponse::Filter::Field::OrSymbol,
            operator:
              Orb::Models::CreditBlockRetrieveResponse::Filter::Operator::OrSymbol,
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
                Orb::Models::CreditBlockRetrieveResponse::Filter::Field::TaggedSymbol,
              operator:
                Orb::Models::CreditBlockRetrieveResponse::Filter::Operator::TaggedSymbol,
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
                Orb::Models::CreditBlockRetrieveResponse::Filter::Field
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRICE_ID =
            T.let(
              :price_id,
              Orb::Models::CreditBlockRetrieveResponse::Filter::Field::TaggedSymbol
            )
          ITEM_ID =
            T.let(
              :item_id,
              Orb::Models::CreditBlockRetrieveResponse::Filter::Field::TaggedSymbol
            )
          PRICE_TYPE =
            T.let(
              :price_type,
              Orb::Models::CreditBlockRetrieveResponse::Filter::Field::TaggedSymbol
            )
          CURRENCY =
            T.let(
              :currency,
              Orb::Models::CreditBlockRetrieveResponse::Filter::Field::TaggedSymbol
            )
          PRICING_UNIT_ID =
            T.let(
              :pricing_unit_id,
              Orb::Models::CreditBlockRetrieveResponse::Filter::Field::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Models::CreditBlockRetrieveResponse::Filter::Field::TaggedSymbol
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
                Orb::Models::CreditBlockRetrieveResponse::Filter::Operator
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCLUDES =
            T.let(
              :includes,
              Orb::Models::CreditBlockRetrieveResponse::Filter::Operator::TaggedSymbol
            )
          EXCLUDES =
            T.let(
              :excludes,
              Orb::Models::CreditBlockRetrieveResponse::Filter::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Models::CreditBlockRetrieveResponse::Filter::Operator::TaggedSymbol
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
            T.all(Symbol, Orb::Models::CreditBlockRetrieveResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            Orb::Models::CreditBlockRetrieveResponse::Status::TaggedSymbol
          )
        PENDING_PAYMENT =
          T.let(
            :pending_payment,
            Orb::Models::CreditBlockRetrieveResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::Models::CreditBlockRetrieveResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
