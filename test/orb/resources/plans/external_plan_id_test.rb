# frozen_string_literal: true

require_relative "../../test_helper"

class Orb::Test::Resources::Plans::ExternalPlanIDTest < Orb::Test::ResourceTest
  def test_update
    response = @orb.plans.external_plan_id.update("external_plan_id")

    assert_pattern do
      response => Orb::Models::PlanModel
    end

    assert_pattern do
      response => {
        id: String,
        adjustments: ^(Orb::ArrayOf[union: Orb::Models::AdjustmentModel]),
        base_plan: Orb::Models::PlanMinifiedModel | nil,
        base_plan_id: String | nil,
        created_at: Time,
        currency: String,
        default_invoice_memo: String | nil,
        description: String,
        discount: Orb::Models::Discount | nil,
        external_plan_id: String | nil,
        invoicing_currency: String,
        maximum: Orb::Models::MaximumModel | nil,
        maximum_amount: String | nil,
        metadata: ^(Orb::HashOf[String]),
        minimum: Orb::Models::MinimumModel | nil,
        minimum_amount: String | nil,
        name: String,
        net_terms: Integer | nil,
        plan_phases: ^(Orb::ArrayOf[Orb::Models::PlanModel::PlanPhase]) | nil,
        prices: ^(Orb::ArrayOf[union: Orb::Models::PriceModel]),
        product: Orb::Models::PlanModel::Product,
        status: Orb::Models::PlanModel::Status,
        trial_config: Orb::Models::PlanModel::TrialConfig,
        version: Integer
      }
    end
  end

  def test_fetch
    response = @orb.plans.external_plan_id.fetch("external_plan_id")

    assert_pattern do
      response => Orb::Models::PlanModel
    end

    assert_pattern do
      response => {
        id: String,
        adjustments: ^(Orb::ArrayOf[union: Orb::Models::AdjustmentModel]),
        base_plan: Orb::Models::PlanMinifiedModel | nil,
        base_plan_id: String | nil,
        created_at: Time,
        currency: String,
        default_invoice_memo: String | nil,
        description: String,
        discount: Orb::Models::Discount | nil,
        external_plan_id: String | nil,
        invoicing_currency: String,
        maximum: Orb::Models::MaximumModel | nil,
        maximum_amount: String | nil,
        metadata: ^(Orb::HashOf[String]),
        minimum: Orb::Models::MinimumModel | nil,
        minimum_amount: String | nil,
        name: String,
        net_terms: Integer | nil,
        plan_phases: ^(Orb::ArrayOf[Orb::Models::PlanModel::PlanPhase]) | nil,
        prices: ^(Orb::ArrayOf[union: Orb::Models::PriceModel]),
        product: Orb::Models::PlanModel::Product,
        status: Orb::Models::PlanModel::Status,
        trial_config: Orb::Models::PlanModel::TrialConfig,
        version: Integer
      }
    end
  end
end
