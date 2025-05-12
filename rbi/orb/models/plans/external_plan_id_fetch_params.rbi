# typed: strong

module Orb
  module Models
    module Plans
      class ExternalPlanIDFetchParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Orb::Plans::ExternalPlanIDFetchParams, Orb::Internal::AnyHash)
          end

        sig do
          params(request_options: Orb::RequestOptions::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(request_options: {})
        end

        sig { override.returns({ request_options: Orb::RequestOptions }) }
        def to_hash
        end
      end
    end
  end
end
