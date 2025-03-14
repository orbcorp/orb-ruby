# typed: strong

module Orb
  module Models
    class SubscriptionUpdateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # Determines whether issued invoices for this subscription will automatically be
      #   charged with the saved payment method on the due date. This property defaults to
      #   the plan's behavior.
      sig { returns(T.nilable(T::Boolean)) }
      def auto_collection
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def auto_collection=(_)
      end

      # Determines the default memo on this subscription's invoices. Note that if this
      #   is not provided, it is determined by the plan configuration.
      sig { returns(T.nilable(String)) }
      def default_invoice_memo
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def default_invoice_memo=(_)
      end

      # When this subscription's accrued usage reaches this threshold, an invoice will
      #   be issued for the subscription. If not specified, invoices will only be issued
      #   at the end of the billing period.
      sig { returns(T.nilable(String)) }
      def invoicing_threshold
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def invoicing_threshold=(_)
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

      # Determines the difference between the invoice issue date for subscription
      #   invoices as the date that they are due. A value of `0` here represents that the
      #   invoice is due on issue, whereas a value of `30` represents that the customer
      #   has a month to pay the invoice.
      sig { returns(T.nilable(Integer)) }
      def net_terms
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def net_terms=(_)
      end

      sig do
        params(
          auto_collection: T.nilable(T::Boolean),
          default_invoice_memo: T.nilable(String),
          invoicing_threshold: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          net_terms: T.nilable(Integer),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        auto_collection: nil,
        default_invoice_memo: nil,
        invoicing_threshold: nil,
        metadata: nil,
        net_terms: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              auto_collection: T.nilable(T::Boolean),
              default_invoice_memo: T.nilable(String),
              invoicing_threshold: T.nilable(String),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              net_terms: T.nilable(Integer),
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
