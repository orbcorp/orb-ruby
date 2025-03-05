# frozen_string_literal: true

require_relative "../../test_helper"

class Orb::Test::Resources::Events::BackfillsTest < Orb::Test::ResourceTest
  def test_create_required_params
    response = @orb.events.backfills.create(
      timeframe_end: "2019-12-27T18:11:19.117Z",
      timeframe_start: "2019-12-27T18:11:19.117Z"
    )

    assert_pattern do
      response => Orb::Models::BackfillModel
    end

    assert_pattern do
      response => {
        id: String,
        close_time: Time | nil,
        created_at: Time,
        customer_id: String | nil,
        events_ingested: Integer,
        replace_existing_events: Orb::BooleanModel,
        reverted_at: Time | nil,
        status: Orb::Models::BackfillModel::Status,
        timeframe_end: Time,
        timeframe_start: Time,
        deprecation_filter: String | nil
      }
    end
  end

  def test_list
    response = @orb.events.backfills.list

    assert_pattern do
      response => Orb::Page
    end

    page = response.next_page
    assert_pattern do
      page => Orb::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Orb::Models::BackfillModel
    end

    assert_pattern do
      row => {
        id: String,
        close_time: Time | nil,
        created_at: Time,
        customer_id: String | nil,
        events_ingested: Integer,
        replace_existing_events: Orb::BooleanModel,
        reverted_at: Time | nil,
        status: Orb::Models::BackfillModel::Status,
        timeframe_end: Time,
        timeframe_start: Time,
        deprecation_filter: String | nil
      }
    end
  end

  def test_close
    response = @orb.events.backfills.close("backfill_id")

    assert_pattern do
      response => Orb::Models::BackfillModel
    end

    assert_pattern do
      response => {
        id: String,
        close_time: Time | nil,
        created_at: Time,
        customer_id: String | nil,
        events_ingested: Integer,
        replace_existing_events: Orb::BooleanModel,
        reverted_at: Time | nil,
        status: Orb::Models::BackfillModel::Status,
        timeframe_end: Time,
        timeframe_start: Time,
        deprecation_filter: String | nil
      }
    end
  end

  def test_fetch
    response = @orb.events.backfills.fetch("backfill_id")

    assert_pattern do
      response => Orb::Models::BackfillModel
    end

    assert_pattern do
      response => {
        id: String,
        close_time: Time | nil,
        created_at: Time,
        customer_id: String | nil,
        events_ingested: Integer,
        replace_existing_events: Orb::BooleanModel,
        reverted_at: Time | nil,
        status: Orb::Models::BackfillModel::Status,
        timeframe_end: Time,
        timeframe_start: Time,
        deprecation_filter: String | nil
      }
    end
  end

  def test_revert
    response = @orb.events.backfills.revert("backfill_id")

    assert_pattern do
      response => Orb::Models::BackfillModel
    end

    assert_pattern do
      response => {
        id: String,
        close_time: Time | nil,
        created_at: Time,
        customer_id: String | nil,
        events_ingested: Integer,
        replace_existing_events: Orb::BooleanModel,
        reverted_at: Time | nil,
        status: Orb::Models::BackfillModel::Status,
        timeframe_end: Time,
        timeframe_start: Time,
        deprecation_filter: String | nil
      }
    end
  end
end
