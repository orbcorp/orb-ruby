# typed: strong

module Orb
  module Resources
    class Plans
      class Versions
        # This API endpoint is in beta and its interface may change. It is recommended for
        # use only in test mode.
        #
        # This endpoint allows the creation of a new plan version for an existing plan.
        sig do
          params(
            plan_id: String,
            version: Integer,
            add_adjustments:
              T.nilable(
                T::Array[Orb::Plans::VersionCreateParams::AddAdjustment::OrHash]
              ),
            add_prices:
              T.nilable(
                T::Array[Orb::Plans::VersionCreateParams::AddPrice::OrHash]
              ),
            remove_adjustments:
              T.nilable(
                T::Array[
                  Orb::Plans::VersionCreateParams::RemoveAdjustment::OrHash
                ]
              ),
            remove_prices:
              T.nilable(
                T::Array[Orb::Plans::VersionCreateParams::RemovePrice::OrHash]
              ),
            replace_adjustments:
              T.nilable(
                T::Array[
                  Orb::Plans::VersionCreateParams::ReplaceAdjustment::OrHash
                ]
              ),
            replace_prices:
              T.nilable(
                T::Array[Orb::Plans::VersionCreateParams::ReplacePrice::OrHash]
              ),
            set_as_default: T.nilable(T::Boolean),
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::Models::Plans::VersionCreateResponse)
        end
        def create(
          plan_id,
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
            plan_id: String,
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::Models::Plans::VersionRetrieveResponse)
        end
        def retrieve(version, plan_id:, request_options: {})
        end

        # @api private
        sig { params(client: Orb::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
