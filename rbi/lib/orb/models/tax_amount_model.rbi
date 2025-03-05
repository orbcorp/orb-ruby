# typed: strong

module Orb
  module Models
    class TaxAmountModel < Orb::BaseModel
      sig { returns(String) }
      def amount
      end

      sig { params(_: String).returns(String) }
      def amount=(_)
      end

      sig { returns(String) }
      def tax_rate_description
      end

      sig { params(_: String).returns(String) }
      def tax_rate_description=(_)
      end

      sig { returns(T.nilable(String)) }
      def tax_rate_percentage
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def tax_rate_percentage=(_)
      end

      sig do
        params(amount: String, tax_rate_description: String, tax_rate_percentage: T.nilable(String)).void
      end
      def initialize(amount:, tax_rate_description:, tax_rate_percentage:)
      end

      sig do
        override.returns(
          {
            amount: String,
            tax_rate_description: String,
            tax_rate_percentage: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
