# frozen_string_literal: true

module Orb
  module Models
    module Plans
      # @see Orb::Resources::Plans::Migrations#list
      class MigrationListResponse < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute effective_time
        #
        #   @return [Date, Time, Symbol, Orb::Models::Plans::MigrationListResponse::EffectiveTime, nil]
        required :effective_time,
                 union: -> { Orb::Models::Plans::MigrationListResponse::EffectiveTime },
                 nil?: true

        # @!attribute plan_id
        #
        #   @return [String]
        required :plan_id, String

        # @!attribute status
        #
        #   @return [Symbol, Orb::Models::Plans::MigrationListResponse::Status]
        required :status, enum: -> { Orb::Models::Plans::MigrationListResponse::Status }

        # @!method initialize(id:, effective_time:, plan_id:, status:)
        #   @param id [String]
        #   @param effective_time [Date, Time, Symbol, Orb::Models::Plans::MigrationListResponse::EffectiveTime, nil]
        #   @param plan_id [String]
        #   @param status [Symbol, Orb::Models::Plans::MigrationListResponse::Status]

        # @see Orb::Models::Plans::MigrationListResponse#effective_time
        module EffectiveTime
          extend Orb::Internal::Type::Union

          variant Date

          variant Time

          variant const: -> { Orb::Models::Plans::MigrationListResponse::EffectiveTime::END_OF_TERM }

          # @!method self.variants
          #   @return [Array(Date, Time, Symbol)]

          define_sorbet_constant!(:Variants) do
            T.type_alias { T.any(Date, Time, Orb::Models::Plans::MigrationListResponse::EffectiveTime::TaggedSymbol) }
          end

          # @!group

          END_OF_TERM = :end_of_term

          # @!endgroup
        end

        # @see Orb::Models::Plans::MigrationListResponse#status
        module Status
          extend Orb::Internal::Type::Enum

          NOT_STARTED = :not_started
          IN_PROGRESS = :in_progress
          COMPLETED = :completed
          ACTION_NEEDED = :action_needed
          CANCELED = :canceled

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
