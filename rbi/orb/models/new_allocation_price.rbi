# typed: strong

module Orb
  module Models
    class NewAllocationPrice < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::NewAllocationPrice, Orb::Internal::AnyHash) }

      # An amount of the currency to allocate to the customer at the specified cadence.
      sig { returns(String) }
      attr_accessor :amount

      # The cadence at which to allocate the amount to the customer.
      sig { returns(Orb::NewAllocationPrice::Cadence::OrSymbol) }
      attr_accessor :cadence

      # An ISO 4217 currency string or a custom pricing unit identifier in which to bill
      # this price.
      sig { returns(String) }
      attr_accessor :currency

      # The custom expiration for the allocation.
      sig { returns(T.nilable(Orb::CustomExpiration)) }
      attr_reader :custom_expiration

      sig do
        params(custom_expiration: T.nilable(Orb::CustomExpiration::OrHash)).void
      end
      attr_writer :custom_expiration

      # Whether the allocated amount should expire at the end of the cadence or roll
      # over to the next period. Set to null if using custom_expiration.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :expires_at_end_of_cadence

      # The filters that determine which items the allocation applies to.
      sig { returns(T.nilable(T::Array[Orb::NewAllocationPrice::Filter])) }
      attr_accessor :filters

      # The item ID that line items representing charges for this allocation will be
      # associated with. If not provided, the default allocation item for the currency
      # will be used (e.g. 'Included Allocation (USD)').
      sig { returns(T.nilable(String)) }
      attr_accessor :item_id

      # The (per-unit) cost basis of each created block. If non-zero, a customer will be
      # invoiced according to the quantity and per unit cost basis specified for the
      # allocation each cadence.
      sig { returns(T.nilable(String)) }
      attr_reader :per_unit_cost_basis

      sig { params(per_unit_cost_basis: String).void }
      attr_writer :per_unit_cost_basis

      sig do
        params(
          amount: String,
          cadence: Orb::NewAllocationPrice::Cadence::OrSymbol,
          currency: String,
          custom_expiration: T.nilable(Orb::CustomExpiration::OrHash),
          expires_at_end_of_cadence: T.nilable(T::Boolean),
          filters: T.nilable(T::Array[Orb::NewAllocationPrice::Filter::OrHash]),
          item_id: T.nilable(String),
          per_unit_cost_basis: String
        ).returns(T.attached_class)
      end
      def self.new(
        # An amount of the currency to allocate to the customer at the specified cadence.
        amount:,
        # The cadence at which to allocate the amount to the customer.
        cadence:,
        # An ISO 4217 currency string or a custom pricing unit identifier in which to bill
        # this price.
        currency:,
        # The custom expiration for the allocation.
        custom_expiration: nil,
        # Whether the allocated amount should expire at the end of the cadence or roll
        # over to the next period. Set to null if using custom_expiration.
        expires_at_end_of_cadence: nil,
        # The filters that determine which items the allocation applies to.
        filters: nil,
        # The item ID that line items representing charges for this allocation will be
        # associated with. If not provided, the default allocation item for the currency
        # will be used (e.g. 'Included Allocation (USD)').
        item_id: nil,
        # The (per-unit) cost basis of each created block. If non-zero, a customer will be
        # invoiced according to the quantity and per unit cost basis specified for the
        # allocation each cadence.
        per_unit_cost_basis: nil
      )
      end

      sig do
        override.returns(
          {
            amount: String,
            cadence: Orb::NewAllocationPrice::Cadence::OrSymbol,
            currency: String,
            custom_expiration: T.nilable(Orb::CustomExpiration),
            expires_at_end_of_cadence: T.nilable(T::Boolean),
            filters: T.nilable(T::Array[Orb::NewAllocationPrice::Filter]),
            item_id: T.nilable(String),
            per_unit_cost_basis: String
          }
        )
      end
      def to_hash
      end

      # The cadence at which to allocate the amount to the customer.
      module Cadence
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::NewAllocationPrice::Cadence) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ONE_TIME =
          T.let(:one_time, Orb::NewAllocationPrice::Cadence::TaggedSymbol)
        MONTHLY =
          T.let(:monthly, Orb::NewAllocationPrice::Cadence::TaggedSymbol)
        QUARTERLY =
          T.let(:quarterly, Orb::NewAllocationPrice::Cadence::TaggedSymbol)
        SEMI_ANNUAL =
          T.let(:semi_annual, Orb::NewAllocationPrice::Cadence::TaggedSymbol)
        ANNUAL = T.let(:annual, Orb::NewAllocationPrice::Cadence::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Orb::NewAllocationPrice::Cadence::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Filter < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::NewAllocationPrice::Filter, Orb::Internal::AnyHash)
          end

        # The property of the price the block applies to. Only item_id is supported.
        sig { returns(Orb::NewAllocationPrice::Filter::Field::OrSymbol) }
        attr_accessor :field

        # Should prices that match the filter be included or excluded.
        sig { returns(Orb::NewAllocationPrice::Filter::Operator::OrSymbol) }
        attr_accessor :operator

        # The IDs or values that match this filter.
        sig { returns(T::Array[String]) }
        attr_accessor :values

        # A PriceFilter that only allows item_id field for block filters.
        sig do
          params(
            field: Orb::NewAllocationPrice::Filter::Field::OrSymbol,
            operator: Orb::NewAllocationPrice::Filter::Operator::OrSymbol,
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
              field: Orb::NewAllocationPrice::Filter::Field::OrSymbol,
              operator: Orb::NewAllocationPrice::Filter::Operator::OrSymbol,
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
              T.all(Symbol, Orb::NewAllocationPrice::Filter::Field)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ITEM_ID =
            T.let(
              :item_id,
              Orb::NewAllocationPrice::Filter::Field::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::NewAllocationPrice::Filter::Field::TaggedSymbol]
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
              T.all(Symbol, Orb::NewAllocationPrice::Filter::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCLUDES =
            T.let(
              :includes,
              Orb::NewAllocationPrice::Filter::Operator::TaggedSymbol
            )
          EXCLUDES =
            T.let(
              :excludes,
              Orb::NewAllocationPrice::Filter::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::NewAllocationPrice::Filter::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
