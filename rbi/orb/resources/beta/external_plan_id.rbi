# typed: strong

module Orb
  module Resources
    class Beta
      class ExternalPlanID
        # This API endpoint is in beta and its interface may change. It is recommended for
        # use only in test mode.
        #
        # This endpoint allows the creation of a new plan version for an existing plan.
        sig do
          params(
            external_plan_id: String,
            version: Integer,
            add_adjustments:
              T.nilable(
                T::Array[
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddAdjustment::OrHash
                ]
              ),
            add_prices:
              T.nilable(
                T::Array[
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::OrHash
                ]
              ),
            remove_adjustments:
              T.nilable(
                T::Array[
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::RemoveAdjustment::OrHash
                ]
              ),
            remove_prices:
              T.nilable(
                T::Array[
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::RemovePrice::OrHash
                ]
              ),
            replace_adjustments:
              T.nilable(
                T::Array[
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplaceAdjustment::OrHash
                ]
              ),
            replace_prices:
              T.nilable(
                T::Array[
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::OrHash
                ]
              ),
            set_as_default: T.nilable(T::Boolean),
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::PlanVersion)
        end
        def create_plan_version(
          external_plan_id,
          # New version number.
          version:,
          # Additional adjustments to be added to the plan.
          add_adjustments: nil,
          # Additional prices to be added to the plan.
          add_prices: nil,
          # Adjustments to be removed from the plan.
          remove_adjustments: nil,
          # Prices to be removed from the plan.
          remove_prices: nil,
          # Adjustments to be replaced with additional adjustments on the plan.
          replace_adjustments: nil,
          # Prices to be replaced with additional prices on the plan.
          replace_prices: nil,
          # Set this new plan version as the default
          set_as_default: nil,
          request_options: {}
        )
        end

        # This API endpoint is in beta and its interface may change. It is recommended for
        # use only in test mode.
        #
        # This endpoint is used to fetch a plan version. It returns the phases, prices,
        # and adjustments present on this version of the plan.
        sig do
          params(
            version: String,
            external_plan_id: String,
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::PlanVersion)
        end
        def fetch_plan_version(version, external_plan_id:, request_options: {})
        end

        # This API endpoint is in beta and its interface may change. It is recommended for
        # use only in test mode.
        #
        # This endpoint allows setting the default version of a plan.
        sig do
          params(
            external_plan_id: String,
            version: Integer,
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::Plan)
        end
        def set_default_plan_version(
          external_plan_id,
          # Plan version to set as the default.
          version:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Orb::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
