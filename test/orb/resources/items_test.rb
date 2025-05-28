# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::ItemsTest < Orb::Test::ResourceTest
  def test_create_required_params
    response = @orb.items.create(name: "API requests")

    assert_pattern do
      response => Orb::Item
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        external_connections: ^(Orb::Internal::Type::ArrayOf[Orb::Item::ExternalConnection]),
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        name: String
      }
    end
  end

  def test_update
    response = @orb.items.update("item_id")

    assert_pattern do
      response => Orb::Item
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        external_connections: ^(Orb::Internal::Type::ArrayOf[Orb::Item::ExternalConnection]),
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        name: String
      }
    end
  end

  def test_list
    response = @orb.items.list

    assert_pattern do
      response => Orb::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Orb::Item
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        external_connections: ^(Orb::Internal::Type::ArrayOf[Orb::Item::ExternalConnection]),
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        name: String
      }
    end
  end

  def test_archive
    response = @orb.items.archive("item_id")

    assert_pattern do
      response => Orb::Item
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        external_connections: ^(Orb::Internal::Type::ArrayOf[Orb::Item::ExternalConnection]),
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        name: String
      }
    end
  end

  def test_fetch
    response = @orb.items.fetch("item_id")

    assert_pattern do
      response => Orb::Item
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        external_connections: ^(Orb::Internal::Type::ArrayOf[Orb::Item::ExternalConnection]),
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        name: String
      }
    end
  end
end
