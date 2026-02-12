# frozen_string_literal: true

require_relative "../../test_helper"

class Orb::Test::Resources::Licenses::UsageTest < Orb::Test::ResourceTest
  def test_get_all_usage_required_params
    response =
      @orb.licenses.usage.get_all_usage(
        license_type_id: "license_type_id",
        subscription_id: "subscription_id"
      )

    assert_pattern do
      response => Orb::Models::Licenses::UsageGetAllUsageResponse
    end

    assert_pattern do
      response => {
        data: ^(Orb::Internal::Type::ArrayOf[Orb::Models::Licenses::UsageGetAllUsageResponse::Data]),
        pagination_metadata: Orb::PaginationMetadata
      }
    end
  end

  def test_get_usage
    response = @orb.licenses.usage.get_usage("license_id")

    assert_pattern do
      response => Orb::Models::Licenses::UsageGetUsageResponse
    end

    assert_pattern do
      response => {
        data: ^(Orb::Internal::Type::ArrayOf[Orb::Models::Licenses::UsageGetUsageResponse::Data]),
        pagination_metadata: Orb::PaginationMetadata
      }
    end
  end
end
