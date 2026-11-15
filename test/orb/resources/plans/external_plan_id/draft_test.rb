# frozen_string_literal: true

require_relative "../../../test_helper"

class Orb::Test::Resources::Plans::ExternalPlanID::DraftTest < Orb::Test::ResourceTest
  def test_discard
    response = @orb.plans.external_plan_id.draft.discard("external_plan_id")

    assert_pattern do
      response => nil
    end
  end

  def test_fetch
    response = @orb.plans.external_plan_id.draft.fetch("external_plan_id")

    assert_pattern do
      response => Orb::Plans::PlanVersionDraft
    end

    assert_pattern do
      response => {
        adjustments: ^(Orb::Internal::Type::ArrayOf[union: Orb::Plans::PlanVersionDraft::Adjustment]),
        base_version: Integer,
        created_at: Time,
        description: String | nil,
        plan_id: String,
        plan_phases: ^(Orb::Internal::Type::ArrayOf[Orb::PlanVersionPhase]) | nil,
        prices: ^(Orb::Internal::Type::ArrayOf[union: Orb::Price])
      }
    end
  end

  def test_publish
    response = @orb.plans.external_plan_id.draft.publish("external_plan_id")

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

  def test_save
    response = @orb.plans.external_plan_id.draft.save("external_plan_id")

    assert_pattern do
      response => Orb::Plans::PlanVersionDraft
    end

    assert_pattern do
      response => {
        adjustments: ^(Orb::Internal::Type::ArrayOf[union: Orb::Plans::PlanVersionDraft::Adjustment]),
        base_version: Integer,
        created_at: Time,
        description: String | nil,
        plan_id: String,
        plan_phases: ^(Orb::Internal::Type::ArrayOf[Orb::PlanVersionPhase]) | nil,
        prices: ^(Orb::Internal::Type::ArrayOf[union: Orb::Price])
      }
    end
  end
end
