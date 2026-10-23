# typed: strong

module Orb
  module Models
    class MetricUnarchiveParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::MetricUnarchiveParams, Orb::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :metric_id

      sig do
        params(
          metric_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(metric_id:, request_options: {})
      end

      sig do
        override.returns(
          { metric_id: String, request_options: Orb::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
