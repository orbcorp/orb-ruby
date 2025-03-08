# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        class TopUpListParams < Orb::BaseModel
          extend Orb::RequestParameters::Converter
          include Orb::RequestParameters

          sig { returns(T.nilable(String)) }
          def cursor
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def cursor=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def limit
          end

          sig { params(_: Integer).returns(Integer) }
          def limit=(_)
          end

          sig do
            params(
              cursor: T.nilable(String),
              limit: Integer,
              request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .returns(T.attached_class)
          end
          def self.new(cursor: nil, limit: nil, request_options: {})
          end

          sig do
            override.returns(
              {
                cursor: T.nilable(String),
                limit: Integer,
                request_options: Orb::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
