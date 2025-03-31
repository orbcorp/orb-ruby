# typed: strong

module Orb
  module Models
    module Prices
      class ExternalPriceIDUpdateParams < Orb::BaseModel
        extend Orb::Type::RequestParameters::Converter
        include Orb::RequestParameters

        # User-specified key/value pairs for the resource. Individual keys can be removed
        #   by setting the value to `null`, and the entire metadata mapping can be cleared
        #   by setting `metadata` to `null`.
        sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
        attr_accessor :metadata

        sig do
          params(
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            request_options: T.any(Orb::RequestOptions, Orb::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(metadata: nil, request_options: {})
        end

        sig do
          override
            .returns({
                       metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                       request_options: Orb::RequestOptions
                     })
        end
        def to_hash
        end
      end
    end
  end
end
