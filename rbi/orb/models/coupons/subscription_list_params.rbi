# typed: strong

module Orb
  module Models
    module Coupons
      class SubscriptionListParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Orb::Coupons::SubscriptionListParams, Orb::Internal::AnyHash)
          end

        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        # from the initial request.
        sig { returns(T.nilable(String)) }
        attr_accessor :cursor

        # The number of items to fetch. Defaults to 20.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        sig do
          params(
            cursor: T.nilable(String),
            limit: Integer,
            request_options: Orb::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Cursor for pagination. This can be populated by the `next_cursor` value returned
          # from the initial request.
          cursor: nil,
          # The number of items to fetch. Defaults to 20.
          limit: nil,
          request_options: {}
        )
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
