# typed: strong

module Orb
  module Resources
    class Plans
      class ExternalPlanID
        # This endpoint can be used to update the `external_plan_id`, and `metadata` of an
        # existing plan.
        #
        # Other fields on a customer are currently immutable.
        sig do
          params(
            other_external_plan_id: String,
            external_plan_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Internal::AnyHash))
          )
            .returns(Orb::Models::Plan)
        end
        def update(
          other_external_plan_id,
          # An optional user-defined ID for this plan resource, used throughout the system
          # as an alias for this Plan. Use this field to identify a plan by an existing
          # identifier in your system.
          external_plan_id: nil,
          # User-specified key/value pairs for the resource. Individual keys can be removed
          # by setting the value to `null`, and the entire metadata mapping can be cleared
          # by setting `metadata` to `null`.
          metadata: nil,
          request_options: {}
        ); end
        # This endpoint is used to fetch [plan](/core-concepts##plan-and-price) details
        # given an external_plan_id identifier. It returns information about the prices
        # included in the plan and their configuration, as well as the product that the
        # plan is attached to.
        #
        # If multiple plans are found to contain the specified external_plan_id, the
        # active plans will take priority over archived ones, and among those, the
        # endpoint will return the most recently created plan.
        #
        # ## Serialized prices
        #
        # Orb supports a few different pricing models out of the box. Each of these models
        # is serialized differently in a given [Price](/core-concepts#plan-and-price)
        # object. The `model_type` field determines the key for the configuration object
        # that is present. A detailed explanation of price types can be found in the
        # [Price schema](/core-concepts#plan-and-price). "
        sig do
          params(
            external_plan_id: String,
            request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Internal::AnyHash))
          )
            .returns(Orb::Models::Plan)
        end
        def fetch(external_plan_id, request_options: {}); end

        # @api private
        sig { params(client: Orb::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
