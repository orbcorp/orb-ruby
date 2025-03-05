# typed: strong

module Orb
  module Models
    class CustomerCreateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(String) }
      def email
      end

      sig { params(_: String).returns(String) }
      def email=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(T.nilable(Orb::Models::NewAccountingSyncConfigurationModel)) }
      def accounting_sync_configuration
      end

      sig do
        params(_: T.nilable(Orb::Models::NewAccountingSyncConfigurationModel))
          .returns(T.nilable(Orb::Models::NewAccountingSyncConfigurationModel))
      end
      def accounting_sync_configuration=(_)
      end

      sig { returns(T.nilable(T::Array[String])) }
      def additional_emails
      end

      sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def additional_emails=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def auto_collection
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def auto_collection=(_)
      end

      sig { returns(T.nilable(Orb::Models::AddressInputModel)) }
      def billing_address
      end

      sig { params(_: T.nilable(Orb::Models::AddressInputModel)).returns(T.nilable(Orb::Models::AddressInputModel)) }
      def billing_address=(_)
      end

      sig { returns(T.nilable(String)) }
      def currency
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def currency=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def email_delivery
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def email_delivery=(_)
      end

      sig { returns(T.nilable(String)) }
      def external_customer_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_customer_id=(_)
      end

      sig { returns(T.nilable(Orb::Models::CustomerHierarchyConfigModel)) }
      def hierarchy
      end

      sig do
        params(_: T.nilable(Orb::Models::CustomerHierarchyConfigModel))
          .returns(T.nilable(Orb::Models::CustomerHierarchyConfigModel))
      end
      def hierarchy=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      def metadata
      end

      sig do
        params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
          .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
      end
      def metadata=(_)
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

      sig { returns(T.nilable(Orb::Models::NewReportingConfigurationModel)) }
      def reporting_configuration
      end

      sig do
        params(_: T.nilable(Orb::Models::NewReportingConfigurationModel))
          .returns(T.nilable(Orb::Models::NewReportingConfigurationModel))
      end
      def reporting_configuration=(_)
      end

      sig { returns(T.nilable(Orb::Models::AddressInputModel)) }
      def shipping_address
      end

      sig { params(_: T.nilable(Orb::Models::AddressInputModel)).returns(T.nilable(Orb::Models::AddressInputModel)) }
      def shipping_address=(_)
      end

      sig do
        returns(
          T.nilable(
            T.any(
              Orb::Models::NewTaxConfigurationModel::NewAvalaraTaxConfiguration,
              Orb::Models::NewTaxConfigurationModel::NewTaxJarConfiguration
            )
          )
        )
      end
      def tax_configuration
      end

      sig do
        params(
          _: T.nilable(
            T.any(
              Orb::Models::NewTaxConfigurationModel::NewAvalaraTaxConfiguration,
              Orb::Models::NewTaxConfigurationModel::NewTaxJarConfiguration
            )
          )
        )
          .returns(
            T.nilable(
              T.any(
                Orb::Models::NewTaxConfigurationModel::NewAvalaraTaxConfiguration,
                Orb::Models::NewTaxConfigurationModel::NewTaxJarConfiguration
              )
            )
          )
      end
      def tax_configuration=(_)
      end

      sig { returns(T.nilable(Orb::Models::CustomerTaxIDModel)) }
      def tax_id
      end

      sig { params(_: T.nilable(Orb::Models::CustomerTaxIDModel)).returns(T.nilable(Orb::Models::CustomerTaxIDModel)) }
      def tax_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def timezone
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def timezone=(_)
      end

      sig do
        params(
          email: String,
          name: String,
          accounting_sync_configuration: T.nilable(Orb::Models::NewAccountingSyncConfigurationModel),
          additional_emails: T.nilable(T::Array[String]),
          auto_collection: T.nilable(T::Boolean),
          billing_address: T.nilable(Orb::Models::AddressInputModel),
          currency: T.nilable(String),
          email_delivery: T.nilable(T::Boolean),
          external_customer_id: T.nilable(String),
          hierarchy: T.nilable(Orb::Models::CustomerHierarchyConfigModel),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          payment_provider: T.nilable(Symbol),
          payment_provider_id: T.nilable(String),
          reporting_configuration: T.nilable(Orb::Models::NewReportingConfigurationModel),
          shipping_address: T.nilable(Orb::Models::AddressInputModel),
          tax_configuration: T.nilable(
            T.any(
              Orb::Models::NewTaxConfigurationModel::NewAvalaraTaxConfiguration,
              Orb::Models::NewTaxConfigurationModel::NewTaxJarConfiguration
            )
          ),
          tax_id: T.nilable(Orb::Models::CustomerTaxIDModel),
          timezone: T.nilable(String),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(
        email:,
        name:,
        accounting_sync_configuration: nil,
        additional_emails: nil,
        auto_collection: nil,
        billing_address: nil,
        currency: nil,
        email_delivery: nil,
        external_customer_id: nil,
        hierarchy: nil,
        metadata: nil,
        payment_provider: nil,
        payment_provider_id: nil,
        reporting_configuration: nil,
        shipping_address: nil,
        tax_configuration: nil,
        tax_id: nil,
        timezone: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              email: String,
              name: String,
              accounting_sync_configuration: T.nilable(Orb::Models::NewAccountingSyncConfigurationModel),
              additional_emails: T.nilable(T::Array[String]),
              auto_collection: T.nilable(T::Boolean),
              billing_address: T.nilable(Orb::Models::AddressInputModel),
              currency: T.nilable(String),
              email_delivery: T.nilable(T::Boolean),
              external_customer_id: T.nilable(String),
              hierarchy: T.nilable(Orb::Models::CustomerHierarchyConfigModel),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              payment_provider: T.nilable(Symbol),
              payment_provider_id: T.nilable(String),
              reporting_configuration: T.nilable(Orb::Models::NewReportingConfigurationModel),
              shipping_address: T.nilable(Orb::Models::AddressInputModel),
              tax_configuration: T.nilable(
                T.any(
                  Orb::Models::NewTaxConfigurationModel::NewAvalaraTaxConfiguration,
                  Orb::Models::NewTaxConfigurationModel::NewTaxJarConfiguration
                )
              ),
              tax_id: T.nilable(Orb::Models::CustomerTaxIDModel),
              timezone: T.nilable(String),
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash
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
    end
  end
end
