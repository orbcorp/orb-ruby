# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::DimensionalPriceGroupsTest < Orb::Test::ResourceTest
  def test_create_required_params
    response =
      @orb.dimensional_price_groups.create(
        billable_metric_id: "billable_metric_id",
        dimensions: %w[region instance_type],
        name: "name"
      )

    assert_pattern do
      response => Orb::DimensionalPriceGroup
    end

    assert_pattern do
      response => {
        id: String,
        billable_metric_id: String,
        dimensions: ^(Orb::Internal::Type::ArrayOf[String]),
        external_dimensional_price_group_id: String | nil,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        name: String
      }
    end
  end

  def test_retrieve
    response = @orb.dimensional_price_groups.retrieve("dimensional_price_group_id")

    assert_pattern do
      response => Orb::DimensionalPriceGroup
    end

    assert_pattern do
      response => {
        id: String,
        billable_metric_id: String,
        dimensions: ^(Orb::Internal::Type::ArrayOf[String]),
        external_dimensional_price_group_id: String | nil,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        name: String
      }
    end
  end

  def test_update
    response = @orb.dimensional_price_groups.update("dimensional_price_group_id")

    assert_pattern do
      response => Orb::DimensionalPriceGroup
    end

    assert_pattern do
      response => {
        id: String,
        billable_metric_id: String,
        dimensions: ^(Orb::Internal::Type::ArrayOf[String]),
        external_dimensional_price_group_id: String | nil,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        name: String
      }
    end
  end

  def test_list
    response = @orb.dimensional_price_groups.list

    assert_pattern do
      response => Orb::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Orb::DimensionalPriceGroup
    end

    assert_pattern do
      row => {
        id: String,
        billable_metric_id: String,
        dimensions: ^(Orb::Internal::Type::ArrayOf[String]),
        external_dimensional_price_group_id: String | nil,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        name: String
      }
    end
  end
end
