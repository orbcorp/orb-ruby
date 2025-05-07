# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::MetricsTest < Orb::Test::ResourceTest
  def test_create_required_params
    response =
      @orb.metrics.create(
        description: "Sum of bytes downloaded in fast mode",
        item_id: "item_id",
        name: "Bytes downloaded",
        sql: "SELECT sum(bytes_downloaded) FROM events WHERE download_speed = 'fast'"
      )

    assert_pattern do
      response => Orb::BillableMetric
    end

    assert_pattern do
      response => {
        id: String,
        description: String | nil,
        item: Orb::Item,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        name: String,
        status: Orb::BillableMetric::Status
      }
    end
  end

  def test_update
    response = @orb.metrics.update("metric_id")

    assert_pattern do
      response => Orb::BillableMetric
    end

    assert_pattern do
      response => {
        id: String,
        description: String | nil,
        item: Orb::Item,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        name: String,
        status: Orb::BillableMetric::Status
      }
    end
  end

  def test_list
    response = @orb.metrics.list

    assert_pattern do
      response => Orb::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Orb::BillableMetric
    end

    assert_pattern do
      row => {
        id: String,
        description: String | nil,
        item: Orb::Item,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        name: String,
        status: Orb::BillableMetric::Status
      }
    end
  end

  def test_fetch
    response = @orb.metrics.fetch("metric_id")

    assert_pattern do
      response => Orb::BillableMetric
    end

    assert_pattern do
      response => {
        id: String,
        description: String | nil,
        item: Orb::Item,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        name: String,
        status: Orb::BillableMetric::Status
      }
    end
  end
end
