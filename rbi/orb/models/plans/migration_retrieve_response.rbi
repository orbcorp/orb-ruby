# typed: strong

module Orb
  module Models
    module Plans
      class MigrationRetrieveResponse < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Models::Plans::MigrationRetrieveResponse,
              Orb::Internal::AnyHash
            )
          end

        # Unique identifier for this plan version change.
        sig { returns(String) }
        attr_accessor :id

        # When the migration takes effect. Can be a specific date/time, or 'end_of_term'
        # when scheduled to be at the end of the current billing period.
        sig do
          returns(
            T.nilable(
              Orb::Models::Plans::MigrationRetrieveResponse::EffectiveTime::Variants
            )
          )
        end
        attr_accessor :effective_time

        # The ID of the plan being migrated.
        sig { returns(String) }
        attr_accessor :plan_id

        # Current status of the migration: 'not_started', 'in_progress', 'completed',
        # 'action_needed', or 'canceled'.
        sig do
          returns(
            Orb::Models::Plans::MigrationRetrieveResponse::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig do
          params(
            id: String,
            effective_time:
              T.nilable(
                T.any(
                  Date,
                  Time,
                  Orb::Models::Plans::MigrationRetrieveResponse::EffectiveTime::OrSymbol
                )
              ),
            plan_id: String,
            status:
              Orb::Models::Plans::MigrationRetrieveResponse::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for this plan version change.
          id:,
          # When the migration takes effect. Can be a specific date/time, or 'end_of_term'
          # when scheduled to be at the end of the current billing period.
          effective_time:,
          # The ID of the plan being migrated.
          plan_id:,
          # Current status of the migration: 'not_started', 'in_progress', 'completed',
          # 'action_needed', or 'canceled'.
          status:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              effective_time:
                T.nilable(
                  Orb::Models::Plans::MigrationRetrieveResponse::EffectiveTime::Variants
                ),
              plan_id: String,
              status:
                Orb::Models::Plans::MigrationRetrieveResponse::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # When the migration takes effect. Can be a specific date/time, or 'end_of_term'
        # when scheduled to be at the end of the current billing period.
        module EffectiveTime
          extend Orb::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Date,
                Time,
                Orb::Models::Plans::MigrationRetrieveResponse::EffectiveTime::TaggedSymbol
              )
            end

          sig do
            override.returns(
              T::Array[
                Orb::Models::Plans::MigrationRetrieveResponse::EffectiveTime::Variants
              ]
            )
          end
          def self.variants
          end

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Models::Plans::MigrationRetrieveResponse::EffectiveTime
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          END_OF_TERM =
            T.let(
              :end_of_term,
              Orb::Models::Plans::MigrationRetrieveResponse::EffectiveTime::TaggedSymbol
            )
        end

        # Current status of the migration: 'not_started', 'in_progress', 'completed',
        # 'action_needed', or 'canceled'.
        module Status
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Models::Plans::MigrationRetrieveResponse::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NOT_STARTED =
            T.let(
              :not_started,
              Orb::Models::Plans::MigrationRetrieveResponse::Status::TaggedSymbol
            )
          IN_PROGRESS =
            T.let(
              :in_progress,
              Orb::Models::Plans::MigrationRetrieveResponse::Status::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Orb::Models::Plans::MigrationRetrieveResponse::Status::TaggedSymbol
            )
          ACTION_NEEDED =
            T.let(
              :action_needed,
              Orb::Models::Plans::MigrationRetrieveResponse::Status::TaggedSymbol
            )
          CANCELED =
            T.let(
              :canceled,
              Orb::Models::Plans::MigrationRetrieveResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Models::Plans::MigrationRetrieveResponse::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
