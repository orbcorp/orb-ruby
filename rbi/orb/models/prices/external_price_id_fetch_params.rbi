# typed: strong

module Orb
  module Models
    module Prices
      class ExternalPriceIDFetchParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Orb::Prices::ExternalPriceIDFetchParams,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :external_price_id

        sig do
          params(
            external_price_id: String,
            request_options: Orb::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(external_price_id:, request_options: {})
        end

        sig do
          override.returns(
            { external_price_id: String, request_options: Orb::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
