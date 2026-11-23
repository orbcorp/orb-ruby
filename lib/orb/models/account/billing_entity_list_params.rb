# frozen_string_literal: true

module Orb
  module Models
    module Account
      # @see Orb::Resources::Account::BillingEntities#list
      class BillingEntityListParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute cursor
        #   Cursor for pagination. This can be populated by the `next_cursor` value returned
        #   from the initial request.
        #
        #   @return [String, nil]
        optional :cursor, String, nil?: true

        # @!attribute limit
        #   The number of items to fetch. Defaults to 20.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute status
        #   Only return billing entities with this status. Omit to return both.
        #
        #   @return [Symbol, Orb::Models::Account::BillingEntityListParams::Status, nil]
        optional :status, enum: -> { Orb::Account::BillingEntityListParams::Status }, nil?: true

        # @!method initialize(cursor: nil, limit: nil, status: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Account::BillingEntityListParams} for more details.
        #
        #   @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
        #
        #   @param limit [Integer] The number of items to fetch. Defaults to 20.
        #
        #   @param status [Symbol, Orb::Models::Account::BillingEntityListParams::Status, nil] Only return billing entities with this status. Omit to return both.
        #
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

        # Only return billing entities with this status. Omit to return both.
        module Status
          extend Orb::Internal::Type::Enum

          ACTIVE = :active
          ARCHIVED = :archived

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
