# frozen_string_literal: true

module Orb
  module Models
    module Plans
      # @see Orb::Resources::Plans::Migrations#cancel
      class MigrationCancelResponse < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute effective_time
        #
        #   @return [Date, Time, Symbol, Orb::Models::Plans::MigrationCancelResponse::EffectiveTime, nil]
        required :effective_time,
                 union: -> { Orb::Models::Plans::MigrationCancelResponse::EffectiveTime },
                 nil?: true

        # @!attribute plan_id
        #
        #   @return [String]
        required :plan_id, String

        # @!attribute status
        #
        #   @return [Symbol, Orb::Models::Plans::MigrationCancelResponse::Status]
        required :status, enum: -> { Orb::Models::Plans::MigrationCancelResponse::Status }

        # @!method initialize(id:, effective_time:, plan_id:, status:)
        #   @param id [String]
        #   @param effective_time [Date, Time, Symbol, Orb::Models::Plans::MigrationCancelResponse::EffectiveTime, nil]
        #   @param plan_id [String]
        #   @param status [Symbol, Orb::Models::Plans::MigrationCancelResponse::Status]

        # @see Orb::Models::Plans::MigrationCancelResponse#effective_time
        module EffectiveTime
          extend Orb::Internal::Type::Union

          variant Date

          variant Time

          variant const: -> { Orb::Models::Plans::MigrationCancelResponse::EffectiveTime::END_OF_TERM }

          # @!method self.variants
          #   @return [Array(Date, Time, Symbol)]

          define_sorbet_constant!(:Variants) do
            T.type_alias { T.any(Date, Time, Orb::Models::Plans::MigrationCancelResponse::EffectiveTime::TaggedSymbol) }
          end

          # @!group

          END_OF_TERM = :end_of_term

          # @!endgroup
        end

        # @see Orb::Models::Plans::MigrationCancelResponse#status
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
