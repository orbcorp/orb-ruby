# typed: strong

module Orb
  module Models
    class InvoiceCreateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # An ISO 4217 currency string. Must be the same as the customer's currency if it
      #   is set.
      sig { returns(String) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      # Optional invoice date to set. Must be in the past, if not set, `invoice_date` is
      #   set to the current time in the customer's timezone.
      sig { returns(Time) }
      def invoice_date
      end

      sig { params(_: Time).returns(Time) }
      def invoice_date=(_)
      end

      sig { returns(T::Array[Orb::Models::InvoiceCreateParams::LineItem]) }
      def line_items
      end

      sig do
        params(_: T::Array[Orb::Models::InvoiceCreateParams::LineItem])
          .returns(T::Array[Orb::Models::InvoiceCreateParams::LineItem])
      end
      def line_items=(_)
      end

      # Determines the difference between the invoice issue date for subscription
      #   invoices as the date that they are due. A value of '0' here represents that the
      #   invoice is due on issue, whereas a value of 30 represents that the customer has
      #   30 days to pay the invoice.
      sig { returns(Integer) }
      def net_terms
      end

      sig { params(_: Integer).returns(Integer) }
      def net_terms=(_)
      end

      # The id of the `Customer` to create this invoice for. One of `customer_id` and
      #   `external_customer_id` are required.
      sig { returns(T.nilable(String)) }
      def customer_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def customer_id=(_)
      end

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
      def discount
      end

      sig do
        params(
          _: T.nilable(
            T.any(
              Orb::Models::PercentageDiscount,
              Orb::Models::TrialDiscount,
              Orb::Models::UsageDiscount,
              Orb::Models::AmountDiscount
            )
          )
        )
          .returns(
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
      def discount=(_)
      end

      # The `external_customer_id` of the `Customer` to create this invoice for. One of
      #   `customer_id` and `external_customer_id` are required.
      sig { returns(T.nilable(String)) }
      def external_customer_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_customer_id=(_)
      end

      # An optional memo to attach to the invoice.
      sig { returns(T.nilable(String)) }
      def memo
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def memo=(_)
      end

      # User-specified key/value pairs for the resource. Individual keys can be removed
      #   by setting the value to `null`, and the entire metadata mapping can be cleared
      #   by setting `metadata` to `null`.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      def metadata
      end

      sig do
        params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
          .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
      end
      def metadata=(_)
      end

      # When true, this invoice will automatically be issued upon creation. When false,
      #   the resulting invoice will require manual review to issue. Defaulted to false.
      sig { returns(T.nilable(T::Boolean)) }
      def will_auto_issue
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def will_auto_issue=(_)
      end

      sig do
        params(
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
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
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
        def end_date
        end

        sig { params(_: Date).returns(Date) }
        def end_date=(_)
        end

        sig { returns(String) }
        def item_id
        end

        sig { params(_: String).returns(String) }
        def item_id=(_)
        end

        sig { returns(Symbol) }
        def model_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def model_type=(_)
        end

        # The name of the line item.
        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        # The number of units on the line item
        sig { returns(Float) }
        def quantity
        end

        sig { params(_: Float).returns(Float) }
        def quantity=(_)
        end

        # A date string to specify the line item's start date in the customer's timezone.
        sig { returns(Date) }
        def start_date
        end

        sig { params(_: Date).returns(Date) }
        def start_date=(_)
        end

        sig { returns(Orb::Models::InvoiceCreateParams::LineItem::UnitConfig) }
        def unit_config
        end

        sig do
          params(_: Orb::Models::InvoiceCreateParams::LineItem::UnitConfig)
            .returns(Orb::Models::InvoiceCreateParams::LineItem::UnitConfig)
        end
        def unit_config=(_)
        end

        sig do
          params(
            end_date: Date,
            item_id: String,
            model_type: Symbol,
            name: String,
            quantity: Float,
            start_date: Date,
            unit_config: Orb::Models::InvoiceCreateParams::LineItem::UnitConfig
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
                model_type: Symbol,
                name: String,
                quantity: Float,
                start_date: Date,
                unit_config: Orb::Models::InvoiceCreateParams::LineItem::UnitConfig
              }
            )
        end
        def to_hash
        end

        class ModelType < Orb::Enum
          abstract!

          UNIT = :unit

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class UnitConfig < Orb::BaseModel
          # Rate per unit of usage
          sig { returns(String) }
          def unit_amount
          end

          sig { params(_: String).returns(String) }
          def unit_amount=(_)
          end

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
