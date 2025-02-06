# typed: strong

module Orb
  module Models
    class SubscriptionUpdateFixedFeeQuantityParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(String) }
      attr_accessor :price_id

      sig { returns(Float) }
      attr_accessor :quantity

      sig { returns(T.nilable(Symbol)) }
      attr_reader :change_option

      sig { params(change_option: Symbol).void }
      attr_writer :change_option

      sig { returns(T.nilable(Date)) }
      attr_accessor :effective_date

      sig do
        params(
          price_id: String,
          quantity: Float,
          change_option: Symbol,
          effective_date: T.nilable(Date),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(price_id:, quantity:, change_option: nil, effective_date: nil, request_options: {}); end

      sig do
        override.returns(
          {
            price_id: String,
            quantity: Float,
            change_option: Symbol,
            effective_date: T.nilable(Date),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash; end

      class ChangeOption < Orb::Enum
        abstract!

        IMMEDIATE = :immediate
        UPCOMING_INVOICE = :upcoming_invoice
        EFFECTIVE_DATE = :effective_date

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
