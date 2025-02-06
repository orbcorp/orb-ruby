# typed: strong

module Orb
  module Models
    module Customers
      class CreditListParams < Orb::BaseModel
        extend Orb::RequestParameters::Converter
        include Orb::RequestParameters

        sig { returns(T.nilable(String)) }
        attr_accessor :currency

        sig { returns(T.nilable(String)) }
        attr_accessor :cursor

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_all_blocks

        sig { params(include_all_blocks: T::Boolean).void }
        attr_writer :include_all_blocks

        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        sig do
          params(
            currency: T.nilable(String),
            cursor: T.nilable(String),
            include_all_blocks: T::Boolean,
            limit: Integer,
            request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(currency: nil, cursor: nil, include_all_blocks: nil, limit: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              currency: T.nilable(String),
              cursor: T.nilable(String),
              include_all_blocks: T::Boolean,
              limit: Integer,
              request_options: Orb::RequestOptions
            }
          )
        end
        def to_hash; end
      end
    end
  end
end
