# frozen_string_literal: true

require_relative "../../../test_helper"

class Orb::Test::Resources::Plans::ExternalPlanID::VersionsTest < Orb::Test::ResourceTest
  def test_create_required_params
    response = @orb.plans.external_plan_id.versions.create("external_plan_id", version: 0)

    assert_pattern do
      response => Orb::Models::Plans::ExternalPlanID::VersionCreateResponse
    end

    assert_pattern do
      response => {
        adjustments: ^(Orb::Internal::Type::ArrayOf[union: Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment]),
        created_at: Time,
        plan_phases: ^(Orb::Internal::Type::ArrayOf[Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::PlanPhase]) | nil,
        prices: ^(Orb::Internal::Type::ArrayOf[union: Orb::Price]),
        version: Integer
      }
    end
  end

  def test_retrieve_required_params
    response = @orb.plans.external_plan_id.versions.retrieve("version", external_plan_id: "external_plan_id")

    assert_pattern do
      response => Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse
    end

    assert_pattern do
      response => {
        adjustments: ^(Orb::Internal::Type::ArrayOf[union: Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment]),
        created_at: Time,
        plan_phases: ^(Orb::Internal::Type::ArrayOf[Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::PlanPhase]) | nil,
        prices: ^(Orb::Internal::Type::ArrayOf[union: Orb::Price]),
        version: Integer
      }
    end
  end
end
