# typed: strong

module Orb
  module Models
    class FixedFeeQuantityScheduleEntry < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::FixedFeeQuantityScheduleEntry, Orb::Internal::AnyHash)
        end

      sig { returns(T.nilable(Time)) }
      attr_accessor :end_date

      sig { returns(String) }
      attr_accessor :price_id

      sig { returns(Float) }
      attr_accessor :quantity

      sig { returns(Time) }
      attr_accessor :start_date

      sig do
        params(
          end_date: T.nilable(Time),
          price_id: String,
          quantity: Float,
          start_date: Time
        ).returns(T.attached_class)
      end
      def self.new(end_date:, price_id:, quantity:, start_date:)
      end

      sig do
        override.returns(
          {
            end_date: T.nilable(Time),
            price_id: String,
            quantity: Float,
            start_date: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end
