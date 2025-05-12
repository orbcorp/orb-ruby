# frozen_string_literal: true

module Orb
  module Models
    module Discount
      extend Orb::Internal::Type::Union

      discriminator :discount_type

      variant :percentage, -> { Orb::PercentageDiscount }

      variant :trial, -> { Orb::TrialDiscount }

      variant :usage, -> { Orb::UsageDiscount }

      variant :amount, -> { Orb::AmountDiscount }

      # @!method self.variants
      #   @return [Array(Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount)]

      define_sorbet_constant!(:Variants) do
        T.type_alias do
          T.any(Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount)
        end
      end
    end
  end
end
