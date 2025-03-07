# typed: strong

module Orb
  module Models
    class ItemCreateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig do
        params(name: String, request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
          .returns(T.attached_class)
      end
      def self.new(name:, request_options: {})
      end

      sig { override.returns({name: String, request_options: Orb::RequestOptions}) }
      def to_hash
      end
    end
  end
end
