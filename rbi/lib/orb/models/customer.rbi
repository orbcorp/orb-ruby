# typed: strong

module Orb
  module Models
    class Customer < Orb::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(T::Array[String]) }
      def additional_emails
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def additional_emails=(_)
      end

      sig { returns(T::Boolean) }
      def auto_collection
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def auto_collection=(_)
      end

      sig { returns(String) }
      def balance
      end

      sig { params(_: String).returns(String) }
      def balance=(_)
      end

      sig { returns(T.nilable(Orb::Models::AddressModel)) }
      def billing_address
      end

      sig { params(_: T.nilable(Orb::Models::AddressModel)).returns(T.nilable(Orb::Models::AddressModel)) }
      def billing_address=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def currency
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def currency=(_)
      end

      sig { returns(String) }
      def email
      end

      sig { params(_: String).returns(String) }
      def email=(_)
      end

      sig { returns(T::Boolean) }
      def email_delivery
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def email_delivery=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def exempt_from_automated_tax
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def exempt_from_automated_tax=(_)
      end

      sig { returns(T.nilable(String)) }
      def external_customer_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_customer_id=(_)
      end

      sig { returns(Orb::Models::Customer::Hierarchy) }
      def hierarchy
      end

      sig { params(_: Orb::Models::Customer::Hierarchy).returns(Orb::Models::Customer::Hierarchy) }
      def hierarchy=(_)
      end

      sig { returns(T::Hash[Symbol, String]) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def payment_provider
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def payment_provider=(_)
      end

      sig { returns(T.nilable(String)) }
      def payment_provider_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def payment_provider_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def portal_url
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def portal_url=(_)
      end

      sig { returns(T.nilable(Orb::Models::AddressModel)) }
      def shipping_address
      end

      sig { params(_: T.nilable(Orb::Models::AddressModel)).returns(T.nilable(Orb::Models::AddressModel)) }
      def shipping_address=(_)
      end

      sig { returns(T.nilable(Orb::Models::CustomerTaxIDModel)) }
      def tax_id
      end

      sig { params(_: T.nilable(Orb::Models::CustomerTaxIDModel)).returns(T.nilable(Orb::Models::CustomerTaxIDModel)) }
      def tax_id=(_)
      end

      sig { returns(String) }
      def timezone
      end

      sig { params(_: String).returns(String) }
      def timezone=(_)
      end

      sig { returns(T.nilable(Orb::Models::Customer::AccountingSyncConfiguration)) }
      def accounting_sync_configuration
      end

      sig do
        params(_: T.nilable(Orb::Models::Customer::AccountingSyncConfiguration))
          .returns(T.nilable(Orb::Models::Customer::AccountingSyncConfiguration))
      end
      def accounting_sync_configuration=(_)
      end

      sig { returns(T.nilable(Orb::Models::Customer::ReportingConfiguration)) }
      def reporting_configuration
      end

      sig do
        params(_: T.nilable(Orb::Models::Customer::ReportingConfiguration))
          .returns(T.nilable(Orb::Models::Customer::ReportingConfiguration))
      end
      def reporting_configuration=(_)
      end

      sig do
        params(
          id: String,
          additional_emails: T::Array[String],
          auto_collection: T::Boolean,
          balance: String,
          billing_address: T.nilable(Orb::Models::AddressModel),
          created_at: Time,
          currency: T.nilable(String),
          email: String,
          email_delivery: T::Boolean,
          exempt_from_automated_tax: T.nilable(T::Boolean),
          external_customer_id: T.nilable(String),
          hierarchy: Orb::Models::Customer::Hierarchy,
          metadata: T::Hash[Symbol, String],
          name: String,
          payment_provider: T.nilable(Symbol),
          payment_provider_id: T.nilable(String),
          portal_url: T.nilable(String),
          shipping_address: T.nilable(Orb::Models::AddressModel),
          tax_id: T.nilable(Orb::Models::CustomerTaxIDModel),
          timezone: String,
          accounting_sync_configuration: T.nilable(Orb::Models::Customer::AccountingSyncConfiguration),
          reporting_configuration: T.nilable(Orb::Models::Customer::ReportingConfiguration)
        )
          .void
      end
      def initialize(
        id:,
        additional_emails:,
        auto_collection:,
        balance:,
        billing_address:,
        created_at:,
        currency:,
        email:,
        email_delivery:,
        exempt_from_automated_tax:,
        external_customer_id:,
        hierarchy:,
        metadata:,
        name:,
        payment_provider:,
        payment_provider_id:,
        portal_url:,
        shipping_address:,
        tax_id:,
        timezone:,
        accounting_sync_configuration: nil,
        reporting_configuration: nil
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              additional_emails: T::Array[String],
              auto_collection: T::Boolean,
              balance: String,
              billing_address: T.nilable(Orb::Models::AddressModel),
              created_at: Time,
              currency: T.nilable(String),
              email: String,
              email_delivery: T::Boolean,
              exempt_from_automated_tax: T.nilable(T::Boolean),
              external_customer_id: T.nilable(String),
              hierarchy: Orb::Models::Customer::Hierarchy,
              metadata: T::Hash[Symbol, String],
              name: String,
              payment_provider: T.nilable(Symbol),
              payment_provider_id: T.nilable(String),
              portal_url: T.nilable(String),
              shipping_address: T.nilable(Orb::Models::AddressModel),
              tax_id: T.nilable(Orb::Models::CustomerTaxIDModel),
              timezone: String,
              accounting_sync_configuration: T.nilable(Orb::Models::Customer::AccountingSyncConfiguration),
              reporting_configuration: T.nilable(Orb::Models::Customer::ReportingConfiguration)
            }
          )
      end
      def to_hash
      end

      class Hierarchy < Orb::BaseModel
        sig { returns(T::Array[Orb::Models::CustomerMinifiedModel]) }
        def children
        end

        sig do
          params(_: T::Array[Orb::Models::CustomerMinifiedModel])
            .returns(T::Array[Orb::Models::CustomerMinifiedModel])
        end
        def children=(_)
        end

        sig { returns(T.nilable(Orb::Models::CustomerMinifiedModel)) }
        def parent
        end

        sig do
          params(_: T.nilable(Orb::Models::CustomerMinifiedModel))
            .returns(T.nilable(Orb::Models::CustomerMinifiedModel))
        end
        def parent=(_)
        end

        sig do
          params(
            children: T::Array[Orb::Models::CustomerMinifiedModel],
            parent: T.nilable(Orb::Models::CustomerMinifiedModel)
          )
            .void
        end
        def initialize(children:, parent:)
        end

        sig do
          override
            .returns(
              {
                children: T::Array[Orb::Models::CustomerMinifiedModel],
                parent: T.nilable(Orb::Models::CustomerMinifiedModel)
              }
            )
        end
        def to_hash
        end
      end

      class PaymentProvider < Orb::Enum
        abstract!

        QUICKBOOKS = T.let(:quickbooks, T.nilable(Symbol))
        BILL_COM = T.let(:"bill.com", T.nilable(Symbol))
        STRIPE_CHARGE = T.let(:stripe_charge, T.nilable(Symbol))
        STRIPE_INVOICE = T.let(:stripe_invoice, T.nilable(Symbol))
        NETSUITE = T.let(:netsuite, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class AccountingSyncConfiguration < Orb::BaseModel
        sig { returns(T::Array[Orb::Models::Customer::AccountingSyncConfiguration::AccountingProvider]) }
        def accounting_providers
        end

        sig do
          params(_: T::Array[Orb::Models::Customer::AccountingSyncConfiguration::AccountingProvider])
            .returns(T::Array[Orb::Models::Customer::AccountingSyncConfiguration::AccountingProvider])
        end
        def accounting_providers=(_)
        end

        sig { returns(T::Boolean) }
        def excluded
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def excluded=(_)
        end

        sig do
          params(
            accounting_providers: T::Array[Orb::Models::Customer::AccountingSyncConfiguration::AccountingProvider],
            excluded: T::Boolean
          )
            .void
        end
        def initialize(accounting_providers:, excluded:)
        end

        sig do
          override
            .returns(
              {
                accounting_providers: T::Array[Orb::Models::Customer::AccountingSyncConfiguration::AccountingProvider],
                excluded: T::Boolean
              }
            )
        end
        def to_hash
        end

        class AccountingProvider < Orb::BaseModel
          sig { returns(T.nilable(String)) }
          def external_provider_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def external_provider_id=(_)
          end

          sig { returns(Symbol) }
          def provider_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def provider_type=(_)
          end

          sig { params(external_provider_id: T.nilable(String), provider_type: Symbol).void }
          def initialize(external_provider_id:, provider_type:)
          end

          sig { override.returns({external_provider_id: T.nilable(String), provider_type: Symbol}) }
          def to_hash
          end

          class ProviderType < Orb::Enum
            abstract!

            QUICKBOOKS = :quickbooks
            NETSUITE = :netsuite

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end
      end

      class ReportingConfiguration < Orb::BaseModel
        sig { returns(T::Boolean) }
        def exempt
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def exempt=(_)
        end

        sig { params(exempt: T::Boolean).void }
        def initialize(exempt:)
        end

        sig { override.returns({exempt: T::Boolean}) }
        def to_hash
        end
      end
    end
  end
end
