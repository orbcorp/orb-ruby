# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        class TopUpDeleteByExternalIDParams < Orb::Internal::Type::BaseModel
          extend Orb::Internal::Type::RequestParameters::Converter
          include Orb::Internal::Type::RequestParameters

          sig { returns(String) }
          attr_accessor :external_customer_id

          sig do
            params(
              external_customer_id: String,
              request_options: T.any(Orb::RequestOptions, Orb::Internal::AnyHash)
            )
              .returns(T.attached_class)
          end
          def self.new(external_customer_id:, request_options: {})
          end

          sig { override.returns({external_customer_id: String, request_options: Orb::RequestOptions}) }
          def to_hash
          end
        end
      end
    end
  end
end
