# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::ItemsTest < Orb::Test::ResourceTest
  def test_create_required_params
    response = @orb.items.create(name: "API requests")

    assert_pattern do
      response => Orb::Models::Item
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        external_connections: ^(Orb::ArrayOf[Orb::Models::Item::ExternalConnection]),
        name: String
      }
    end
  end

  def test_update
    response = @orb.items.update("item_id")

    assert_pattern do
      response => Orb::Models::Item
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        external_connections: ^(Orb::ArrayOf[Orb::Models::Item::ExternalConnection]),
        name: String
      }
    end
  end

  def test_list
    response = @orb.items.list

    assert_pattern do
      response => Orb::Page
    end

    page = response.next_page
    assert_pattern do
      page => Orb::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Orb::Models::Item
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        external_connections: ^(Orb::ArrayOf[Orb::Models::Item::ExternalConnection]),
        name: String
      }
    end
  end

  def test_fetch
    response = @orb.items.fetch("item_id")

    assert_pattern do
      response => Orb::Models::Item
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        external_connections: ^(Orb::ArrayOf[Orb::Models::Item::ExternalConnection]),
        name: String
      }
    end
  end
end
