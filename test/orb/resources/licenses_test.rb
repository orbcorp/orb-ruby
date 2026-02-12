# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::LicensesTest < Orb::Test::ResourceTest
  def test_create_required_params
    response =
      @orb.licenses.create(
        external_license_id: "external_license_id",
        license_type_id: "license_type_id",
        subscription_id: "subscription_id"
      )

    assert_pattern do
      response => Orb::Models::LicenseCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        end_date: Time | nil,
        external_license_id: String,
        license_type_id: String,
        start_date: Time,
        status: Orb::Models::LicenseCreateResponse::Status,
        subscription_id: String
      }
    end
  end

  def test_retrieve
    response = @orb.licenses.retrieve("license_id")

    assert_pattern do
      response => Orb::Models::LicenseRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        end_date: Time | nil,
        external_license_id: String,
        license_type_id: String,
        start_date: Time,
        status: Orb::Models::LicenseRetrieveResponse::Status,
        subscription_id: String
      }
    end
  end

  def test_list_required_params
    response = @orb.licenses.list(subscription_id: "subscription_id")

    assert_pattern do
      response => Orb::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Orb::Models::LicenseListResponse
    end

    assert_pattern do
      row => {
        id: String,
        end_date: Time | nil,
        external_license_id: String,
        license_type_id: String,
        start_date: Time,
        status: Orb::Models::LicenseListResponse::Status,
        subscription_id: String
      }
    end
  end

  def test_deactivate
    response = @orb.licenses.deactivate("license_id")

    assert_pattern do
      response => Orb::Models::LicenseDeactivateResponse
    end

    assert_pattern do
      response => {
        id: String,
        end_date: Time | nil,
        external_license_id: String,
        license_type_id: String,
        start_date: Time,
        status: Orb::Models::LicenseDeactivateResponse::Status,
        subscription_id: String
      }
    end
  end

  def test_retrieve_by_external_id_required_params
    response =
      @orb.licenses.retrieve_by_external_id(
        "external_license_id",
        license_type_id: "license_type_id",
        subscription_id: "subscription_id"
      )

    assert_pattern do
      response => Orb::Models::LicenseRetrieveByExternalIDResponse
    end

    assert_pattern do
      response => {
        id: String,
        end_date: Time | nil,
        external_license_id: String,
        license_type_id: String,
        start_date: Time,
        status: Orb::Models::LicenseRetrieveByExternalIDResponse::Status,
        subscription_id: String
      }
    end
  end
end
