# typed: strong

module Orb
  module Models
    class AlertDeleteParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Orb::AlertDeleteParams, Orb::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :alert_configuration_id

      sig do
        params(
          alert_configuration_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(alert_configuration_id:, request_options: {})
      end

      sig do
        override.returns(
          {
            alert_configuration_id: String,
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
