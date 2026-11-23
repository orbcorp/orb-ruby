# typed: strong

module Orb
  module Models
    module Account
      class BillingEntityUnarchiveByExternalIDParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Orb::Account::BillingEntityUnarchiveByExternalIDParams,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :external_billing_entity_id

        sig do
          params(
            external_billing_entity_id: String,
            request_options: Orb::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(external_billing_entity_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              external_billing_entity_id: String,
              request_options: Orb::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
