# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Subscriptions#list_summary
    class SubscriptionListSummaryResponse < Orb::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute customer
      #
      #   @return [Orb::Models::CustomerMinified]
      required :customer, -> { Orb::CustomerMinified }

      # @!attribute end_date
      #   The date Orb stops billing for this subscription.
      #
      #   @return [Time, nil]
      required :end_date, Time, nil?: true

      # @!attribute metadata
      #   User specified key-value pairs for the resource. If not present, this defaults
      #   to an empty dictionary. Individual keys can be removed by setting the value to
      #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
      #   `null`.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, Orb::Internal::Type::HashOf[String]

      # @!attribute name
      #   The name of the subscription.
      #
      #   @return [String]
      required :name, String

      # @!attribute plan
      #
      #   @return [Orb::Models::SubscriptionListSummaryResponse::Plan, nil]
      required :plan, -> { Orb::Models::SubscriptionListSummaryResponse::Plan }, nil?: true

      # @!attribute start_date
      #   The date Orb starts billing for this subscription.
      #
      #   @return [Time]
      required :start_date, Time

      # @!attribute status
      #
      #   @return [Symbol, Orb::Models::SubscriptionListSummaryResponse::Status]
      required :status, enum: -> { Orb::Models::SubscriptionListSummaryResponse::Status }

      # @!method initialize(id:, created_at:, customer:, end_date:, metadata:, name:, plan:, start_date:, status:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::SubscriptionListSummaryResponse} for more details.
      #
      #   A subscription's own fields, with its plan and customer as references, as listed
      #   by List subscription summaries and carried in standard webhook payloads. Fetch
      #   the subscription for its price intervals, billing periods, plan phases and other
      #   derived fields.
      #
      #   @param id [String]
      #
      #   @param created_at [Time]
      #
      #   @param customer [Orb::Models::CustomerMinified]
      #
      #   @param end_date [Time, nil] The date Orb stops billing for this subscription.
      #
      #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
      #
      #   @param name [String] The name of the subscription.
      #
      #   @param plan [Orb::Models::SubscriptionListSummaryResponse::Plan, nil]
      #
      #   @param start_date [Time] The date Orb starts billing for this subscription.
      #
      #   @param status [Symbol, Orb::Models::SubscriptionListSummaryResponse::Status]

      # @see Orb::Models::SubscriptionListSummaryResponse#plan
      class Plan < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        required :id, String, nil?: true

        # @!attribute external_plan_id
        #   An optional user-defined ID for this plan resource, used throughout the system
        #   as an alias for this Plan. Use this field to identify a plan by an existing
        #   identifier in your system.
        #
        #   @return [String, nil]
        required :external_plan_id, String, nil?: true

        # @!attribute name
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!method initialize(id:, external_plan_id:, name:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::SubscriptionListSummaryResponse::Plan} for more details.
        #
        #   @param id [String, nil]
        #
        #   @param external_plan_id [String, nil] An optional user-defined ID for this plan resource, used throughout the system a
        #
        #   @param name [String, nil]
      end

      # @see Orb::Models::SubscriptionListSummaryResponse#status
      module Status
        extend Orb::Internal::Type::Enum

        ACTIVE = :active
        ENDED = :ended
        UPCOMING = :upcoming

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
