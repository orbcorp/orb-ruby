# typed: strong

module Orb
  module Models
    module Events
      class BackfillListParams < Orb::BaseModel
        extend Orb::RequestParameters::Converter
        include Orb::RequestParameters

        sig { returns(T.nilable(String)) }
        attr_accessor :cursor

        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        sig do
          params(
            cursor: T.nilable(String),
            limit: Integer,
            request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(cursor: nil, limit: nil, request_options: {})
        end

        sig do
          override.returns({cursor: T.nilable(String), limit: Integer, request_options: Orb::RequestOptions})
        end
        def to_hash
        end
      end
    end
  end
end
