# typed: strong

module Orb
  module Models
    class CustomerCreatedWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::CustomerCreatedWebhookEvent, Orb::Internal::AnyHash)
        end

      # The ID of this webhook event.
      sig { returns(String) }
      attr_accessor :id

      # The time at which this event was created, to the second.
      sig { returns(Time) }
      attr_accessor :created_at

      # A customer is a buyer of your products, and the other party to the billing
      # relationship.
      #
      # In Orb, customers are assigned system generated identifiers automatically, but
      # it's often desirable to have these match existing identifiers in your system. To
      # avoid having to denormalize Orb ID information, you can pass in an
      # `external_customer_id` with your own identifier. See
      # [Customer ID Aliases](/events-and-metrics/customer-aliases) for further
      # information about how these aliases work in Orb.
      #
      # In addition to having an identifier in your system, a customer may exist in a
      # payment provider solution like Stripe. Use the `payment_provider_id` and the
      # `payment_provider` enum field to express this mapping.
      #
      # A customer also has a timezone (from the standard
      # [IANA timezone database](https://www.iana.org/time-zones)), which defaults to
      # your account's timezone. See [Timezone localization](/essentials/timezones) for
      # information on what this timezone parameter influences within Orb.
      sig { returns(Orb::Customer) }
      attr_reader :customer

      sig { params(customer: Orb::Customer::OrHash).void }
      attr_writer :customer

      sig { returns(T.anything) }
      attr_accessor :properties

      # The event this payload describes.
      sig { returns(Orb::CustomerCreatedWebhookEvent::Type::TaggedSymbol) }
      attr_accessor :type

      # Issued when a customer resource is created.
      sig do
        params(
          id: String,
          created_at: Time,
          customer: Orb::Customer::OrHash,
          properties: T.anything,
          type: Orb::CustomerCreatedWebhookEvent::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of this webhook event.
        id:,
        # The time at which this event was created, to the second.
        created_at:,
        # A customer is a buyer of your products, and the other party to the billing
        # relationship.
        #
        # In Orb, customers are assigned system generated identifiers automatically, but
        # it's often desirable to have these match existing identifiers in your system. To
        # avoid having to denormalize Orb ID information, you can pass in an
        # `external_customer_id` with your own identifier. See
        # [Customer ID Aliases](/events-and-metrics/customer-aliases) for further
        # information about how these aliases work in Orb.
        #
        # In addition to having an identifier in your system, a customer may exist in a
        # payment provider solution like Stripe. Use the `payment_provider_id` and the
        # `payment_provider` enum field to express this mapping.
        #
        # A customer also has a timezone (from the standard
        # [IANA timezone database](https://www.iana.org/time-zones)), which defaults to
        # your account's timezone. See [Timezone localization](/essentials/timezones) for
        # information on what this timezone parameter influences within Orb.
        customer:,
        properties:,
        # The event this payload describes.
        type:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            customer: Orb::Customer,
            properties: T.anything,
            type: Orb::CustomerCreatedWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The event this payload describes.
      module Type
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::CustomerCreatedWebhookEvent::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CUSTOMER_CREATED =
          T.let(
            :"customer.created",
            Orb::CustomerCreatedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::CustomerCreatedWebhookEvent::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
