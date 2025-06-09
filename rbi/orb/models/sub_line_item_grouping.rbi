# typed: strong

module Orb
  module Models
    class SubLineItemGrouping < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::SubLineItemGrouping, Orb::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :key

      # No value indicates the default group
      sig { returns(T.nilable(String)) }
      attr_accessor :value

      sig do
        params(key: String, value: T.nilable(String)).returns(T.attached_class)
      end
      def self.new(
        key:,
        # No value indicates the default group
        value:
      )
      end

      sig { override.returns({ key: String, value: T.nilable(String) }) }
      def to_hash
      end
    end
  end
end
