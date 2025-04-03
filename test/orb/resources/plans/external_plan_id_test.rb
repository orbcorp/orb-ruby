# frozen_string_literal: true

require_relative "../../test_helper"

class Orb::Test::Resources::Plans::ExternalPlanIDTest < Orb::Test::ResourceTest
  def test_update
    response = @orb.plans.external_plan_id.update("external_plan_id")

    assert_pattern do
      response => Orb::Models::Plan
    end

    assert_pattern do
      response => {
        id: String,
        adjustments: ^(Orb::Internal::Type::ArrayOf[union: Orb::Models::Plan::Adjustment]),
        base_plan: Orb::Models::Plan::BasePlan | nil,
        base_plan_id: String | nil,
        created_at: Time,
        currency: String,
        default_invoice_memo: String | nil,
        description: String,
        discount: Orb::Models::Discount | nil,
        external_plan_id: String | nil,
        invoicing_currency: String,
        maximum: Orb::Models::Plan::Maximum | nil,
        maximum_amount: String | nil,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        minimum: Orb::Models::Plan::Minimum | nil,
        minimum_amount: String | nil,
        name: String,
        net_terms: Integer | nil,
        plan_phases: ^(Orb::Internal::Type::ArrayOf[Orb::Models::Plan::PlanPhase]) | nil,
        prices: ^(Orb::Internal::Type::ArrayOf[union: Orb::Models::Price]),
        product: Orb::Models::Plan::Product,
        status: Orb::Models::Plan::Status,
        trial_config: Orb::Models::Plan::TrialConfig,
        version: Integer
      }
    end
  end

  def test_fetch
    response = @orb.plans.external_plan_id.fetch("external_plan_id")

    assert_pattern do
      response => Orb::Models::Plan
    end

    assert_pattern do
      response => {
        id: String,
        adjustments: ^(Orb::Internal::Type::ArrayOf[union: Orb::Models::Plan::Adjustment]),
        base_plan: Orb::Models::Plan::BasePlan | nil,
        base_plan_id: String | nil,
        created_at: Time,
        currency: String,
        default_invoice_memo: String | nil,
        description: String,
        discount: Orb::Models::Discount | nil,
        external_plan_id: String | nil,
        invoicing_currency: String,
        maximum: Orb::Models::Plan::Maximum | nil,
        maximum_amount: String | nil,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        minimum: Orb::Models::Plan::Minimum | nil,
        minimum_amount: String | nil,
        name: String,
        net_terms: Integer | nil,
        plan_phases: ^(Orb::Internal::Type::ArrayOf[Orb::Models::Plan::PlanPhase]) | nil,
        prices: ^(Orb::Internal::Type::ArrayOf[union: Orb::Models::Price]),
        product: Orb::Models::Plan::Product,
        status: Orb::Models::Plan::Status,
        trial_config: Orb::Models::Plan::TrialConfig,
        version: Integer
      }
    end
  end
end
