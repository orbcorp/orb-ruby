# typed: strong

module Orb
  module Models
    class InvoiceCreateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(String) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

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

      sig { returns(Integer) }
      def net_terms
      end

      sig { params(_: Integer).returns(Integer) }
      def net_terms=(_)
      end

      sig { returns(T.nilable(String)) }
      def customer_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def customer_id=(_)
      end

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
      def discount
      end

      sig do
        params(
          _: T.nilable(
            T.any(
              Orb::Models::PercentageDiscount,
              Orb::Models::TrialDiscount,
              Orb::Models::Discount::UsageDiscount,
              Orb::Models::AmountDiscount
            )
          )
        )
          .returns(
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
      def discount=(_)
      end

      sig { returns(T.nilable(String)) }
      def external_customer_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_customer_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def memo
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def memo=(_)
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
              Orb::Models::Discount::UsageDiscount,
              Orb::Models::AmountDiscount
            )
          ),
          external_customer_id: T.nilable(String),
          memo: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          will_auto_issue: T::Boolean,
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
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
      def to_hash
      end

      class LineItem < Orb::BaseModel
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

        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { returns(Float) }
        def quantity
        end

        sig { params(_: Float).returns(Float) }
        def quantity=(_)
        end

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
            .void
        end
        def initialize(end_date:, item_id:, model_type:, name:, quantity:, start_date:, unit_config:)
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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class UnitConfig < Orb::BaseModel
          sig { returns(String) }
          def unit_amount
          end

          sig { params(_: String).returns(String) }
          def unit_amount=(_)
          end

          sig { params(unit_amount: String).void }
          def initialize(unit_amount:)
          end

          sig { override.returns({unit_amount: String}) }
          def to_hash
          end
        end
      end
    end
  end
end
