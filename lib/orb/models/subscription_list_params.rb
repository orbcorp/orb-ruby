# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Subscriptions#list
    class SubscriptionListParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute billing_entity_id
      #   Filters to objects issued by this billing entity. Filtering on the account's
      #   default billing entity also matches objects created before the account had
      #   billing entities.
      #
      #   @return [String, nil]
      optional :billing_entity_id, String, nil?: true

      # @!attribute created_at_gt
      #
      #   @return [Time, nil]
      optional :created_at_gt, Time, nil?: true

      # @!attribute created_at_gte
      #
      #   @return [Time, nil]
      optional :created_at_gte, Time, nil?: true

      # @!attribute created_at_lt
      #
      #   @return [Time, nil]
      optional :created_at_lt, Time, nil?: true

      # @!attribute created_at_lte
      #
      #   @return [Time, nil]
      optional :created_at_lte, Time, nil?: true

      # @!attribute cursor
      #   Cursor for pagination. This can be populated by the `next_cursor` value returned
      #   from the initial request.
      #
      #   @return [String, nil]
      optional :cursor, String, nil?: true

      # @!attribute customer_id
      #
      #   @return [String, Array<String>, nil]
      optional :customer_id, union: -> { Orb::SubscriptionListParams::CustomerID }, nil?: true

      # @!attribute external_customer_id
      #
      #   @return [String, Array<String>, nil]
      optional :external_customer_id,
               union: -> {
                 Orb::SubscriptionListParams::ExternalCustomerID
               },
               nil?: true

      # @!attribute external_plan_id
      #
      #   @return [String, nil]
      optional :external_plan_id, String, nil?: true

      # @!attribute limit
      #   The number of items to fetch. Defaults to 20.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute plan_id
      #
      #   @return [String, nil]
      optional :plan_id, String, nil?: true

      # @!attribute status
      #
      #   @return [Symbol, Orb::Models::SubscriptionStatusFilter, Array<Symbol, Orb::Models::SubscriptionStatusFilter>, nil]
      optional :status, union: -> { Orb::SubscriptionListParams::Status }, nil?: true

      # @!method initialize(billing_entity_id: nil, created_at_gt: nil, created_at_gte: nil, created_at_lt: nil, created_at_lte: nil, cursor: nil, customer_id: nil, external_customer_id: nil, external_plan_id: nil, limit: nil, plan_id: nil, status: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::SubscriptionListParams} for more details.
      #
      #   @param billing_entity_id [String, nil] Filters to objects issued by this billing entity. Filtering on the account's def
      #
      #   @param created_at_gt [Time, nil]
      #
      #   @param created_at_gte [Time, nil]
      #
      #   @param created_at_lt [Time, nil]
      #
      #   @param created_at_lte [Time, nil]
      #
      #   @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
      #
      #   @param customer_id [String, Array<String>, nil]
      #
      #   @param external_customer_id [String, Array<String>, nil]
      #
      #   @param external_plan_id [String, nil]
      #
      #   @param limit [Integer] The number of items to fetch. Defaults to 20.
      #
      #   @param plan_id [String, nil]
      #
      #   @param status [Symbol, Orb::Models::SubscriptionStatusFilter, Array<Symbol, Orb::Models::SubscriptionStatusFilter>, nil]
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      module CustomerID
        extend Orb::Internal::Type::Union

        variant String

        variant -> { Orb::Models::SubscriptionListParams::CustomerID::StringArray }

        # @!method self.variants
        #   @return [Array(String, Array<String>)]

        # @type [Orb::Internal::Type::Converter]
        StringArray = Orb::Internal::Type::ArrayOf[String]
      end

      module ExternalCustomerID
        extend Orb::Internal::Type::Union

        variant String

        variant -> { Orb::Models::SubscriptionListParams::ExternalCustomerID::StringArray }

        # @!method self.variants
        #   @return [Array(String, Array<String>)]

        # @type [Orb::Internal::Type::Converter]
        StringArray = Orb::Internal::Type::ArrayOf[String]
      end

      module Status
        extend Orb::Internal::Type::Union

        variant enum: -> { Orb::SubscriptionStatusFilter }

        variant -> { Orb::Models::SubscriptionListParams::Status::SubscriptionStatusFilterArray }

        # @!method self.variants
        #   @return [Array(Symbol, Orb::Models::SubscriptionStatusFilter, Array<Symbol, Orb::Models::SubscriptionStatusFilter>)]

        # @type [Orb::Internal::Type::Converter]
        SubscriptionStatusFilterArray = Orb::Internal::Type::ArrayOf[enum: -> {
          Orb::SubscriptionStatusFilter
        }]
      end
    end
  end
end
