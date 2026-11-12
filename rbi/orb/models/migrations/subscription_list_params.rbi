# typed: strong

module Orb
  module Models
    module Migrations
      class SubscriptionListParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Orb::Migrations::SubscriptionListParams,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :migration_id

        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        # from the initial request.
        sig { returns(T.nilable(String)) }
        attr_accessor :cursor

        # The number of items to fetch. Defaults to 20.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Only return subscriptions with one of these statuses.
        sig do
          returns(
            T.nilable(
              T::Array[
                Orb::Migrations::SubscriptionListParams::Status::OrSymbol
              ]
            )
          )
        end
        attr_accessor :status

        # Only return these subscriptions. Up to 100 IDs.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :subscription_id

        sig do
          params(
            migration_id: String,
            cursor: T.nilable(String),
            limit: Integer,
            status:
              T.nilable(
                T::Array[
                  Orb::Migrations::SubscriptionListParams::Status::OrSymbol
                ]
              ),
            subscription_id: T.nilable(T::Array[String]),
            request_options: Orb::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          migration_id:,
          # Cursor for pagination. This can be populated by the `next_cursor` value returned
          # from the initial request.
          cursor: nil,
          # The number of items to fetch. Defaults to 20.
          limit: nil,
          # Only return subscriptions with one of these statuses.
          status: nil,
          # Only return these subscriptions. Up to 100 IDs.
          subscription_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              migration_id: String,
              cursor: T.nilable(String),
              limit: Integer,
              status:
                T.nilable(
                  T::Array[
                    Orb::Migrations::SubscriptionListParams::Status::OrSymbol
                  ]
                ),
              subscription_id: T.nilable(T::Array[String]),
              request_options: Orb::RequestOptions
            }
          )
        end
        def to_hash
        end

        module Status
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Migrations::SubscriptionListParams::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SCHEDULING =
            T.let(
              :scheduling,
              Orb::Migrations::SubscriptionListParams::Status::TaggedSymbol
            )
          SCHEDULED =
            T.let(
              :scheduled,
              Orb::Migrations::SubscriptionListParams::Status::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Orb::Migrations::SubscriptionListParams::Status::TaggedSymbol
            )
          SKIPPED =
            T.let(
              :skipped,
              Orb::Migrations::SubscriptionListParams::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Orb::Migrations::SubscriptionListParams::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Migrations::SubscriptionListParams::Status::TaggedSymbol
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
