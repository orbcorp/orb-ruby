# typed: strong

module Orb
  module Models
    module Discount
      extend Orb::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Orb::PercentageDiscount,
            Orb::TrialDiscount,
            Orb::UsageDiscount,
            Orb::AmountDiscount
          )
        end

      sig { override.returns(T::Array[Orb::Discount::Variants]) }
      def self.variants
      end
    end
  end
end
