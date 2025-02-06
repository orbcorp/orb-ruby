# typed: strong

module Orb
  module Models
    class SubscriptionUpdateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :auto_collection

      sig { returns(T.nilable(String)) }
      attr_accessor :default_invoice_memo

      sig { returns(T.nilable(String)) }
      attr_accessor :invoicing_threshold

      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      sig { returns(T.nilable(Integer)) }
      attr_accessor :net_terms

      sig do
        params(
          auto_collection: T.nilable(T::Boolean),
          default_invoice_memo: T.nilable(String),
          invoicing_threshold: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          net_terms: T.nilable(Integer),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        auto_collection: nil,
        default_invoice_memo: nil,
        invoicing_threshold: nil,
        metadata: nil,
        net_terms: nil,
        request_options: {}
      ); end

      sig do
        override.returns(
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
      def to_hash; end
    end
  end
end
