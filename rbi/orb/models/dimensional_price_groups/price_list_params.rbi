# typed: strong

module Orb
  module Models
    module DimensionalPriceGroups
      class PriceListParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Orb::DimensionalPriceGroups::PriceListParams,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :dimensional_price_group_id

        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        # from the initial request.
        sig { returns(T.nilable(String)) }
        attr_accessor :cursor

        # The number of items to fetch. Defaults to 20.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # active omits archived prices. archived returns only archived prices. all returns
        # both.
        sig do
          returns(
            T.nilable(
              Orb::DimensionalPriceGroups::PriceListParams::Status::OrSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Orb::DimensionalPriceGroups::PriceListParams::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          params(
            dimensional_price_group_id: String,
            cursor: T.nilable(String),
            limit: Integer,
            status:
              Orb::DimensionalPriceGroups::PriceListParams::Status::OrSymbol,
            request_options: Orb::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          dimensional_price_group_id:,
          # Cursor for pagination. This can be populated by the `next_cursor` value returned
          # from the initial request.
          cursor: nil,
          # The number of items to fetch. Defaults to 20.
          limit: nil,
          # active omits archived prices. archived returns only archived prices. all returns
          # both.
          status: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              dimensional_price_group_id: String,
              cursor: T.nilable(String),
              limit: Integer,
              status:
                Orb::DimensionalPriceGroups::PriceListParams::Status::OrSymbol,
              request_options: Orb::RequestOptions
            }
          )
        end
        def to_hash
        end

        # active omits archived prices. archived returns only archived prices. all returns
        # both.
        module Status
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::DimensionalPriceGroups::PriceListParams::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              Orb::DimensionalPriceGroups::PriceListParams::Status::TaggedSymbol
            )
          ARCHIVED =
            T.let(
              :archived,
              Orb::DimensionalPriceGroups::PriceListParams::Status::TaggedSymbol
            )
          ALL =
            T.let(
              :all,
              Orb::DimensionalPriceGroups::PriceListParams::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::DimensionalPriceGroups::PriceListParams::Status::TaggedSymbol
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
