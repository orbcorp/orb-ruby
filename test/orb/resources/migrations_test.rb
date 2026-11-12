# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::MigrationsTest < Orb::Test::ResourceTest
  def test_create_required_params
    response = @orb.migrations.create(effective_time: :immediately, target_plan_version_number: 0)

    assert_pattern do
      response => Orb::Models::MigrationCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        effective_time: Orb::Models::MigrationCreateResponse::EffectiveTime | nil,
        ended_at: Time | nil,
        plan_id: String,
        started_at: Time | nil,
        status: Orb::Models::MigrationCreateResponse::Status,
        target_plan_version_number: Integer
      }
    end
  end

  def test_retrieve
    response = @orb.migrations.retrieve("migration_id")

    assert_pattern do
      response => Orb::Models::MigrationRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        effective_time: Orb::Models::MigrationRetrieveResponse::EffectiveTime | nil,
        ended_at: Time | nil,
        plan_id: String,
        started_at: Time | nil,
        status: Orb::Models::MigrationRetrieveResponse::Status,
        target_plan_version_number: Integer
      }
    end
  end

  def test_list
    response = @orb.migrations.list

    assert_pattern do
      response => Orb::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Orb::Models::MigrationListResponse
    end

    assert_pattern do
      row => {
        id: String,
        effective_time: Orb::Models::MigrationListResponse::EffectiveTime | nil,
        ended_at: Time | nil,
        plan_id: String,
        started_at: Time | nil,
        status: Orb::Models::MigrationListResponse::Status,
        target_plan_version_number: Integer
      }
    end
  end

  def test_cancel
    response = @orb.migrations.cancel("migration_id")

    assert_pattern do
      response => Orb::Models::MigrationCancelResponse
    end

    assert_pattern do
      response => {
        id: String,
        effective_time: Orb::Models::MigrationCancelResponse::EffectiveTime | nil,
        ended_at: Time | nil,
        plan_id: String,
        started_at: Time | nil,
        status: Orb::Models::MigrationCancelResponse::Status,
        target_plan_version_number: Integer
      }
    end
  end
end
