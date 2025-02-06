# typed: strong

module Orb
  module Models
    class InvoiceCreateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(String) }
      attr_accessor :currency

      sig { returns(Time) }
      attr_accessor :invoice_date

      sig { returns(T::Array[Orb::Models::InvoiceCreateParams::LineItem]) }
      attr_accessor :line_items

      sig { returns(Integer) }
      attr_accessor :net_terms

      sig { returns(T.nilable(String)) }
      attr_accessor :customer_id

      sig do
        returns(
          T.nilable(
            T.any(
              Orb::Models::PercentageDiscount,
              Orb::Models::TrialDiscount,
              Orb::Models::Discount::UsageDiscount,
              Orb::Models::AmountDiscount
            )
          )
        )
      end
      attr_accessor :discount

      sig { returns(T.nilable(String)) }
      attr_accessor :external_customer_id

      sig { returns(T.nilable(String)) }
      attr_accessor :memo

      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :will_auto_issue

      sig { params(will_auto_issue: T::Boolean).void }
      attr_writer :will_auto_issue

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
              Orb::Models::Discount::UsageDiscount,
              Orb::Models::AmountDiscount
            )
          ),
          external_customer_id: T.nilable(String),
          memo: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          will_auto_issue: T::Boolean,
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
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
      ); end

      sig do
        override.returns(
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
                Orb::Models::Discount::UsageDiscount,
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
      def to_hash; end

      class LineItem < Orb::BaseModel
        sig { returns(Date) }
        attr_accessor :end_date

        sig { returns(String) }
        attr_accessor :item_id

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(Float) }
        attr_accessor :quantity

        sig { returns(Date) }
        attr_accessor :start_date

        sig { returns(Orb::Models::InvoiceCreateParams::LineItem::UnitConfig) }
        attr_accessor :unit_config

        sig do
          params(
            end_date: Date,
            item_id: String,
            model_type: Symbol,
            name: String,
            quantity: Float,
            start_date: Date,
            unit_config: Orb::Models::InvoiceCreateParams::LineItem::UnitConfig
          ).void
        end
        def initialize(end_date:, item_id:, model_type:, name:, quantity:, start_date:, unit_config:); end

        sig do
          override.returns(
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
        def to_hash; end

        class ModelType < Orb::Enum
          abstract!

          UNIT = :unit

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end

        class UnitConfig < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :unit_amount

          sig { params(unit_amount: String).void }
          def initialize(unit_amount:); end

          sig { override.returns({unit_amount: String}) }
          def to_hash; end
        end
      end
    end
  end
end
