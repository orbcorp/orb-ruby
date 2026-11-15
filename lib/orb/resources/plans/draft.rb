# frozen_string_literal: true

module Orb
  module Resources
    class Plans
      # The [Plan](/core-concepts#plan-and-price) resource represents a plan that can be
      # subscribed to by a customer. Plans define the billing behavior of the
      # subscription. You can see more about how to configure prices in the
      # [Price resource](/reference/price).
      class Draft
        # This endpoint discards the plan's draft version. Prices and adjustments the
        # draft created stay in the Pricebook.
        #
        # @overload discard(plan_id, request_options: {})
        #
        # @param plan_id [String]
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Orb::Models::Plans::DraftDiscardParams
        def discard(plan_id, params = {})
          @client.request(
            method: :delete,
            path: ["plans/%1$s/draft", plan_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # This endpoint returns the plan's unpublished draft version, with its changes
        # applied on top of the latest published version. It returns a 404 if the plan has
        # no draft.
        #
        # @overload fetch(plan_id, request_options: {})
        #
        # @param plan_id [String]
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Plans::PlanVersionDraft]
        #
        # @see Orb::Models::Plans::DraftFetchParams
        def fetch(plan_id, params = {})
          @client.request(
            method: :get,
            path: ["plans/%1$s/draft", plan_id],
            model: Orb::Plans::PlanVersionDraft,
            options: params[:request_options]
          )
        end

        # This endpoint publishes the plan's draft as the next numbered version. A draft
        # that fails plan version validation is a 400 and is left as it was.
        #
        # @overload publish(plan_id, set_as_default: nil, request_options: {})
        #
        # @param plan_id [String]
        #
        # @param set_as_default [Boolean] Also make the new version the plan's default.
        #
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::PlanVersion]
        #
        # @see Orb::Models::Plans::DraftPublishParams
        def publish(plan_id, params = {})
          parsed, options = Orb::Plans::DraftPublishParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["plans/%1$s/draft/publish", plan_id],
            body: parsed,
            model: Orb::PlanVersion,
            options: options
          )
        end

        # This endpoint creates the plan's draft version or fully replaces its changes.
        # The changes are always relative to the latest published version. A save replaces
        # the draft; last write wins.
        #
        # @overload save(plan_id, add_adjustments: nil, add_prices: nil, description: nil, remove_adjustments: nil, remove_prices: nil, replace_adjustments: nil, replace_prices: nil, request_options: {})
        #
        # @param plan_id [String]
        #
        # @param add_adjustments [Array<Orb::Models::Plans::DraftSaveParams::AddAdjustment>, nil] Additional adjustments to be added to the plan.
        #
        # @param add_prices [Array<Orb::Models::Plans::DraftSaveParams::AddPrice>, nil] Additional prices to be added to the plan.
        #
        # @param description [String, nil] Optional description of what changes in this draft
        #
        # @param remove_adjustments [Array<Orb::Models::Plans::DraftSaveParams::RemoveAdjustment>, nil] Adjustments to be removed from the plan.
        #
        # @param remove_prices [Array<Orb::Models::Plans::DraftSaveParams::RemovePrice>, nil] Prices to be removed from the plan.
        #
        # @param replace_adjustments [Array<Orb::Models::Plans::DraftSaveParams::ReplaceAdjustment>, nil] Adjustments to be replaced with additional adjustments on the plan.
        #
        # @param replace_prices [Array<Orb::Models::Plans::DraftSaveParams::ReplacePrice>, nil] Prices to be replaced with additional prices on the plan.
        #
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Plans::PlanVersionDraft]
        #
        # @see Orb::Models::Plans::DraftSaveParams
        def save(plan_id, params = {})
          parsed, options = Orb::Plans::DraftSaveParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["plans/%1$s/draft", plan_id],
            body: parsed,
            model: Orb::Plans::PlanVersionDraft,
            options: options
          )
        end

        # @api private
        #
        # @param client [Orb::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
