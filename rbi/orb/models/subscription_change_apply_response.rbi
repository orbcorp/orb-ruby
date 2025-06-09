# typed: strong

module Orb
  module Models
    class SubscriptionChangeApplyResponse < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::Models::SubscriptionChangeApplyResponse,
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
          Orb::Models::SubscriptionChangeApplyResponse::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      sig { returns(T.nilable(Orb::MutatedSubscription)) }
      attr_reader :subscription

      sig do
        params(subscription: T.nilable(Orb::MutatedSubscription::OrHash)).void
      end
      attr_writer :subscription

      # When this change was applied.
      sig { returns(T.nilable(Time)) }
      attr_accessor :applied_at

      # When this change was cancelled.
      sig { returns(T.nilable(Time)) }
      attr_accessor :cancelled_at

      # A subscription change represents a desired new subscription / pending change to
      # an existing subscription. It is a way to first preview the effects on the
      # subscription as well as any changes/creation of invoices (see
      # `subscription.changed_resources`).
      sig do
        params(
          id: String,
          expiration_time: Time,
          status:
            Orb::Models::SubscriptionChangeApplyResponse::Status::OrSymbol,
          subscription: T.nilable(Orb::MutatedSubscription::OrHash),
          applied_at: T.nilable(Time),
          cancelled_at: T.nilable(Time)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Subscription change will be cancelled at this time and can no longer be applied.
        expiration_time:,
        status:,
        subscription:,
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
              Orb::Models::SubscriptionChangeApplyResponse::Status::TaggedSymbol,
            subscription: T.nilable(Orb::MutatedSubscription),
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
            T.all(Symbol, Orb::Models::SubscriptionChangeApplyResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            Orb::Models::SubscriptionChangeApplyResponse::Status::TaggedSymbol
          )
        APPLIED =
          T.let(
            :applied,
            Orb::Models::SubscriptionChangeApplyResponse::Status::TaggedSymbol
          )
        CANCELLED =
          T.let(
            :cancelled,
            Orb::Models::SubscriptionChangeApplyResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::Models::SubscriptionChangeApplyResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
