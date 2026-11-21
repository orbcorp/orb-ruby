# typed: strong

module Orb
  module Models
    class SubscriptionListSummaryParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::SubscriptionListSummaryParams, Orb::Internal::AnyHash)
        end

      # Filters to objects issued by this billing entity. Filtering on the account's
      # default billing entity also matches objects created before the account had
      # billing entities.
      sig { returns(T.nilable(String)) }
      attr_accessor :billing_entity_id

      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at_gt

      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at_gte

      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at_lt

      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at_lte

      # Cursor for pagination. This can be populated by the `next_cursor` value returned
      # from the initial request.
      sig { returns(T.nilable(String)) }
      attr_accessor :cursor

      sig do
        returns(
          T.nilable(Orb::SubscriptionListSummaryParams::CustomerID::Variants)
        )
      end
      attr_accessor :customer_id

      sig do
        returns(
          T.nilable(
            Orb::SubscriptionListSummaryParams::ExternalCustomerID::Variants
          )
        )
      end
      attr_accessor :external_customer_id

      sig { returns(T.nilable(String)) }
      attr_accessor :external_plan_id

      # The number of items to fetch. Defaults to 20.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(String)) }
      attr_accessor :plan_id

      sig do
        returns(
          T.nilable(
            T.any(
              Orb::SubscriptionStatusFilter::OrSymbol,
              T::Array[Orb::SubscriptionStatusFilter::OrSymbol]
            )
          )
        )
      end
      attr_accessor :status

      sig do
        params(
          billing_entity_id: T.nilable(String),
          created_at_gt: T.nilable(Time),
          created_at_gte: T.nilable(Time),
          created_at_lt: T.nilable(Time),
          created_at_lte: T.nilable(Time),
          cursor: T.nilable(String),
          customer_id:
            T.nilable(Orb::SubscriptionListSummaryParams::CustomerID::Variants),
          external_customer_id:
            T.nilable(
              Orb::SubscriptionListSummaryParams::ExternalCustomerID::Variants
            ),
          external_plan_id: T.nilable(String),
          limit: Integer,
          plan_id: T.nilable(String),
          status:
            T.nilable(
              T.any(
                Orb::SubscriptionStatusFilter::OrSymbol,
                T::Array[Orb::SubscriptionStatusFilter::OrSymbol]
              )
            ),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filters to objects issued by this billing entity. Filtering on the account's
        # default billing entity also matches objects created before the account had
        # billing entities.
        billing_entity_id: nil,
        created_at_gt: nil,
        created_at_gte: nil,
        created_at_lt: nil,
        created_at_lte: nil,
        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        # from the initial request.
        cursor: nil,
        customer_id: nil,
        external_customer_id: nil,
        external_plan_id: nil,
        # The number of items to fetch. Defaults to 20.
        limit: nil,
        plan_id: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            billing_entity_id: T.nilable(String),
            created_at_gt: T.nilable(Time),
            created_at_gte: T.nilable(Time),
            created_at_lt: T.nilable(Time),
            created_at_lte: T.nilable(Time),
            cursor: T.nilable(String),
            customer_id:
              T.nilable(
                Orb::SubscriptionListSummaryParams::CustomerID::Variants
              ),
            external_customer_id:
              T.nilable(
                Orb::SubscriptionListSummaryParams::ExternalCustomerID::Variants
              ),
            external_plan_id: T.nilable(String),
            limit: Integer,
            plan_id: T.nilable(String),
            status:
              T.nilable(
                T.any(
                  Orb::SubscriptionStatusFilter::OrSymbol,
                  T::Array[Orb::SubscriptionStatusFilter::OrSymbol]
                )
              ),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      module CustomerID
        extend Orb::Internal::Type::Union

        Variants = T.type_alias { T.any(String, T::Array[String]) }

        sig do
          override.returns(
            T::Array[Orb::SubscriptionListSummaryParams::CustomerID::Variants]
          )
        end
        def self.variants
        end

        StringArray =
          T.let(
            Orb::Internal::Type::ArrayOf[String],
            Orb::Internal::Type::Converter
          )
      end

      module ExternalCustomerID
        extend Orb::Internal::Type::Union

        Variants = T.type_alias { T.any(String, T::Array[String]) }

        sig do
          override.returns(
            T::Array[
              Orb::SubscriptionListSummaryParams::ExternalCustomerID::Variants
            ]
          )
        end
        def self.variants
        end

        StringArray =
          T.let(
            Orb::Internal::Type::ArrayOf[String],
            Orb::Internal::Type::Converter
          )
      end

      module Status
        extend Orb::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Orb::SubscriptionStatusFilter::TaggedSymbol,
              T::Array[Orb::SubscriptionStatusFilter::TaggedSymbol]
            )
          end

        sig do
          override.returns(
            T::Array[Orb::SubscriptionListSummaryParams::Status::Variants]
          )
        end
        def self.variants
        end

        SubscriptionStatusFilterArray =
          T.let(
            Orb::Internal::Type::ArrayOf[enum: Orb::SubscriptionStatusFilter],
            Orb::Internal::Type::Converter
          )
      end
    end
  end
end
