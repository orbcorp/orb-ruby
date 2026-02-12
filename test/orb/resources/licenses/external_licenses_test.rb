# frozen_string_literal: true

require_relative "../../test_helper"

class Orb::Test::Resources::Licenses::ExternalLicensesTest < Orb::Test::ResourceTest
  def test_get_usage_required_params
    response =
      @orb.licenses.external_licenses.get_usage(
        "external_license_id",
        license_type_id: "license_type_id",
        subscription_id: "subscription_id"
      )

    assert_pattern do
      response => Orb::Models::Licenses::ExternalLicenseGetUsageResponse
    end

    assert_pattern do
      response => {
        data: ^(Orb::Internal::Type::ArrayOf[Orb::Models::Licenses::ExternalLicenseGetUsageResponse::Data]),
        pagination_metadata: Orb::PaginationMetadata
      }
    end
  end
end
