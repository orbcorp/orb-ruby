# typed: strong

module Orb
  module Models
    class SubscriptionListSummaryResponse < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::Models::SubscriptionListSummaryResponse,
            Orb::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Orb::CustomerMinified) }
      attr_reader :customer

      sig { params(customer: Orb::CustomerMinified::OrHash).void }
      attr_writer :customer

      # The date Orb stops billing for this subscription.
      sig { returns(T.nilable(Time)) }
      attr_accessor :end_date

      # User specified key-value pairs for the resource. If not present, this defaults
      # to an empty dictionary. Individual keys can be removed by setting the value to
      # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
      # `null`.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      # The name of the subscription.
      sig { returns(String) }
      attr_accessor :name

      sig do
        returns(T.nilable(Orb::Models::SubscriptionListSummaryResponse::Plan))
      end
      attr_reader :plan

      sig do
        params(
          plan:
            T.nilable(
              Orb::Models::SubscriptionListSummaryResponse::Plan::OrHash
            )
        ).void
      end
      attr_writer :plan

      # The date Orb starts billing for this subscription.
      sig { returns(Time) }
      attr_accessor :start_date

      sig do
        returns(
          Orb::Models::SubscriptionListSummaryResponse::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      # A subscription's own fields, with its plan and customer as references, as listed
      # by List subscription summaries and carried in standard webhook payloads. Fetch
      # the subscription for its price intervals, billing periods, plan phases and other
      # derived fields.
      sig do
        params(
          id: String,
          created_at: Time,
          customer: Orb::CustomerMinified::OrHash,
          end_date: T.nilable(Time),
          metadata: T::Hash[Symbol, String],
          name: String,
          plan:
            T.nilable(
              Orb::Models::SubscriptionListSummaryResponse::Plan::OrHash
            ),
          start_date: Time,
          status: Orb::Models::SubscriptionListSummaryResponse::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        customer:,
        # The date Orb stops billing for this subscription.
        end_date:,
        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        metadata:,
        # The name of the subscription.
        name:,
        plan:,
        # The date Orb starts billing for this subscription.
        start_date:,
        status:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            customer: Orb::CustomerMinified,
            end_date: T.nilable(Time),
            metadata: T::Hash[Symbol, String],
            name: String,
            plan: T.nilable(Orb::Models::SubscriptionListSummaryResponse::Plan),
            start_date: Time,
            status:
              Orb::Models::SubscriptionListSummaryResponse::Status::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Plan < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Models::SubscriptionListSummaryResponse::Plan,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_accessor :id

        # An optional user-defined ID for this plan resource, used throughout the system
        # as an alias for this Plan. Use this field to identify a plan by an existing
        # identifier in your system.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_plan_id

        sig { returns(T.nilable(String)) }
        attr_accessor :name

        sig do
          params(
            id: T.nilable(String),
            external_plan_id: T.nilable(String),
            name: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # An optional user-defined ID for this plan resource, used throughout the system
          # as an alias for this Plan. Use this field to identify a plan by an existing
          # identifier in your system.
          external_plan_id:,
          name:
        )
        end

        sig do
          override.returns(
            {
              id: T.nilable(String),
              external_plan_id: T.nilable(String),
              name: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      module Status
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::Models::SubscriptionListSummaryResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            Orb::Models::SubscriptionListSummaryResponse::Status::TaggedSymbol
          )
        ENDED =
          T.let(
            :ended,
            Orb::Models::SubscriptionListSummaryResponse::Status::TaggedSymbol
          )
        UPCOMING =
          T.let(
            :upcoming,
            Orb::Models::SubscriptionListSummaryResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::Models::SubscriptionListSummaryResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
