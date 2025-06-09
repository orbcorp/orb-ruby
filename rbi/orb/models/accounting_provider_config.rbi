# typed: strong

module Orb
  module Models
    class AccountingProviderConfig < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::AccountingProviderConfig, Orb::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :external_provider_id

      sig { returns(String) }
      attr_accessor :provider_type

      sig do
        params(external_provider_id: String, provider_type: String).returns(
          T.attached_class
        )
      end
      def self.new(external_provider_id:, provider_type:)
      end

      sig do
        override.returns(
          { external_provider_id: String, provider_type: String }
        )
      end
      def to_hash
      end
    end
  end
end
