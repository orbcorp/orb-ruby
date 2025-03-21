# typed: strong

module Orb
  module Models
    class InvoiceCreateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # An ISO 4217 currency string. Must be the same as the customer's currency if it
      #   is set.
      sig { returns(String) }
      attr_accessor :currency

      # Optional invoice date to set. Must be in the past, if not set, `invoice_date` is
      #   set to the current time in the customer's timezone.
      sig { returns(Time) }
      attr_accessor :invoice_date

      sig { returns(T::Array[Orb::Models::InvoiceCreateParams::LineItem]) }
      attr_accessor :line_items

      # Determines the difference between the invoice issue date for subscription
      #   invoices as the date that they are due. A value of '0' here represents that the
      #   invoice is due on issue, whereas a value of 30 represents that the customer has
      #   30 days to pay the invoice.
      sig { returns(Integer) }
      attr_accessor :net_terms

      # The id of the `Customer` to create this invoice for. One of `customer_id` and
      #   `external_customer_id` are required.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_id

      # An optional discount to attach to the invoice.
      sig do
        returns(
          T.nilable(
            T.any(
              Orb::Models::PercentageDiscount,
              Orb::Models::TrialDiscount,
              Orb::Models::UsageDiscount,
              Orb::Models::AmountDiscount
            )
          )
        )
      end
      attr_accessor :discount

      # The `external_customer_id` of the `Customer` to create this invoice for. One of
      #   `customer_id` and `external_customer_id` are required.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_customer_id

      # An optional memo to attach to the invoice.
      sig { returns(T.nilable(String)) }
      attr_accessor :memo

      # User-specified key/value pairs for the resource. Individual keys can be removed
      #   by setting the value to `null`, and the entire metadata mapping can be cleared
      #   by setting `metadata` to `null`.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      # When true, this invoice will automatically be issued upon creation. When false,
      #   the resulting invoice will require manual review to issue. Defaulted to false.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :will_auto_issue

      sig { params(will_auto_issue: T::Boolean).void }
      attr_writer :will_auto_issue

      sig do
        params(
          currency: String,
          invoice_date: Time,
          line_items: T::Array[T.any(Orb::Models::InvoiceCreateParams::LineItem, Orb::Util::AnyHash)],
          net_terms: Integer,
          customer_id: T.nilable(String),
          discount: T.nilable(
            T.any(
              Orb::Models::PercentageDiscount,
              Orb::Util::AnyHash,
              Orb::Models::TrialDiscount,
              Orb::Models::UsageDiscount,
              Orb::Models::AmountDiscount
            )
          ),
          external_customer_id: T.nilable(String),
          memo: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          will_auto_issue: T::Boolean,
          request_options: T.any(Orb::RequestOptions, Orb::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        currency:,
        invoice_date:,
        line_items:,
        net_terms:,
        customer_id: nil,
        discount: nil,
        external_customer_id: nil,
        memo: nil,
        metadata: nil,
        will_auto_issue: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              currency: String,
              invoice_date: Time,
              line_items: T::Array[Orb::Models::InvoiceCreateParams::LineItem],
              net_terms: Integer,
              customer_id: T.nilable(String),
              discount: T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::UsageDiscount,
                  Orb::Models::AmountDiscount
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

      class LineItem < Orb::BaseModel
        # A date string to specify the line item's end date in the customer's timezone.
        sig { returns(Date) }
        attr_accessor :end_date

        sig { returns(String) }
        attr_accessor :item_id

        sig { returns(Orb::Models::InvoiceCreateParams::LineItem::ModelType::OrSymbol) }
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

        sig { returns(Orb::Models::InvoiceCreateParams::LineItem::UnitConfig) }
        attr_reader :unit_config

        sig { params(unit_config: T.any(Orb::Models::InvoiceCreateParams::LineItem::UnitConfig, Orb::Util::AnyHash)).void }
        attr_writer :unit_config

        sig do
          params(
            end_date: Date,
            item_id: String,
            model_type: Orb::Models::InvoiceCreateParams::LineItem::ModelType::OrSymbol,
            name: String,
            quantity: Float,
            start_date: Date,
            unit_config: T.any(Orb::Models::InvoiceCreateParams::LineItem::UnitConfig, Orb::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(end_date:, item_id:, model_type:, name:, quantity:, start_date:, unit_config:)
        end

        sig do
          override
            .returns(
              {
                end_date: Date,
                item_id: String,
                model_type: Orb::Models::InvoiceCreateParams::LineItem::ModelType::OrSymbol,
                name: String,
                quantity: Float,
                start_date: Date,
                unit_config: Orb::Models::InvoiceCreateParams::LineItem::UnitConfig
              }
            )
        end
        def to_hash
        end

        module ModelType
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::InvoiceCreateParams::LineItem::ModelType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Orb::Models::InvoiceCreateParams::LineItem::ModelType::TaggedSymbol) }

          UNIT = T.let(:unit, Orb::Models::InvoiceCreateParams::LineItem::ModelType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::InvoiceCreateParams::LineItem::ModelType::TaggedSymbol]) }
          def self.values
          end
        end

        class UnitConfig < Orb::BaseModel
          # Rate per unit of usage
          sig { returns(String) }
          attr_accessor :unit_amount

          sig { params(unit_amount: String).returns(T.attached_class) }
          def self.new(unit_amount:)
          end

          sig { override.returns({unit_amount: String}) }
          def to_hash
          end
        end
      end
    end
  end
end
