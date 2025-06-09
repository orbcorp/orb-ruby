# frozen_string_literal: true

require_relative "../../test_helper"

class Orb::Test::Resources::Beta::ExternalPlanIDTest < Orb::Test::ResourceTest
  def test_create_plan_version_required_params
    response = @orb.beta.external_plan_id.create_plan_version("external_plan_id", version: 0)

    assert_pattern do
      response => Orb::PlanVersion
    end

    assert_pattern do
      response => {
        adjustments: ^(Orb::Internal::Type::ArrayOf[union: Orb::PlanVersion::Adjustment]),
        created_at: Time,
        plan_phases: ^(Orb::Internal::Type::ArrayOf[Orb::PlanVersionPhase]) | nil,
        prices: ^(Orb::Internal::Type::ArrayOf[union: Orb::Price]),
        version: Integer
      }
    end
  end

  def test_fetch_plan_version_required_params
    response = @orb.beta.external_plan_id.fetch_plan_version("version", external_plan_id: "external_plan_id")

    assert_pattern do
      response => Orb::PlanVersion
    end

    assert_pattern do
      response => {
        adjustments: ^(Orb::Internal::Type::ArrayOf[union: Orb::PlanVersion::Adjustment]),
        created_at: Time,
        plan_phases: ^(Orb::Internal::Type::ArrayOf[Orb::PlanVersionPhase]) | nil,
        prices: ^(Orb::Internal::Type::ArrayOf[union: Orb::Price]),
        version: Integer
      }
    end
  end

  def test_set_default_plan_version_required_params
    response = @orb.beta.external_plan_id.set_default_plan_version("external_plan_id", version: 0)

    assert_pattern do
      response => Orb::Plan
    end

    assert_pattern do
      response => {
        id: String,
        adjustments: ^(Orb::Internal::Type::ArrayOf[union: Orb::Plan::Adjustment]),
        base_plan: Orb::Plan::BasePlan | nil,
        base_plan_id: String | nil,
        created_at: Time,
        currency: String,
        default_invoice_memo: String | nil,
        description: String,
        discount: Orb::Discount | nil,
        external_plan_id: String | nil,
        invoicing_currency: String,
        maximum: Orb::Maximum | nil,
        maximum_amount: String | nil,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        minimum: Orb::Minimum | nil,
        minimum_amount: String | nil,
        name: String,
        net_terms: Integer | nil,
        plan_phases: ^(Orb::Internal::Type::ArrayOf[Orb::Plan::PlanPhase]) | nil,
        prices: ^(Orb::Internal::Type::ArrayOf[union: Orb::Price]),
        product: Orb::Plan::Product,
        status: Orb::Plan::Status,
        trial_config: Orb::Plan::TrialConfig,
        version: Integer
      }
    end
  end
end
