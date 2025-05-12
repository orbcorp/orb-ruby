# typed: strong

module Orb
  module Models
    class InvoiceCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Orb::InvoiceCreateParams, Orb::Internal::AnyHash) }

      # An ISO 4217 currency string. Must be the same as the customer's currency if it
      # is set.
      sig { returns(String) }
      attr_accessor :currency

      # Optional invoice date to set. Must be in the past, if not set, `invoice_date` is
      # set to the current time in the customer's timezone.
      sig { returns(Time) }
      attr_accessor :invoice_date

      sig { returns(T::Array[Orb::InvoiceCreateParams::LineItem]) }
      attr_accessor :line_items

      # Determines the difference between the invoice issue date for subscription
      # invoices as the date that they are due. A value of '0' here represents that the
      # invoice is due on issue, whereas a value of 30 represents that the customer has
      # 30 days to pay the invoice.
      sig { returns(Integer) }
      attr_accessor :net_terms

      # The id of the `Customer` to create this invoice for. One of `customer_id` and
      # `external_customer_id` are required.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_id

      # An optional discount to attach to the invoice.
      sig do
        returns(
          T.nilable(
            T.any(
              Orb::PercentageDiscount,
              Orb::TrialDiscount,
              Orb::UsageDiscount,
              Orb::AmountDiscount
            )
          )
        )
      end
      attr_accessor :discount

      # The `external_customer_id` of the `Customer` to create this invoice for. One of
      # `customer_id` and `external_customer_id` are required.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_customer_id

      # An optional memo to attach to the invoice.
      sig { returns(T.nilable(String)) }
      attr_accessor :memo

      # User-specified key/value pairs for the resource. Individual keys can be removed
      # by setting the value to `null`, and the entire metadata mapping can be cleared
      # by setting `metadata` to `null`.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      # When true, this invoice will be submitted for issuance upon creation. When
      # false, the resulting invoice will require manual review to issue. Defaulted to
      # false.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :will_auto_issue

      sig { params(will_auto_issue: T::Boolean).void }
      attr_writer :will_auto_issue

      sig do
        params(
          currency: String,
          invoice_date: Time,
          line_items: T::Array[Orb::InvoiceCreateParams::LineItem::OrHash],
          net_terms: Integer,
          customer_id: T.nilable(String),
          discount:
            T.nilable(
              T.any(
                Orb::PercentageDiscount::OrHash,
                Orb::TrialDiscount::OrHash,
                Orb::UsageDiscount::OrHash,
                Orb::AmountDiscount::OrHash
              )
            ),
          external_customer_id: T.nilable(String),
          memo: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          will_auto_issue: T::Boolean,
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # An ISO 4217 currency string. Must be the same as the customer's currency if it
        # is set.
        currency:,
        # Optional invoice date to set. Must be in the past, if not set, `invoice_date` is
        # set to the current time in the customer's timezone.
        invoice_date:,
        line_items:,
        # Determines the difference between the invoice issue date for subscription
        # invoices as the date that they are due. A value of '0' here represents that the
        # invoice is due on issue, whereas a value of 30 represents that the customer has
        # 30 days to pay the invoice.
        net_terms:,
        # The id of the `Customer` to create this invoice for. One of `customer_id` and
        # `external_customer_id` are required.
        customer_id: nil,
        # An optional discount to attach to the invoice.
        discount: nil,
        # The `external_customer_id` of the `Customer` to create this invoice for. One of
        # `customer_id` and `external_customer_id` are required.
        external_customer_id: nil,
        # An optional memo to attach to the invoice.
        memo: nil,
        # User-specified key/value pairs for the resource. Individual keys can be removed
        # by setting the value to `null`, and the entire metadata mapping can be cleared
        # by setting `metadata` to `null`.
        metadata: nil,
        # When true, this invoice will be submitted for issuance upon creation. When
        # false, the resulting invoice will require manual review to issue. Defaulted to
        # false.
        will_auto_issue: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            currency: String,
            invoice_date: Time,
            line_items: T::Array[Orb::InvoiceCreateParams::LineItem],
            net_terms: Integer,
            customer_id: T.nilable(String),
            discount:
              T.nilable(
                T.any(
                  Orb::PercentageDiscount,
                  Orb::TrialDiscount,
                  Orb::UsageDiscount,
                  Orb::AmountDiscount
                )
              ),
            external_customer_id: T.nilable(String),
            memo: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            will_auto_issue: T::Boolean,
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      class LineItem < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::InvoiceCreateParams::LineItem, Orb::Internal::AnyHash)
          end

        # A date string to specify the line item's end date in the customer's timezone.
        sig { returns(Date) }
        attr_accessor :end_date

        sig { returns(String) }
        attr_accessor :item_id

        sig { returns(Orb::InvoiceCreateParams::LineItem::ModelType::OrSymbol) }
        attr_accessor :model_type

        # The name of the line item.
        sig { returns(String) }
        attr_accessor :name

        # The number of units on the line item
        sig { returns(Float) }
        attr_accessor :quantity

        # A date string to specify the line item's start date in the customer's timezone.
        sig { returns(Date) }
        attr_accessor :start_date

        sig { returns(Orb::InvoiceCreateParams::LineItem::UnitConfig) }
        attr_reader :unit_config

        sig do
          params(
            unit_config: Orb::InvoiceCreateParams::LineItem::UnitConfig::OrHash
          ).void
        end
        attr_writer :unit_config

        sig do
          params(
            end_date: Date,
            item_id: String,
            model_type: Orb::InvoiceCreateParams::LineItem::ModelType::OrSymbol,
            name: String,
            quantity: Float,
            start_date: Date,
            unit_config: Orb::InvoiceCreateParams::LineItem::UnitConfig::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A date string to specify the line item's end date in the customer's timezone.
          end_date:,
          item_id:,
          model_type:,
          # The name of the line item.
          name:,
          # The number of units on the line item
          quantity:,
          # A date string to specify the line item's start date in the customer's timezone.
          start_date:,
          unit_config:
        )
        end

        sig do
          override.returns(
            {
              end_date: Date,
              item_id: String,
              model_type:
                Orb::InvoiceCreateParams::LineItem::ModelType::OrSymbol,
              name: String,
              quantity: Float,
              start_date: Date,
              unit_config: Orb::InvoiceCreateParams::LineItem::UnitConfig
            }
          )
        end
        def to_hash
        end

        module ModelType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::InvoiceCreateParams::LineItem::ModelType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          UNIT =
            T.let(
              :unit,
              Orb::InvoiceCreateParams::LineItem::ModelType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::InvoiceCreateParams::LineItem::ModelType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class UnitConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::InvoiceCreateParams::LineItem::UnitConfig,
                Orb::Internal::AnyHash
              )
            end

          # Rate per unit of usage
          sig { returns(String) }
          attr_accessor :unit_amount

          sig { params(unit_amount: String).returns(T.attached_class) }
          def self.new(
            # Rate per unit of usage
            unit_amount:
          )
          end

          sig { override.returns({ unit_amount: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
