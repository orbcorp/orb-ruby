# typed: strong

module Orb
  module Models
    class ItemCreateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      Shape = T.type_alias { T.all({name: String}, Orb::RequestParameters::Shape) }

      sig { returns(String) }
      attr_accessor :name

      sig { params(name: String, request_options: Orb::RequestOpts).void }
      def initialize(name:, request_options: {}); end

      sig { returns(Orb::Models::ItemCreateParams::Shape) }
      def to_h; end
    end
  end
end
