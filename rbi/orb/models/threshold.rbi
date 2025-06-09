# typed: strong

module Orb
  module Models
    class Threshold < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::Threshold, Orb::Internal::AnyHash) }

      # The value at which an alert will fire. For credit balance alerts, the alert will
      # fire at or below this value. For usage and cost alerts, the alert will fire at
      # or above this value.
      sig { returns(Float) }
      attr_accessor :value

      # Thresholds are used to define the conditions under which an alert will be
      # triggered.
      sig { params(value: Float).returns(T.attached_class) }
      def self.new(
        # The value at which an alert will fire. For credit balance alerts, the alert will
        # fire at or below this value. For usage and cost alerts, the alert will fire at
        # or above this value.
        value:
      )
      end

      sig { override.returns({ value: Float }) }
      def to_hash
      end
    end
  end
end
