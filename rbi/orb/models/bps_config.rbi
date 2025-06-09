# typed: strong

module Orb
  module Models
    class BPSConfig < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::BPSConfig, Orb::Internal::AnyHash) }

      # Basis point take rate per event
      sig { returns(Float) }
      attr_accessor :bps

      # Optional currency amount maximum to cap spend per event
      sig { returns(T.nilable(String)) }
      attr_accessor :per_unit_maximum

      sig do
        params(bps: Float, per_unit_maximum: T.nilable(String)).returns(
          T.attached_class
        )
      end
      def self.new(
        # Basis point take rate per event
        bps:,
        # Optional currency amount maximum to cap spend per event
        per_unit_maximum: nil
      )
      end

      sig do
        override.returns({ bps: Float, per_unit_maximum: T.nilable(String) })
      end
      def to_hash
      end
    end
  end
end
