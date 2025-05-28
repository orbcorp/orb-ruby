# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::PlansTest < Orb::Test::ResourceTest
  def test_create_required_params
    response =
      @orb.plans.create(
        currency: "currency",
        name: "name",
        prices: [
          {
            cadence: :annual,
            item_id: "item_id",
            model_type: :unit,
            name: "Annual fee",
            unit_config: {unit_amount: "unit_amount"}
          }
        ]
      )

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
        maximum: Orb::Plan::Maximum | nil,
        maximum_amount: String | nil,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        minimum: Orb::Plan::Minimum | nil,
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

  def test_update
    response = @orb.plans.update("plan_id")

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
        maximum: Orb::Plan::Maximum | nil,
        maximum_amount: String | nil,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        minimum: Orb::Plan::Minimum | nil,
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

  def test_list
    response = @orb.plans.list

    assert_pattern do
      response => Orb::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Orb::Plan
    end

    assert_pattern do
      row => {
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
        maximum: Orb::Plan::Maximum | nil,
        maximum_amount: String | nil,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        minimum: Orb::Plan::Minimum | nil,
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

  def test_fetch
    response = @orb.plans.fetch("plan_id")

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
        maximum: Orb::Plan::Maximum | nil,
        maximum_amount: String | nil,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        minimum: Orb::Plan::Minimum | nil,
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

  def test_set_default_version_required_params
    response = @orb.plans.set_default_version("plan_id", version: 0)

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
        maximum: Orb::Plan::Maximum | nil,
        maximum_amount: String | nil,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        minimum: Orb::Plan::Minimum | nil,
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
