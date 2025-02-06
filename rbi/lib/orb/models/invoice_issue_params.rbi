# typed: strong

module Orb
  module Models
    class InvoiceIssueParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      Shape = T.type_alias { T.all({synchronous: T::Boolean}, Orb::RequestParameters::Shape) }

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :synchronous

      sig { params(synchronous: T::Boolean).void }
      attr_writer :synchronous

      sig { params(synchronous: T::Boolean, request_options: Orb::RequestOpts).void }
      def initialize(synchronous: nil, request_options: {}); end

      sig { returns(Orb::Models::InvoiceIssueParams::Shape) }
      def to_h; end
    end
  end
end
