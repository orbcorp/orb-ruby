# typed: strong

module Orb
  module Resources
    class CreditNotes
      sig do
        params(
          line_items: T::Array[Orb::Models::CreditNoteCreateParams::LineItem],
          memo: T.nilable(String),
          reason: T.nilable(Symbol),
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Orb::Models::CreditNote)
      end
      def create(line_items:, memo: nil, reason: nil, request_options: {}); end

      sig do
        params(
          cursor: T.nilable(String),
          limit: Integer,
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Orb::Page[Orb::Models::CreditNote])
      end
      def list(cursor: nil, limit: nil, request_options: {}); end

      sig do
        params(
          credit_note_id: String,
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Orb::Models::CreditNote)
      end
      def fetch(credit_note_id, request_options: {}); end

      sig { params(client: Orb::Client).void }
      def initialize(client:); end
    end
  end
end
