# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        class TopUpDeleteByExternalIDParams < Orb::BaseModel
          extend Orb::RequestParameters::Converter
          include Orb::RequestParameters

          sig { returns(String) }
          def external_customer_id
          end

          sig { params(_: String).returns(String) }
          def external_customer_id=(_)
          end

          sig do
            params(
              external_customer_id: String,
              request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
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
