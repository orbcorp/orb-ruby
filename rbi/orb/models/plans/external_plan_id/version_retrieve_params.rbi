# typed: strong

module Orb
  module Models
    module Plans
      module ExternalPlanID
        class VersionRetrieveParams < Orb::Internal::Type::BaseModel
          extend Orb::Internal::Type::RequestParameters::Converter
          include Orb::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Orb::Plans::ExternalPlanID::VersionRetrieveParams,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :external_plan_id

          sig do
            params(
              external_plan_id: String,
              request_options: Orb::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(external_plan_id:, request_options: {})
          end

          sig do
            override.returns(
              { external_plan_id: String, request_options: Orb::RequestOptions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
