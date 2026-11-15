# typed: strong

module Orb
  module Resources
    class Plans
      class ExternalPlanID
        # The [Plan](/core-concepts#plan-and-price) resource represents a plan that can be
        # subscribed to by a customer. Plans define the billing behavior of the
        # subscription. You can see more about how to configure prices in the
        # [Price resource](/reference/price).
        class Draft
          # This endpoint discards the plan's draft version. Prices and adjustments the
          # draft created stay in the Pricebook.
          sig do
            params(
              external_plan_id: String,
              request_options: Orb::RequestOptions::OrHash
            ).void
          end
          def discard(external_plan_id, request_options: {})
          end

          # This endpoint returns the plan's unpublished draft version, with its changes
          # applied on top of the latest published version. It returns a 404 if the plan has
          # no draft.
          sig do
            params(
              external_plan_id: String,
              request_options: Orb::RequestOptions::OrHash
            ).returns(Orb::Plans::PlanVersionDraft)
          end
          def fetch(external_plan_id, request_options: {})
          end

          # This endpoint publishes the plan's draft as the next numbered version. A draft
          # that fails plan version validation is a 400 and is left as it was.
          sig do
            params(
              external_plan_id: String,
              set_as_default: T::Boolean,
              request_options: Orb::RequestOptions::OrHash
            ).returns(Orb::PlanVersion)
          end
          def publish(
            external_plan_id,
            # Also make the new version the plan's default.
            set_as_default: nil,
            request_options: {}
          )
          end

          # This endpoint creates the plan's draft version or fully replaces its changes.
          # The changes are always relative to the latest published version. A save replaces
          # the draft; last write wins.
          sig do
            params(
              external_plan_id: String,
              add_adjustments:
                T.nilable(
                  T::Array[
                    Orb::Plans::ExternalPlanID::DraftSaveParams::AddAdjustment::OrHash
                  ]
                ),
              add_prices:
                T.nilable(
                  T::Array[
                    Orb::Plans::ExternalPlanID::DraftSaveParams::AddPrice::OrHash
                  ]
                ),
              description: T.nilable(String),
              remove_adjustments:
                T.nilable(
                  T::Array[
                    Orb::Plans::ExternalPlanID::DraftSaveParams::RemoveAdjustment::OrHash
                  ]
                ),
              remove_prices:
                T.nilable(
                  T::Array[
                    Orb::Plans::ExternalPlanID::DraftSaveParams::RemovePrice::OrHash
                  ]
                ),
              replace_adjustments:
                T.nilable(
                  T::Array[
                    Orb::Plans::ExternalPlanID::DraftSaveParams::ReplaceAdjustment::OrHash
                  ]
                ),
              replace_prices:
                T.nilable(
                  T::Array[
                    Orb::Plans::ExternalPlanID::DraftSaveParams::ReplacePrice::OrHash
                  ]
                ),
              request_options: Orb::RequestOptions::OrHash
            ).returns(Orb::Plans::PlanVersionDraft)
          end
          def save(
            external_plan_id,
            # Additional adjustments to be added to the plan.
            add_adjustments: nil,
            # Additional prices to be added to the plan.
            add_prices: nil,
            # Optional description of what changes in this draft
            description: nil,
            # Adjustments to be removed from the plan.
            remove_adjustments: nil,
            # Prices to be removed from the plan.
            remove_prices: nil,
            # Adjustments to be replaced with additional adjustments on the plan.
            replace_adjustments: nil,
            # Prices to be replaced with additional prices on the plan.
            replace_prices: nil,
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
end
