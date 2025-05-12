# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        class TopUpDeleteParams < Orb::Internal::Type::BaseModel
          extend Orb::Internal::Type::RequestParameters::Converter
          include Orb::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Orb::Customers::Credits::TopUpDeleteParams,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :customer_id

          sig do
            params(
              customer_id: String,
              request_options: Orb::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(customer_id:, request_options: {})
          end

          sig do
            override.returns(
              { customer_id: String, request_options: Orb::RequestOptions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
