# typed: strong

module Orb
  module Models
    class SubscriptionChangeListResponse < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::Models::SubscriptionChangeListResponse,
            Orb::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # Subscription change will be cancelled at this time and can no longer be applied.
      sig { returns(Time) }
      attr_accessor :expiration_time

      sig do
        returns(
          Orb::Models::SubscriptionChangeListResponse::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      sig { returns(T.nilable(String)) }
      attr_accessor :subscription_id

      # When this change was applied.
      sig { returns(T.nilable(Time)) }
      attr_accessor :applied_at

      # When this change was cancelled.
      sig { returns(T.nilable(Time)) }
      attr_accessor :cancelled_at

      sig do
        params(
          id: String,
          expiration_time: Time,
          status: Orb::Models::SubscriptionChangeListResponse::Status::OrSymbol,
          subscription_id: T.nilable(String),
          applied_at: T.nilable(Time),
          cancelled_at: T.nilable(Time)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Subscription change will be cancelled at this time and can no longer be applied.
        expiration_time:,
        status:,
        subscription_id:,
        # When this change was applied.
        applied_at: nil,
        # When this change was cancelled.
        cancelled_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            expiration_time: Time,
            status:
              Orb::Models::SubscriptionChangeListResponse::Status::TaggedSymbol,
            subscription_id: T.nilable(String),
            applied_at: T.nilable(Time),
            cancelled_at: T.nilable(Time)
          }
        )
      end
      def to_hash
      end

      module Status
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::Models::SubscriptionChangeListResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            Orb::Models::SubscriptionChangeListResponse::Status::TaggedSymbol
          )
        APPLIED =
          T.let(
            :applied,
            Orb::Models::SubscriptionChangeListResponse::Status::TaggedSymbol
          )
        CANCELLED =
          T.let(
            :cancelled,
            Orb::Models::SubscriptionChangeListResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::Models::SubscriptionChangeListResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
