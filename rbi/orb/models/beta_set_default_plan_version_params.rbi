# typed: strong

module Orb
  module Models
    class BetaSetDefaultPlanVersionParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::BetaSetDefaultPlanVersionParams, Orb::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :plan_id

      # Plan version to set as the default.
      sig { returns(Integer) }
      attr_accessor :version

      sig do
        params(
          plan_id: String,
          version: Integer,
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        plan_id:,
        # Plan version to set as the default.
        version:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            plan_id: String,
            version: Integer,
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
