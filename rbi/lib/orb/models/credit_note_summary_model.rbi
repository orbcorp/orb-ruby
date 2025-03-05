# typed: strong

module Orb
  module Models
    class CreditNoteSummaryModel < Orb::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def credit_note_number
      end

      sig { params(_: String).returns(String) }
      def credit_note_number=(_)
      end

      sig { returns(T.nilable(String)) }
      def memo
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def memo=(_)
      end

      sig { returns(String) }
      def reason
      end

      sig { params(_: String).returns(String) }
      def reason=(_)
      end

      sig { returns(String) }
      def total
      end

      sig { params(_: String).returns(String) }
      def total=(_)
      end

      sig { returns(String) }
      def type
      end

      sig { params(_: String).returns(String) }
      def type=(_)
      end

      sig { returns(T.nilable(Time)) }
      def voided_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def voided_at=(_)
      end

      sig do
        params(
          id: String,
          credit_note_number: String,
          memo: T.nilable(String),
          reason: String,
          total: String,
          type: String,
          voided_at: T.nilable(Time)
        )
          .void
      end
      def initialize(id:, credit_note_number:, memo:, reason:, total:, type:, voided_at:)
      end

      sig do
        override
          .returns(
            {
              id: String,
              credit_note_number: String,
              memo: T.nilable(String),
              reason: String,
              total: String,
              type: String,
              voided_at: T.nilable(Time)
            }
          )
      end
      def to_hash
      end
    end
  end
end
