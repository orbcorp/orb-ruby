# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::MetricsTest < Minitest::Test
  def before_all
    @orb = Orb::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @orb.metrics.create(
      description: "Sum of bytes downloaded in fast mode",
      item_id: "item_id",
      name: "Bytes downloaded",
      sql: "SELECT sum(bytes_downloaded) FROM events WHERE download_speed = 'fast'"
    )

    assert_pattern do
      response => Orb::Models::BillableMetric
    end

    assert_pattern do
      response => {
        id: String,
        description: String | nil,
        item: Orb::Models::Item,
        metadata: ^(Orb::HashOf[String]),
        name: String,
        status: Orb::Models::BillableMetric::Status
      }
    end
  end

  def test_update
    response = @orb.metrics.update("metric_id")

    assert_pattern do
      response => Orb::Models::BillableMetric
    end

    assert_pattern do
      response => {
        id: String,
        description: String | nil,
        item: Orb::Models::Item,
        metadata: ^(Orb::HashOf[String]),
        name: String,
        status: Orb::Models::BillableMetric::Status
      }
    end
  end

  def test_list
    response = @orb.metrics.list

    assert_pattern do
      response => Orb::Page
    end

    page = response.next_page
    assert_pattern do
      page => Orb::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Orb::Models::BillableMetric
    end

    assert_pattern do
      row => {
        id: String,
        description: String | nil,
        item: Orb::Models::Item,
        metadata: ^(Orb::HashOf[String]),
        name: String,
        status: Orb::Models::BillableMetric::Status
      }
    end
  end

  def test_fetch
    response = @orb.metrics.fetch("metric_id")

    assert_pattern do
      response => Orb::Models::BillableMetric
    end

    assert_pattern do
      response => {
        id: String,
        description: String | nil,
        item: Orb::Models::Item,
        metadata: ^(Orb::HashOf[String]),
        name: String,
        status: Orb::Models::BillableMetric::Status
      }
    end
  end
end
