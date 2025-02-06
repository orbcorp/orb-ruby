# typed: strong

module Orb
  module Models
    module Customers
      class CreditListParams < Orb::BaseModel
        extend Orb::RequestParameters::Converter
        include Orb::RequestParameters

        Shape = T.type_alias do
          T.all(
            {
              currency: T.nilable(String),
              cursor: T.nilable(String),
              include_all_blocks: T::Boolean,
              limit: Integer
            },
            Orb::RequestParameters::Shape
          )
        end

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
            request_options: Orb::RequestOpts
          ).void
        end
        def initialize(currency: nil, cursor: nil, include_all_blocks: nil, limit: nil, request_options: {})
        end

        sig { returns(Orb::Models::Customers::CreditListParams::Shape) }
        def to_h; end
      end
    end
  end
end
