# typed: strong

module Orb
  module Models
    module InvoiceLevelDiscount
      extend Orb::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Orb::PercentageDiscount,
            Orb::AmountDiscount,
            Orb::TrialDiscount
          )
        end

      sig { override.returns(T::Array[Orb::InvoiceLevelDiscount::Variants]) }
      def self.variants
      end
    end
  end
end
