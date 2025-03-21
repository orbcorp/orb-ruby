# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        class TopUpDeleteParams < Orb::BaseModel
          extend Orb::RequestParameters::Converter
          include Orb::RequestParameters

          sig { returns(String) }
          attr_accessor :customer_id

          sig do
            params(customer_id: String, request_options: T.any(Orb::RequestOptions, Orb::Util::AnyHash))
              .returns(T.attached_class)
          end
          def self.new(customer_id:, request_options: {})
          end

          sig { override.returns({customer_id: String, request_options: Orb::RequestOptions}) }
          def to_hash
          end
        end
      end
    end
  end
end
