# typed: strong

module Orb
  module Models
    class AlertRetrieveParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Orb::AlertRetrieveParams, Orb::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :alert_id

      sig do
        params(
          alert_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(alert_id:, request_options: {})
      end

      sig do
        override.returns(
          { alert_id: String, request_options: Orb::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
