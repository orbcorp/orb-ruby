# frozen_string_literal: true

module Orb
  module Models
    module InvoiceLevelDiscount
      extend Orb::Internal::Type::Union

      discriminator :discount_type

      variant :percentage, -> { Orb::PercentageDiscount }

      variant :amount, -> { Orb::AmountDiscount }

      variant :trial, -> { Orb::TrialDiscount }

      # @!method self.variants
      #   @return [Array(Orb::PercentageDiscount, Orb::AmountDiscount, Orb::TrialDiscount)]

      define_sorbet_constant!(:Variants) do
        T.type_alias { T.any(Orb::PercentageDiscount, Orb::AmountDiscount, Orb::TrialDiscount) }
      end
    end
  end
end
