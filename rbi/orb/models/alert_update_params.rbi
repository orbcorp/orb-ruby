# typed: strong

module Orb
  module Models
    class AlertUpdateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Orb::AlertUpdateParams, Orb::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :alert_configuration_id

      # The thresholds that define the values at which the alert will be triggered.
      sig { returns(T::Array[Orb::Threshold]) }
      attr_accessor :thresholds

      sig do
        params(
          alert_configuration_id: String,
          thresholds: T::Array[Orb::Threshold::OrHash],
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        alert_configuration_id:,
        # The thresholds that define the values at which the alert will be triggered.
        thresholds:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            alert_configuration_id: String,
            thresholds: T::Array[Orb::Threshold],
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
