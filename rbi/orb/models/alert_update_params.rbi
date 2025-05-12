# typed: strong

module Orb
  module Models
    class AlertUpdateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Orb::AlertUpdateParams, Orb::Internal::AnyHash) }

      # The thresholds that define the values at which the alert will be triggered.
      sig { returns(T::Array[Orb::AlertUpdateParams::Threshold]) }
      attr_accessor :thresholds

      sig do
        params(
          thresholds: T::Array[Orb::AlertUpdateParams::Threshold::OrHash],
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The thresholds that define the values at which the alert will be triggered.
        thresholds:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            thresholds: T::Array[Orb::AlertUpdateParams::Threshold],
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Threshold < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::AlertUpdateParams::Threshold, Orb::Internal::AnyHash)
          end

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
end
