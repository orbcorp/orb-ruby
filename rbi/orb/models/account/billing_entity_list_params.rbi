# typed: strong

module Orb
  module Models
    module Account
      class BillingEntityListParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Orb::Account::BillingEntityListParams, Orb::Internal::AnyHash)
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

        # Only return billing entities with this status. Omit to return both.
        sig do
          returns(
            T.nilable(Orb::Account::BillingEntityListParams::Status::OrSymbol)
          )
        end
        attr_accessor :status

        sig do
          params(
            cursor: T.nilable(String),
            limit: Integer,
            status:
              T.nilable(
                Orb::Account::BillingEntityListParams::Status::OrSymbol
              ),
            request_options: Orb::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Cursor for pagination. This can be populated by the `next_cursor` value returned
          # from the initial request.
          cursor: nil,
          # The number of items to fetch. Defaults to 20.
          limit: nil,
          # Only return billing entities with this status. Omit to return both.
          status: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              cursor: T.nilable(String),
              limit: Integer,
              status:
                T.nilable(
                  Orb::Account::BillingEntityListParams::Status::OrSymbol
                ),
              request_options: Orb::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Only return billing entities with this status. Omit to return both.
        module Status
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Account::BillingEntityListParams::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              Orb::Account::BillingEntityListParams::Status::TaggedSymbol
            )
          ARCHIVED =
            T.let(
              :archived,
              Orb::Account::BillingEntityListParams::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Account::BillingEntityListParams::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
