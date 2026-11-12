# frozen_string_literal: true

require_relative "../../test_helper"

class Orb::Test::Resources::Migrations::SubscriptionsTest < Orb::Test::ResourceTest
  def test_list
    response = @orb.migrations.subscriptions.list("migration_id")

    assert_pattern do
      response => Orb::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Orb::MigrationSubscription
    end

    assert_pattern do
      row => {
        customer: Orb::CustomerMinified,
        effective_date: Time | nil,
        failure_reason: String | nil,
        status: Orb::MigrationSubscription::Status,
        subscription_id: String
      }
    end
  end
end
