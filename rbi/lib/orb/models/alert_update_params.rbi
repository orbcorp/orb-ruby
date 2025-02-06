# typed: strong

module Orb
  module Models
    class AlertUpdateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      Shape = T.type_alias do
        T.all(
          {thresholds: T::Array[Orb::Models::AlertUpdateParams::Threshold]},
          Orb::RequestParameters::Shape
        )
      end

      sig { returns(T::Array[Orb::Models::AlertUpdateParams::Threshold]) }
      attr_accessor :thresholds

      sig do
        params(
          thresholds: T::Array[Orb::Models::AlertUpdateParams::Threshold],
          request_options: Orb::RequestOpts
        ).void
      end
      def initialize(thresholds:, request_options: {}); end

      sig { returns(Orb::Models::AlertUpdateParams::Shape) }
      def to_h; end

      class Threshold < Orb::BaseModel
        Shape = T.type_alias { {value: Float} }

        sig { returns(Float) }
        attr_accessor :value

        sig { params(value: Float).void }
        def initialize(value:); end

        sig { returns(Orb::Models::AlertUpdateParams::Threshold::Shape) }
        def to_h; end
      end
    end
  end
end
