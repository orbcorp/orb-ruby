# typed: strong

module Orb
  module Models
    class EventDeprecateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig do
        params(request_options: T.any(Orb::RequestOptions, Orb::Util::AnyHash)).returns(T.attached_class)
      end
      def self.new(request_options: {})
      end

      sig { override.returns({request_options: Orb::RequestOptions}) }
      def to_hash
      end
    end
  end
end
