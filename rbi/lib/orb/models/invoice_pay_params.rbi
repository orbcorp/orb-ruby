# typed: strong

module Orb
  module Models
    class InvoicePayParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      Shape = T.type_alias { T.all({}, Orb::RequestParameters::Shape) }

      sig { params(request_options: Orb::RequestOpts).void }
      def initialize(request_options: {}); end

      sig { returns(Orb::Models::InvoicePayParams::Shape) }
      def to_h; end
    end
  end
end
