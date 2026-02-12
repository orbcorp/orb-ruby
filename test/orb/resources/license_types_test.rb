# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::LicenseTypesTest < Orb::Test::ResourceTest
  def test_create_required_params
    response = @orb.license_types.create(grouping_key: "grouping_key", name: "name")

    assert_pattern do
      response => Orb::Models::LicenseTypeCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        grouping_key: String,
        name: String
      }
    end
  end

  def test_retrieve
    response = @orb.license_types.retrieve("license_type_id")

    assert_pattern do
      response => Orb::Models::LicenseTypeRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        grouping_key: String,
        name: String
      }
    end
  end

  def test_list
    response = @orb.license_types.list

    assert_pattern do
      response => Orb::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Orb::Models::LicenseTypeListResponse
    end

    assert_pattern do
      row => {
        id: String,
        grouping_key: String,
        name: String
      }
    end
  end
end
