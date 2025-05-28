# frozen_string_literal: true

require_relative "../../test_helper"

class Orb::Test::Resources::Plans::VersionsTest < Orb::Test::ResourceTest
  def test_create_required_params
    response = @orb.plans.versions.create("plan_id", version: 0)

    assert_pattern do
      response => Orb::Models::Plans::VersionCreateResponse
    end

    assert_pattern do
      response => {
        adjustments: ^(Orb::Internal::Type::ArrayOf[union: Orb::Models::Plans::VersionCreateResponse::Adjustment]),
        created_at: Time,
        plan_phases: ^(Orb::Internal::Type::ArrayOf[Orb::Models::Plans::VersionCreateResponse::PlanPhase]) | nil,
        prices: ^(Orb::Internal::Type::ArrayOf[union: Orb::Price]),
        version: Integer
      }
    end
  end

  def test_retrieve_required_params
    response = @orb.plans.versions.retrieve("version", plan_id: "plan_id")

    assert_pattern do
      response => Orb::Models::Plans::VersionRetrieveResponse
    end

    assert_pattern do
      response => {
        adjustments: ^(Orb::Internal::Type::ArrayOf[union: Orb::Models::Plans::VersionRetrieveResponse::Adjustment]),
        created_at: Time,
        plan_phases: ^(Orb::Internal::Type::ArrayOf[Orb::Models::Plans::VersionRetrieveResponse::PlanPhase]) | nil,
        prices: ^(Orb::Internal::Type::ArrayOf[union: Orb::Price]),
        version: Integer
      }
    end
  end
end
