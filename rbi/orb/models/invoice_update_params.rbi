# typed: strong

module Orb
  module Models
    class InvoiceUpdateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Orb::InvoiceUpdateParams, Orb::Internal::AnyHash) }

      # An optional custom due date for the invoice. If not set, the due date will be
      # calculated based on the `net_terms` value.
      sig { returns(T.nilable(Orb::InvoiceUpdateParams::DueDate::Variants)) }
      attr_accessor :due_date

      # User-specified key/value pairs for the resource. Individual keys can be removed
      # by setting the value to `null`, and the entire metadata mapping can be cleared
      # by setting `metadata` to `null`.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      # The net terms determines the due date of the invoice. Due date is calculated
      # based on the invoice or issuance date, depending on the account's configured due
      # date calculation method. A value of '0' here represents that the invoice is due
      # on issue, whereas a value of '30' represents that the customer has 30 days to
      # pay the invoice. Do not set this field if you want to set a custom due date.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :net_terms

      sig do
        params(
          due_date: T.nilable(Orb::InvoiceUpdateParams::DueDate::Variants),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          net_terms: T.nilable(Integer),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # An optional custom due date for the invoice. If not set, the due date will be
        # calculated based on the `net_terms` value.
        due_date: nil,
        # User-specified key/value pairs for the resource. Individual keys can be removed
        # by setting the value to `null`, and the entire metadata mapping can be cleared
        # by setting `metadata` to `null`.
        metadata: nil,
        # The net terms determines the due date of the invoice. Due date is calculated
        # based on the invoice or issuance date, depending on the account's configured due
        # date calculation method. A value of '0' here represents that the invoice is due
        # on issue, whereas a value of '30' represents that the customer has 30 days to
        # pay the invoice. Do not set this field if you want to set a custom due date.
        net_terms: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            due_date: T.nilable(Orb::InvoiceUpdateParams::DueDate::Variants),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            net_terms: T.nilable(Integer),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      # An optional custom due date for the invoice. If not set, the due date will be
      # calculated based on the `net_terms` value.
      module DueDate
        extend Orb::Internal::Type::Union

        Variants = T.type_alias { T.any(Date, Time) }

        sig do
          override.returns(
            T::Array[Orb::InvoiceUpdateParams::DueDate::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
