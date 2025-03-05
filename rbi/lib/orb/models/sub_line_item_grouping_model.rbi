# typed: strong

module Orb
  module Models
    class SubLineItemGroupingModel < Orb::BaseModel
      sig { returns(String) }
      def key
      end

      sig { params(_: String).returns(String) }
      def key=(_)
      end

      sig { returns(T.nilable(String)) }
      def value
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def value=(_)
      end

      sig { params(key: String, value: T.nilable(String)).void }
      def initialize(key:, value:)
      end

      sig { override.returns({key: String, value: T.nilable(String)}) }
      def to_hash
      end
    end
  end
end
