# frozen_string_literal: true

require_relative "../../test_helper"

class Orb::Test::Resources::Plans::MigrationsTest < Orb::Test::ResourceTest
  def test_retrieve_required_params
    response = @orb.plans.migrations.retrieve("migration_id", plan_id: "plan_id")

    assert_pattern do
      response => Orb::Models::Plans::MigrationRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        effective_time: Orb::Models::Plans::MigrationRetrieveResponse::EffectiveTime | nil,
        plan_id: String,
        status: Orb::Models::Plans::MigrationRetrieveResponse::Status
      }
    end
  end

  def test_list
    response = @orb.plans.migrations.list("plan_id")

    assert_pattern do
      response => Orb::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Orb::Models::Plans::MigrationListResponse
    end

    assert_pattern do
      row => {
        id: String,
        effective_time: Orb::Models::Plans::MigrationListResponse::EffectiveTime | nil,
        plan_id: String,
        status: Orb::Models::Plans::MigrationListResponse::Status
      }
    end
  end

  def test_cancel_required_params
    response = @orb.plans.migrations.cancel("migration_id", plan_id: "plan_id")

    assert_pattern do
      response => Orb::Models::Plans::MigrationCancelResponse
    end

    assert_pattern do
      response => {
        id: String,
        effective_time: Orb::Models::Plans::MigrationCancelResponse::EffectiveTime | nil,
        plan_id: String,
        status: Orb::Models::Plans::MigrationCancelResponse::Status
      }
    end
  end
end
